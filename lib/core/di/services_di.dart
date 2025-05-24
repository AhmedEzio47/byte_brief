import 'package:byte_brief/core/di/di.dart';
import 'package:byte_brief/core/services/gemini_service.dart';

void injectServices() {
  di.registerSingleton<GeminiService>(GeminiServiceImpl()..init());
}
