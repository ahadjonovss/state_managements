import 'package:sqflite/sqflite.dart';

class LocalDatabase{
  Database? database;
  String tableName="minds";

  LocalDatabase();

  Future<Database> getDb() async {
    if (database == null) {
      database = await createDatabase();
      return database!;
    }
    return database!;
  }

  createDatabase() async {
    print("Database ochish uchun harakat boshlandi");

    String databasesPath = await getDatabasesPath();
    String dbPath = '${databasesPath}minds.db';
    print("Databasening manzili $dbPath");


    var database = await openDatabase(dbPath, version: 1, onCreate: populateDb);
    print("Database ochildi");
    print("Database ochiqmi:   ${database.isOpen}");

    return database;
  }


  void populateDb(Database database, int version) async {
    await database.execute("CREATE TABLE $tableName ("
        "id INTEGER PRIMARY KEY,"
        "name TEXT,"
        "number TEXT,"
        "createdAt TEXT"
        ")");
  }

}