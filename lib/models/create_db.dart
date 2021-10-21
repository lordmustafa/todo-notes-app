// import 'note.dart';
// import 'package:sqflite/sqflite.dart';

// class CreateDb {
//   createDatabase() async {
//     String databasesPath = await getDatabasesPath();
//     String dbPath = join(databasesPath, 'my.db');

//     var database = await openDatabase(dbPath, version: 1, onCreate: populateDb);
//     return database;
//   }

//   void populateDb(Database database, int version) async {
//     await database.execute("CREATE TABLE Customer ("
//         "id INTEGER PRIMARY KEY,"
//         "first_name TEXT,"
//         "last_name TEXT,"
//         "email TEXT"
//         ")");
//   }
// }
