import 'package:sqflite/sqflite.dart';
import 'dart:async';
import 'models/reminder.dart';

final String tableReminder = 'reminder';
final String colId = 'id';
final String colName = 'name';
final String colDetails = 'details';
final String colSave = 'save';

class RHelper {
  static Database? _database;
  static RHelper? _rHelper;

  RHelper._createInstance();
  factory RHelper() {
    if (_rHelper == null) {
      _rHelper = RHelper._createInstance();
    }
    return _rHelper!;
  }
  Future<Database> get database async {
    if (_database == null) {
      _database = await initializeDatabase();
    }
    return _database!;
  }

  Future<Database> initializeDatabase() async {
    var dir = await getDatabasesPath();
    var path = dir + "Rminder.db";
    var database =
        await openDatabase(path, version: 1, onCreate: (db, version) {
      db.execute('''
      create table $tableReminder (
        $colId integer primary key autoincrement,
        $colName text not null,
        $colDetails text,
        $colSave int )
          ''');
    });
    return database;
  }

  void insertReminder(Reminder reminder) async {
    var db = await this.database;
    var result = await db.insert(tableReminder, reminder.toMap());
    print('result: $result');
  }

  Future<List<Reminder>> getReminders() async {
    List<Reminder> _reminders = [];
    var db = await this.database;
    var result = await db.query(tableReminder);
    result.forEach((element) {
      var reminder = Reminder.fromMap(element);
      _reminders.add(reminder);
    });
    return _reminders;
  }

  Future<int> delete(int id) async {
    var db = await this.database;
    return await db.delete(tableReminder, where: '$colId = ?', whereArgs: [id]);
  }
}
