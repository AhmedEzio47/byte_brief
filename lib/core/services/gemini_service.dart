import 'package:byte_brief/data/data_sources/asset_reader.dart';
import 'package:byte_brief/firebase_options.dart';
import 'package:firebase_ai/firebase_ai.dart';
import 'package:firebase_core/firebase_core.dart';

abstract interface class GeminiService {
  Future<void> init();
  Future<void> sendMessage(String message);
}

class GeminiServiceImpl implements GeminiService {
  GeminiServiceImpl({required this.assetReader});
  final AssetReader assetReader;

  GenerativeModel? _model;

  @override
  Future<void> init() async {
    await _firebaseApp();
    _model = await _geminiModel();
  }

  Future<FirebaseApp> _firebaseApp() =>
      Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  Future<GenerativeModel> _geminiModel() async {
    final instructions = await assetReader.readAsset('prompt.md');
    final model = FirebaseAI.googleAI().generativeModel(
        model: 'gemini-2.0-flash',
        systemInstruction: Content.system(instructions));
    return model;
  }

  @override
  Future<void> sendMessage(String message) async {
    if (_model == null) {
      throw Exception('Gemini Model not initialized');
    }
    final prompt = [Content.text(message)];

    final response = await _model?.generateContent(prompt);
    print(response?.text);
  }
}
