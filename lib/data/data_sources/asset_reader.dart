import 'package:flutter/services.dart';

abstract interface class AssetReader {
  Future<String> readAsset(String fileName);
}

class AssetReaderImpl implements AssetReader {
  @override
  Future<String> readAsset(String fileName) async {
    return await rootBundle.loadString('assets/$fileName');
  }
}
