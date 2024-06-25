import 'package:flutter/material.dart';

class ResponsiveUIScreen extends StatefulWidget {
  const ResponsiveUIScreen({super.key});

  @override
  State<ResponsiveUIScreen> createState() => _ResponsiveUIScreenState();
}

class _ResponsiveUIScreenState extends State<ResponsiveUIScreen> {
  List color = [
    Colors.grey.shade800,
    Colors.grey.shade600,
    Colors.grey.shade300,
  ];
  List type = [
    "All",
    "Music",
    "Mixes",
    "T-Series",
    "News",
    "Game shows",
    "Weddings",
  ];
  int selectType = 0;

  List details = [
    {
      "name": "List.generate(Technique of the Week)",
      "typeofvideo": "Flutter",
      "time": "20K views",
      "day": "6 days",
      // "color": "${Colo
    },
    {
      "name": "51 Flutter Devleloper Jobs and in surat,Gujarat",
      "typeofvideo": "WsCube",
      "time": "2K views",
      "day": "10 days"
    },
    {
      "name": "Technique of the Week",
      "typeofvideo": "Codepur",
      "time": "3K views",
      "day": "1 year"
    },
    {
      "name": "List.generate",
      "typeofvideo": "Codeline",
      "time": "8K views",
      "day": "7 days"
    },
    {
      "name": "51 Flutter Devleloper Jobs and in surat",
      "typeofvideo": "Tanay",
      "time": "15K views",
      "day": "1 month"
    },
  ];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: width <= 520
            ? Padding(
                padding: EdgeInsets.symmetric(horizontal: 0.03 * width),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.menu,
                          color: Colors.white,
                        ),
                        // Icon(
                        //   Icons.menu,
                        //   color: Colors.white,
                        // ),
                        SizedBox(width: 0.06 * width),
                        Icon(
                          Icons.play_circle_fill_outlined,
                          color: Colors.red,
                          size: 0.07 * width,
                        ),
                        Text(
                          "YouTube",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 21,
                              // height: 2,
                              fontWeight: FontWeight.w800),
                        ),
                        Spacer(),
                        Icon(
                          Icons.search,
                          color: Colors.white,
                          size: 0.055 * width,
                        ),
                        SizedBox(width: 0.01 * width),
                        Icon(
                          Icons.mic,
                          color: Colors.white,
                          size: 0.055 * width,
                        ),
                        SizedBox(width: 0.01 * width),
                        Icon(
                          Icons.video_call_outlined,
                          size: 0.055 * width,
                          color: Colors.white,
                        ),
                        SizedBox(width: 0.01 * width),
                        Icon(
                          Icons.notifications,
                          size: 0.055 * width,
                          color: Colors.white,
                        ),
                        SizedBox(width: 0.04 * width),
                        CircleAvatar(
                          radius: 0.025 * height,
                          backgroundColor: Colors.blue,
                          child: Center(
                            child: Text(
                              "D",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 0.01 * height),
                    SizedBox(
                      height: 0.05 * height,
                      child: ListView.builder(
                        itemCount: type.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              selectType = index;
                              setState(() {});
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 0.03 * width,
                              ),
                              margin: EdgeInsets.symmetric(
                                  horizontal: 0.005 * width),
                              decoration: BoxDecoration(
                                  color: selectType == index
                                      ? Colors.white
                                      : Colors.grey.shade800,
                                  borderRadius:
                                      BorderRadius.circular(0.02 * width)),
                              child: Center(
                                child: Text(
                                  "${type[index]}",
                                  style: TextStyle(
                                      color: selectType == index
                                          ? Colors.black
                                          : Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 0.03 * width),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    Expanded(
                        child: ListView.builder(
                      padding: EdgeInsets.only(
                          top: 0.02 * height,
                          right: 0.05 * width,
                          left: 0.05 * width,
                          bottom: 0.02 * height),
                      itemBuilder: (context, index) {
                        return Column(
                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 0.34 * height,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.circular(0.02 * width),
                              ),
                            ),
                            SizedBox(height: 0.01 * height),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CircleAvatar(
                                  radius: 0.03 * width,
                                  backgroundColor: Colors.red,
                                ),
                                SizedBox(width: 0.02 * width),
                                SizedBox(
                                  width: 0.6 * width,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "List.generate(Technique of the Week)",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 0.031 * height,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Text(
                                        "Flutter",
                                        style: TextStyle(
                                            color: Colors.grey.shade300,
                                            fontSize: 0.022 * height,
                                            fontWeight: FontWeight.w300),
                                      ),
                                      Text(
                                        "Flutter",
                                        style: TextStyle(
                                            color: Colors.grey.shade300,
                                            fontSize: 0.022 * height,
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ],
                                  ),
                                ),
                                Spacer(),
                                Icon(
                                  Icons.more_vert,
                                  color: Colors.white,
                                )
                              ],
                            ),
                            SizedBox(height: 0.01 * height),
                          ],
                        );
                      },
                    ))
                  ],
                ),
              )
            : SizedBox(),
      ),
    );
  }
}
