import 'package:byte_brief/core/di/di.dart';
import 'package:byte_brief/core/services/gemini_service.dart';
import 'package:byte_brief/data/data_sources/asset_reader.dart';

void injectServices() {
  di.registerFactory<AssetReader>(() => AssetReaderImpl());
  di.registerSingleton<GeminiService>(
      GeminiServiceImpl(assetReader: di())..init());
}
