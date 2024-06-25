import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_view/Database%20Task/controller.dart';

class HomeScreenTask extends GetView<DatabaseTaskController> {
  @override
  Widget build(BuildContext context) {
    Get.put(DatabaseTaskController());
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          controller.creatList(context);
        },
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Obx(
                () => ListView.builder(
                  itemCount: controller.data.value.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        controller.showUpdateDialog(context, index);
                      },
                      child: Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.black38)),
                        child: Column(
                          children: [
                            Text("ID: ${controller.data.value[index]["id"]}"),
                            Text(
                                "Name: ${controller.data.value[index]["name"]}"),
                            Text(
                                "Value: ${controller.data.value[index]["value"]}"),
                            Text("Num: ${controller.data.value[index]["num"]}"),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
