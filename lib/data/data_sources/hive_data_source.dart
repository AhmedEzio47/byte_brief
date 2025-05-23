abstract interface class HiveDataSource {
  Future<void> init();
  Future<List<Map<String, dynamic>>?> get(String boxName);
  Future<void> put(String boxName, Map<String, dynamic> data);
}

class HiveDataSourceImpl implements HiveDataSource {
  @override
  Future<void> init() async {}

  @override
  Future<List<Map<String, dynamic>>?> get(String boxName) async {
    return [];
  }

  @override
  Future<void> put(String boxName, Map<String, dynamic> data) async {}
}
