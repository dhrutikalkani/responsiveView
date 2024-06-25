import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class SqfliteDemo extends StatefulWidget {
  const SqfliteDemo({super.key});

  @override
  State<SqfliteDemo> createState() => _SqfliteDemoState();
}

class _SqfliteDemoState extends State<SqfliteDemo> {
  Database? database;

  @override
  void initState() {
    creatDatabase();
    super.initState();
  }

  Future creatDatabase() async {
    // Get a location using getDatabasesPath
    var databasesPath = await getDatabasesPath();
    String path = join(databasesPath, 'demo.db');

    database = await openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
      // When creating the db, create the table
      await db.execute(
          'CREATE TABLE Test (id INTEGER PRIMARY KEY, name TEXT, value INTEGER, num REAL)');

      await db.execute(
          'CREATE TABLE Demo (id INTEGER PRIMARY KEY, name TEXT, value INTEGER, num REAL)');
    });
  }

  Future getData() async {
    List<Map<String, dynamic>> data = await database!.query("Test");
    List<Map<String, dynamic>> dataDemo = await database!.query("Demo");
    print("DATA $data");
    print("DATA DEMO $dataDemo");
  }

  Future insertData() async {
    await database!.insert(
      "Test",
      {
        "id": 3,
        "name": "dhruti",
        "value": 200,
        "num": 100.0,
      },
    );
    await database!.insert(
      "Demo",
      {
        "id": 4,
        "name": "dhruti",
        "value": 200,
        "num": 100.0,
      },
    );
  }

  Future UpdateData() async {
    await database!
        .update("Test", {"name": "adefr"}, where: "value=?", whereArgs: [200]);
    await database!
        .update("Demo", {"name": "adefr"}, where: "value=?", whereArgs: [200]);
  }

  Future deleteData() async {
    await database!.delete("Test", where: "value=?", whereArgs: [200]);
    await database!.delete("Demo", where: "value=?", whereArgs: [200]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                getData();
              },
              child: Text("Get Data"),
            ),
            ElevatedButton(
              onPressed: () {
                insertData();
              },
              child: Text("Insert Data"),
            ),
            ElevatedButton(
              onPressed: () {
                UpdateData();
              },
              child: Text("Update Data"),
            ),
            ElevatedButton(
              onPressed: () {
                deleteData();
              },
              child: Text("Delete Data"),
            ),
          ],
        ),
      ),
    );
  }
}
