import 'package:flutter/material.dart';

class DemoTaskScreen extends StatefulWidget {
  const DemoTaskScreen({super.key});

  @override
  State<DemoTaskScreen> createState() => _DemoTaskScreenState();
}

class _DemoTaskScreenState extends State<DemoTaskScreen> {
  List color = [
    Colors.grey.shade800,
    Colors.grey.shade600,
    Colors.grey.shade300,
  ];
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    var phone = width < 520;
    var phone2 = width > 520 && width < 1080;

    print(width);
    return Scaffold(
      body: Center(
        child: width <= 520
            ? ListView.builder(
                itemCount: color.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    height: 0.1 * height,
                    width: 0.2 * width,
                    color: color[index],
                  );
                },
              )
            : width <= 1080 && width > 520
                ? Center(
                    child: GridView.builder(
                      itemCount: color.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                      ),
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 0.03 * width,
                              vertical: 0.04 * height),
                          height: 0.05 * height,
                          width: 0.2 * width,
                          color: color[index],
                        );
                      },
                    ),
                  )
                : ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: color.length,
                    itemBuilder: (context, index) {
                      return Center(
                        child: Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          height: 0.3 * height,
                          width: 0.2 * width,
                          color: color[index],
                        ),
                      );
                    },
                  ),
      ),
    );
  }
}
