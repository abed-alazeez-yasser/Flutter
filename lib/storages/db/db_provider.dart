import 'dart:io';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

//database source
class DbProvider {
  //singletone design pattern
  static final DbProvider _instance = DbProvider._internal();
  late Database _database;

  factory DbProvider() {
    return _instance;
  }
  DbProvider._internal();
  Database get database => _database;

  Future<void> initDb() async {
    Directory directory = await getApplicationDocumentsDirectory();
    String path = join(directory.path, 'app_db.sql');
    _database = await openDatabase(
      path,
      version: 1,
      // 1. [onCreate] is not specified
      // 2. The database already exists and [version] is higher than the last
      // database version
      onOpen: (Database db) {},
      // 1. [onCreate] is not specified
      // 2. The database already exists and [version] is higher than the last
      // database version
      onCreate: (Database db, int version) async {
        db.execute('CREATE TABLE notes ('
            'id INTEGER PRIMARY KEY AUTOINCREMENT,'
            'content TEXT'
            ')');
      },
      // [onDowngrade] is called only when [version] is lower than the last database
      // version. This is a rare case and should only come up if a newer version of
      // your code has created a database that is then interacted with by an older
      // version of your code. You should try to avoid this scenario
      onDowngrade: (Database db, int oldVersion, int newVersion) {},
      // 1. [onCreate] is not specified
      // 2. The database already exists and [version] is higher than the last
      onUpgrade: (Database db, int oldVersion, int newVersion) {},
    );
  }
}
