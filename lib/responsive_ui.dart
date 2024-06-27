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
      "color": Colors.red,
    },
    {
      "name": "51 Flutter Devleloper Jobs and in surat,Gujarat",
      "typeofvideo": "WsCube",
      "time": "2K views",
      "day": "10 days",
      "color": Colors.yellow,
    },
    {
      "name": "Technique of the Week",
      "typeofvideo": "Codepur",
      "time": "3K views",
      "day": "1 year",
      "color": Colors.green,
    },
    {
      "name": "List.generate",
      "typeofvideo": "Codeline",
      "time": "8K views",
      "day": "7 days",
      "color": Colors.white,
    },
    {
      "name": "51 Flutter Devleloper Jobs and in surat",
      "typeofvideo": "Tanay",
      "time": "15K views",
      "day": "1 month",
      "color": Colors.grey,
    },
  ];
  List sidedetails = [
    {"icon":Icons.home,"name":"Home",},
    {"icon":Icons.sports_handball_outlined,"name":"Shorts",},
    {"icon":Icons.shop_2_outlined,"name":"Subscriptions",},
    {"icon":Icons.person_pin_outlined,"name":"Your Channel",},
    {"icon":Icons.history,"name":"History",},
    {"icon":Icons.playlist_play_outlined,"name":"Playlist",},
    {"icon":Icons.ondemand_video_outlined,"name":"Your videos",},
    {"icon":Icons.watch_later_outlined,"name":"Watch Later",},
    {"icon":Icons.thumb_up_alt_outlined,"name":"Like",},
    {"icon":Icons.trending_up,"name":"Trending",},
    {"icon":Icons.shopping_bag_outlined,"name":"Shopping",},
    {"icon":Icons.music_note_outlined,"name":"Music",},
    {"icon":Icons.movie_creation_outlined,"name":"Films",},
    {"icon":Icons.live_tv,"name":"Live  ",},
    {"icon":Icons.videogame_asset ,"name":"Shopping",},
    {"icon":Icons.shopping_bag_outlined,"name":"Shopping",},
    {"icon":Icons.shopping_bag_outlined,"name":"Shopping",},
  ];
  bool ishover = false;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.black,
      body: width <= 520
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
                        return InkResponse(
                          onTap: () {
                            setState(() {
                              selectType = index;
                            });
                          },
                          onHover: (value) {
                            setState(() {
                              ishover = value;
                            });
                          },
                          hoverColor: Colors.grey.shade700,
                          borderRadius: BorderRadius.circular(0.02 * width),
                          highlightShape: BoxShape.rectangle,
                          // customBorder: ShapeBorde,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 0.03 * width,
                            ),
                            margin:
                                EdgeInsets.symmetric(horizontal: 0.005 * width),
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
                    itemCount: details.length,
                    itemBuilder: (context, index) {
                      return Column(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 0.34 * height,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: details[index]["color"],
                              borderRadius: BorderRadius.circular(0.02 * width),
                            ),
                          ),
                          SizedBox(height: 0.01 * height),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                radius: 0.03 * width,
                                backgroundColor: details[index]["color"],
                              ),
                              SizedBox(width: 0.02 * width),
                              SizedBox(
                                width: 0.6 * width,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "${details[index]["name"]}",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 0.031 * height,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      "${details[index]["typeofvideo"]}",
                                      style: TextStyle(
                                          color: Colors.grey.shade300,
                                          fontSize: 0.022 * height,
                                          fontWeight: FontWeight.w300),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "${details[index]["time"]}",
                                          style: TextStyle(
                                              color: Colors.grey.shade300,
                                              fontSize: 0.022 * height,
                                              fontWeight: FontWeight.w300),
                                        ),
                                        SizedBox(width: 0.01 * width),
                                        Icon(
                                          Icons.circle,
                                          color: Colors.grey.shade300,
                                          size: 0.01 * width,
                                        ),
                                        SizedBox(width: 0.01 * width),
                                        Text(
                                          "${details[index]["day"]}",
                                          style: TextStyle(
                                              color: Colors.grey.shade300,
                                              fontSize: 0.022 * height,
                                              fontWeight: FontWeight.w300),
                                        ),
                                      ],
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
          : width <= 1080 && width > 520
              ? Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: 0.02 * width,
                          right: 0.02 * width,
                          top: 0.02 * height),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.menu_outlined,
                            color: Colors.white,
                            size: 0.035 * width,
                          ),
                          SizedBox(width: 0.035 * width),
                          Icon(
                            Icons.play_circle_fill_outlined,
                            color: Colors.red,
                            size: 0.05 * width,
                          ),
                          Text(
                            "YouTube",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                height: 0,
                                // height: 2,
                                fontWeight: FontWeight.w800),
                          ),
                          Spacer(),
                          Container(
                            height: 0.064 * height,
                            width: 0.29 * width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(0.03 * width),
                              border: Border.all(color: Colors.grey.shade300),
                            ),
                            child: Row(
                              children: [
                                TextField(
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      constraints: BoxConstraints.expand(
                                          width: (0.236 * width)),
                                      hintText: "Search"),
                                ),
                                Container(
                                  height: 0.067 * height,
                                  width: 0.05 * width,
                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade800,
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(0.03 * width),
                                        bottomRight:
                                            Radius.circular(0.03 * width),
                                      )),
                                  child: Icon(
                                    Icons.search,
                                    color: Colors.white,
                                    size: 0.04 * width,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 0.01 * width),
                          CircleAvatar(
                            backgroundColor: Colors.grey.shade700,
                            radius: 0.025 * width,
                            child: Icon(
                              Icons.mic,
                              color: Colors.white,
                              size: 0.03 * width,
                            ),
                          ),
                          SizedBox(width: 0.07 * width),
                          Icon(
                            Icons.video_call_outlined,
                            size: 0.038 * width,
                            color: Colors.white,
                          ),
                          SizedBox(width: 0.01 * width),
                          Icon(
                            Icons.notifications_none_outlined,
                            size: 0.038 * width,
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
                    ),
                    SizedBox(height: 0.03 * height),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 0.1 * width,
                          child: Column(
                            children: [
                              InkResponse(
                                onTap: () {},
                                child: Container(
                                  height: 0.1 * height,
                                  width: 0.04 * width,
                                  child: Column(
                                    children: [
                                      Icon(
                                        Icons.home,
                                        color: Colors.white,
                                        size: 0.038 * width,
                                      ),
                                      Text(
                                        "Home",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 10),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 0.02 * height),
                              InkResponse(
                                onTap: () {},
                                child: Container(
                                  height: 0.1 * height,
                                  width: 0.07 * width,
                                  child: Column(
                                    children: [
                                      Icon(
                                        Icons.sports_handball_outlined,
                                        color: Colors.white,
                                        size: 0.038 * width,
                                      ),
                                      Text(
                                        "Shorts",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 10),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 0.02 * height),
                              InkResponse(
                                onTap: () {},
                                child: Container(
                                  height: 0.1 * height,
                                  width: 0.08 * width,
                                  child: Column(
                                    children: [
                                      Icon(
                                        Icons.shop_2_outlined,
                                        color: Colors.white,
                                        size: 0.038 * width,
                                      ),
                                      Text(
                                        "Subscriptions",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 8.5),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 0.02 * height),
                              InkResponse(
                                onTap: () {},
                                child: Container(
                                  height: 0.1 * height,
                                  width: 0.07 * width,
                                  child: Column(
                                    children: [
                                      Icon(
                                        Icons.slideshow_outlined,
                                        color: Colors.white,
                                        size: 0.038 * width,
                                      ),
                                      Text(
                                        "Home",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 10),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              // SizedBox(
                              //     height: 0.1 * height,
                              //     child: ListView.builder(
                              //       itemBuilder: (context, index) {
                              //         return Container(
                              //           padding: EdgeInsets.symmetric(
                              //               vertical: 0.02 * height),
                              //           height: 0.03 * height,
                              //           width: 0.04 * width,
                              //           decoration: BoxDecoration(
                              //             color: Colors.red,
                              //           ),
                              //         );
                              //       },
                              //     ))
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 0.8 * width,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 0.05 * height,
                                child: ListView.builder(
                                  itemCount: type.length,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) {
                                    return InkResponse(
                                      onTap: () {
                                        setState(() {
                                          selectType = index;
                                        });
                                      },
                                      onHover: (value) {
                                        setState(() {
                                          ishover = value;
                                        });
                                      },
                                      hoverColor: Colors.grey.withOpacity(0.4),
                                      borderRadius:
                                          BorderRadius.circular(0.01 * width),
                                      highlightShape: BoxShape.rectangle,
                                      // customBorder: ShapeBorde,
                                      child: Container(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 0.03 * width,
                                        ),
                                        margin: EdgeInsets.symmetric(
                                            horizontal: 0.003 * width),
                                        decoration: BoxDecoration(
                                            color: selectType == index
                                                ? Colors.white
                                                : Colors.grey.shade800,
                                            borderRadius: BorderRadius.circular(
                                                0.01 * width)),
                                        child: Center(
                                          child: Text(
                                            "${type[index]}",
                                            style: TextStyle(
                                                color: selectType == index
                                                    ? Colors.black
                                                    : Colors.white,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 0.02 * width),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                              SizedBox(height: 0.01 * height),
                              SizedBox(
                                  height: 0.8 * height,
                                  child: GridView.builder(
                                    itemCount: details.length,
                                    gridDelegate:
                                        SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: 2,
                                            crossAxisSpacing: 0.08,
                                            mainAxisSpacing: 0.08,
                                            childAspectRatio: 0.8),
                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding: EdgeInsets.only(bottom: 0.0),
                                        child: Column(
                                          children: [
                                            Container(
                                              height: 0.25 * height,
                                              width: 0.38 * width,
                                              decoration: BoxDecoration(
                                                color: details[index]["color"],
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        0.02 * width),
                                              ),
                                            ),
                                            SizedBox(height: 0.01 * height),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  right: 0.01 * width),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  CircleAvatar(
                                                    radius: 0.02 * width,
                                                    backgroundColor:
                                                        details[index]["color"],
                                                  ),
                                                  SizedBox(width: 0.02 * width),
                                                  SizedBox(
                                                    width: 0.28 * width,
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          "${details[index]["name"]}",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 0.022 *
                                                                  height,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500),
                                                        ),
                                                        Text(
                                                          "${details[index]["typeofvideo"]}",
                                                          style: TextStyle(
                                                              color: Colors.grey
                                                                  .shade300,
                                                              fontSize:
                                                                  0.02 * height,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w300),
                                                        ),
                                                        Row(
                                                          children: [
                                                            Text(
                                                              "${details[index]["time"]}",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .grey
                                                                      .shade300,
                                                                  fontSize:
                                                                      0.02 *
                                                                          height,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w300),
                                                            ),
                                                            SizedBox(
                                                                width: 0.01 *
                                                                    width),
                                                            Icon(
                                                              Icons.circle,
                                                              color: Colors.grey
                                                                  .shade300,
                                                              size:
                                                                  0.01 * width,
                                                            ),
                                                            SizedBox(
                                                                width: 0.01 *
                                                                    width),
                                                            Text(
                                                              "${details[index]["day"]}",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .grey
                                                                      .shade300,
                                                                  fontSize:
                                                                      0.02 *
                                                                          height,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w300),
                                                            ),
                                                          ],
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
                                            ),
                                            SizedBox(height: 0.01 * height),
                                          ],
                                        ),
                                      );
                                    },
                                  ))
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                )
              : Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: 0.02 * width,
                          right: 0.02 * width,
                          top: 0.02 * height),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.menu_outlined,
                            color: Colors.white,
                            size: 0.023 * width,
                            fill: 0.01,
                          ),
                          SizedBox(width: 0.01 * width),
                          Icon(
                            Icons.play_circle_fill_outlined,
                            color: Colors.red,
                            size: 0.03 * width,
                          ),
                          Center(
                            child: Text(
                              "YouTube",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 19,
                                  fontWeight: FontWeight.w800),
                            ),
                          ),
                          Spacer(),
                          Container(
                            height: 0.064 * height,
                            width: 0.4 * width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(0.03 * width),
                              border: Border.all(color: Colors.grey.shade300),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(width: 0.015 * width),
                                TextField(
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      constraints: BoxConstraints.expand(
                                          width: (0.333 * width)),
                                      hintText: "Search",
                                      hintStyle: TextStyle(
                                        color: Colors.grey.shade400,
                                      )),
                                ),
                                Container(
                                  height: 0.067 * height,
                                  width: 0.05 * width,
                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade800,
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(0.03 * width),
                                        bottomRight:
                                            Radius.circular(0.03 * width),
                                      )),
                                  child: Icon(
                                    Icons.search,
                                    color: Colors.white,
                                    size: 0.025 * width,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 0.01 * width),
                          CircleAvatar(
                            backgroundColor: Colors.grey.shade700,
                            radius: 0.017 * width,
                            child: Icon(
                              Icons.mic,
                              color: Colors.white,
                              size: 0.02 * width,
                            ),
                          ),
                          SizedBox(width: 0.1 * width),
                          Icon(
                            Icons.video_call_outlined,
                            size: 0.025 * width,
                            color: Colors.white,
                          ),
                          SizedBox(width: 0.02 * width),
                          Icon(
                            Icons.notifications_none_outlined,
                            size: 0.025 * width,
                            color: Colors.white,
                          ),
                          SizedBox(width: 0.04 * width),
                          CircleAvatar(
                            radius: 0.03 * height,
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
                    ),
                    SizedBox(height: 0.03 * height),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 0.25 * width,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 1*height,
                                width: 0.25*width,
                                child: ListView.separated(itemBuilder: (context, index) {
                                  return Container(height: 0.05*height,width: 0.05*width,child: InkResponse(
                                    onTap: () {},
                                    child: Container(
                                      height: 0.1 * height,
                                      width: 0.04 * width,
                                      child: Column(
                                        children: [
                                          Icon(
                                            Icons.home,
                                            color: Colors.white,
                                            size: 0.038 * width,
                                          ),
                                          Text(
                                            "Home",
                                            style: TextStyle(
                                                color: Colors.white, fontSize: 10),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                      );
                                }, separatorBuilder: (context, index) {

                                }, itemCount: ),
                              )
                              // SizedBox(
                              //     height: 0.1 * height,
                              //     child: ListView.builder(
                              //       itemBuilder: (context, index) {
                              //         return Container(
                              //           padding: EdgeInsets.symmetric(
                              //               vertical: 0.02 * height),
                              //           height: 0.03 * height,
                              //           width: 0.04 * width,
                              //           decoration: BoxDecoration(
                              //             color: Colors.red,
                              //           ),
                              //         );
                              //       },
                              //     ))
                            ],
                          ),
                        ),
                        // SizedBox(
                        //   width: 0.8 * width,
                        //   child: Column(
                        //     children: [
                        //       SizedBox(
                        //         height: 0.05 * height,
                        //         child: ListView.builder(
                        //           itemCount: type.length,
                        //           shrinkWrap: true,
                        //           scrollDirection: Axis.horizontal,
                        //           itemBuilder: (context, index) {
                        //             return InkResponse(
                        //               onTap: () {
                        //                 setState(() {
                        //                   selectType = index;
                        //                 });
                        //               },
                        //               onHover: (value) {
                        //                 setState(() {
                        //                   ishover = value;
                        //                 });
                        //               },
                        //               hoverColor: Colors.grey.withOpacity(0.4),
                        //               borderRadius:
                        //                   BorderRadius.circular(0.01 * width),
                        //               highlightShape: BoxShape.rectangle,
                        //               // customBorder: ShapeBorde,
                        //               child: Container(
                        //                 padding: EdgeInsets.symmetric(
                        //                   horizontal: 0.03 * width,
                        //                 ),
                        //                 margin: EdgeInsets.symmetric(
                        //                     horizontal: 0.003 * width),
                        //                 decoration: BoxDecoration(
                        //                     color: selectType == index
                        //                         ? Colors.white
                        //                         : Colors.grey.shade800,
                        //                     borderRadius: BorderRadius.circular(
                        //                         0.01 * width)),
                        //                 child: Center(
                        //                   child: Text(
                        //                     "${type[index]}",
                        //                     style: TextStyle(
                        //                         color: selectType == index
                        //                             ? Colors.black
                        //                             : Colors.white,
                        //                         fontWeight: FontWeight.w500,
                        //                         fontSize: 0.02 * width),
                        //                   ),
                        //                 ),
                        //               ),
                        //             );
                        //           },
                        //         ),
                        //       ),
                        //       SizedBox(height: 0.01 * height),
                        //       SizedBox(
                        //           height: 0.8 * height,
                        //           child: GridView.builder(
                        //             itemCount: details.length,
                        //             gridDelegate:
                        //                 SliverGridDelegateWithFixedCrossAxisCount(
                        //                     crossAxisCount: 3,
                        //                     crossAxisSpacing: 0.08,
                        //                     mainAxisSpacing: 0.08,
                        //                     childAspectRatio: 1.2),
                        //             itemBuilder: (context, index) {
                        //               return Column(
                        //                 children: [
                        //                   Container(
                        //                     height: 0.25 * height,
                        //                     width: 0.38 * width,
                        //                     decoration: BoxDecoration(
                        //                       color: details[index]["color"],
                        //                       borderRadius:
                        //                           BorderRadius.circular(
                        //                               0.02 * width),
                        //                     ),
                        //                   ),
                        //                   SizedBox(height: 0.01 * height),
                        //                   Row(
                        //                     mainAxisAlignment:
                        //                         MainAxisAlignment.spaceAround,
                        //                     crossAxisAlignment:
                        //                         CrossAxisAlignment.start,
                        //                     children: [
                        //                       CircleAvatar(
                        //                         radius: 0.02 * width,
                        //                         backgroundColor: details[index]
                        //                             ["color"],
                        //                       ),
                        //                       SizedBox(width: 0.02 * width),
                        //                       SizedBox(
                        //                         width: 0.3 * width,
                        //                         child: Column(
                        //                           crossAxisAlignment:
                        //                               CrossAxisAlignment.start,
                        //                           children: [
                        //                             Text(
                        //                               "${details[index]["name"]}",
                        //                               style: TextStyle(
                        //                                   color: Colors.white,
                        //                                   fontSize:
                        //                                       0.022 * height,
                        //                                   fontWeight:
                        //                                       FontWeight.w500),
                        //                             ),
                        //                             Text(
                        //                               "${details[index]["typeofvideo"]}",
                        //                               style: TextStyle(
                        //                                   color: Colors
                        //                                       .grey.shade300,
                        //                                   fontSize:
                        //                                       0.02 * height,
                        //                                   fontWeight:
                        //                                       FontWeight.w300),
                        //                             ),
                        //                             Row(
                        //                               children: [
                        //                                 Text(
                        //                                   "${details[index]["time"]}",
                        //                                   style: TextStyle(
                        //                                       color: Colors.grey
                        //                                           .shade300,
                        //                                       fontSize:
                        //                                           0.02 * height,
                        //                                       fontWeight:
                        //                                           FontWeight
                        //                                               .w300),
                        //                                 ),
                        //                                 SizedBox(
                        //                                     width:
                        //                                         0.01 * width),
                        //                                 Icon(
                        //                                   Icons.circle,
                        //                                   color: Colors
                        //                                       .grey.shade300,
                        //                                   size: 0.01 * width,
                        //                                 ),
                        //                                 SizedBox(
                        //                                     width:
                        //                                         0.01 * width),
                        //                                 Text(
                        //                                   "${details[index]["day"]}",
                        //                                   style: TextStyle(
                        //                                       color: Colors.grey
                        //                                           .shade300,
                        //                                       fontSize:
                        //                                           0.02 * height,
                        //                                       fontWeight:
                        //                                           FontWeight
                        //                                               .w300),
                        //                                 ),
                        //                               ],
                        //                             ),
                        //                           ],
                        //                         ),
                        //                       ),
                        //                       Spacer(),
                        //                       Icon(
                        //                         Icons.more_vert,
                        //                         color: Colors.white,
                        //                       )
                        //                     ],
                        //                   ),
                        //                   SizedBox(height: 0.01 * height),
                        //                 ],
                        //               );
                        //             },
                        //           ))
                        //     ],
                        //   ),
                        // )
                      ],
                    ),
                  ],
                ),
    );
  }
}
