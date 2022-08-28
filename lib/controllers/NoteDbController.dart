//controll database in model
//حيتكلم معو ال Viwe Model من خلال ال Viwe
// ignore_for_file: file_names

import 'package:onbording/models/note.dart';
import 'package:onbording/storages/db/db_operations.dart';
import 'package:onbording/storages/db/db_provider.dart';
import 'package:sqflite/sqflite.dart';

class NoteDbController extends DbOperations<Note> {
  Database database = DbProvider().database;

  @override
  Future<int> create(Note object) async {
    int newRowId = await database.insert('notes', object.toMap());
    return newRowId;
  }

  @override
  Future<bool> delete(int id) async {
    int countOfDeleteRow =
        await database.delete('notes', where: 'id = ?', whereArgs: [id]);
    return countOfDeleteRow > 0;
  }

  @override
  Future<List<Note>> read() async {
    List<Map<String, Object?>> data = await database.query('notes');
    return data.map((rowMap) => Note.fromMap(rowMap)).toList();
  }

  @override
  Future<Note?> show(int id) async {
    List<Map<String, Object?>> data =
        await database.query('notes', where: 'id = ? ', whereArgs: [id]);
    if (data.isNotEmpty) {
      return Note.fromMap(data.first);
    } else {
      return null;
    }
  }

  @override
  Future<bool> update(Note object) async {
    int countOfUpdatedRows = await database.update('notes', object.toMap(),
        where: 'id = ? ', whereArgs: [object.id]);
    return countOfUpdatedRows > 0;
  }
}
