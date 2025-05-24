import 'package:byte_brief/firebase_options.dart';
import 'package:firebase_ai/firebase_ai.dart';
import 'package:firebase_core/firebase_core.dart';

abstract interface class GeminiService {
  Future<FirebaseApp> _firebaseApp();
  Future<GenerativeModel> _geminiModel();
  Future<void> init();
  Future<void> sendMessage(String message);
}

class GeminiServiceImpl implements GeminiService {
  GenerativeModel? _model;

  @override
  Future<void> init() async {
    await _firebaseApp();
    _model = await _geminiModel();
  }

  @override
  Future<FirebaseApp> _firebaseApp() =>
      Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  @override
  Future<GenerativeModel> _geminiModel() async {
    final model = FirebaseAI.googleAI().generativeModel(
      model: 'gemini-2.0-flash',
    );
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
