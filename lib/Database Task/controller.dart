import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseTaskController extends GetxController {
  late TextEditingController nameController = TextEditingController();
  late TextEditingController idController = TextEditingController();
  late TextEditingController valueController = TextEditingController();
  late TextEditingController numController = TextEditingController();

  late TextEditingController nameNewController = TextEditingController();
  late TextEditingController idNewController = TextEditingController();
  late TextEditingController valueNewController = TextEditingController();
  late TextEditingController numNewController = TextEditingController();

  Database? database;
  Rx<List<Map<String, dynamic>>> data = Rx<List<Map<String, dynamic>>>([]);

  @override
  void onInit() {
    super.onInit();
    creatDatabase();
  }

  Future creatDatabase() async {
    var databasesPath = await getDatabasesPath();
    String path = join(databasesPath, 'demo.db');

    database = await openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
      // When creating the db, create the table
      await db.execute(
          'CREATE TABLE Test (id INTEGER PRIMARY KEY, name TEXT, value INTEGER, num REAL)');
    });

    await getData();
  }

  Future getData() async {
    data.value = await database!.query("Test");
    print("DATA $data");
  }

  Future insertData() async {
    await database!.insert(
      "Test",
      {
        "id": idController.text,
        "name": "${nameController.text}",
        "value": valueController.text,
        "num": numController.text,
      },
    );
    getData();
    idController.clear();
    nameController.clear();
    valueController.clear();
    numController.clear();
  }

  Future updateData(int index) async {
    await database!.update(
        "Test",
        {
          // "id": idNewController.text,
          "name": nameNewController.text,
          "value": valueNewController.text,
          "num": numNewController.text,
        },
        where: "value=?",
        whereArgs: ["${data.value[index]["value"]}"]);
    getData();
  }

  void creatList(context) {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  keyboardType: TextInputType.number,
                  controller: idController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: "Id",
                  ),
                ),
                const SizedBox(height: 10),
                TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: "Name",
                  ),
                ),
                const SizedBox(height: 10),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: valueController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: "Value",
                  ),
                ),
                const SizedBox(height: 10),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: numController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: "Num",
                  ),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    insertData();

                    Navigator.pop(context);
                  },
                  child: const Text("Insert"),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void showUpdateDialog(context, index) {
    showDialog(
      context: context,
      builder: (context) {
        idNewController.text = "${data.value[index]["id"]}";
        nameNewController.text = "${data.value[index]["name"]}";
        valueNewController.text = "${data.value[index]["value"]}";
        numNewController.text = "${data.value[index]["num"]}";
        return Dialog(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  keyboardType: TextInputType.number,
                  controller: idNewController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: "Id",
                  ),
                ),
                const SizedBox(height: 10),
                TextField(
                  controller: nameNewController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: "Name",
                  ),
                ),
                const SizedBox(height: 10),
                TextField(
                  controller: valueNewController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: "Value",
                  ),
                ),
                const SizedBox(height: 10),
                TextField(
                  controller: numNewController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: "Num",
                  ),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    updateData(index);
                    Navigator.pop(context);
                  },
                  child: const Text("Update"),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
