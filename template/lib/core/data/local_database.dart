import 'package:template/objectbox.g.dart';

class LocalDatabase {
  late final Store store;

  LocalDatabase._create(this.store) {
    // Add any additional setup code, e.g. build queries.
  }

  static Future<LocalDatabase> create() async {
    final store = await openStore();
    return LocalDatabase._create(store);
  }
}
