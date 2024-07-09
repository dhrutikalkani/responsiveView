import 'package:flutter/material.dart';
import 'package:responsive_view/youtub%20ui/video_screen.dart';
import 'package:video_player/video_player.dart';

class ResponsiveUIScreen extends StatefulWidget {
  const ResponsiveUIScreen({super.key});

  @override
  State<ResponsiveUIScreen> createState() => _ResponsiveUIScreenState();
}

class _ResponsiveUIScreenState extends State<ResponsiveUIScreen> {
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
      "color":
          "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/images/BigBuckBunny.jpg",
    },
    {
      "name": "51 Flutter Devleloper Jobs",
      "typeofvideo": "WsCube",
      "time": "2K views",
      "day": "10 days",
      "color":
          "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/images/ForBiggerEscapes.jpg",
    },
    {
      "name": "Technique of the Week",
      "typeofvideo": "Codepur",
      "time": "3K views",
      "day": "1 year",
      "color":
          "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/images/ForBiggerJoyrides.jpg",
    },
    {
      "name": "List.generate",
      "typeofvideo": "Codeline",
      "time": "8K views",
      "day": "7 days",
      "color":
          "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/images/ForBiggerMeltdowns.jpg",
    },
    {
      "name": "51 Flutter Devleloper Jobs and in surat",
      "typeofvideo": "Tanay",
      "time": "15K views",
      "day": "1 month",
      "color":
          "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/images/SubaruOutbackOnStreetAndDirt.jpg",
    },
  ];
  List sidedetails = [
    {
      "icon": Icons.home,
      "name": "Home",
    },
    {
      "icon": Icons.sports_handball_outlined,
      "name": "Shorts",
    },
    {
      "icon": Icons.shop_2_outlined,
      "name": "Subscriptions",
    },
    {
      "icon": Icons.person_pin_outlined,
      "name": "Your Channel",
    },
    {
      "icon": Icons.history,
      "name": "History",
    },
    {
      "icon": Icons.playlist_play_outlined,
      "name": "Playlist",
    },
    {
      "icon": Icons.ondemand_video_outlined,
      "name": "Your videos",
    },
    {
      "icon": Icons.watch_later_outlined,
      "name": "Watch Later",
    },
    {
      "icon": Icons.thumb_up_alt_outlined,
      "name": "Like",
    },
    {
      "icon": Icons.trending_up,
      "name": "Trending",
    },
    {
      "icon": Icons.shopping_bag_outlined,
      "name": "Shopping",
    },
    {
      "icon": Icons.music_note_outlined,
      "name": "Music",
    },
    {
      "icon": Icons.movie_creation_outlined,
      "name": "Films",
    },
    {
      "icon": Icons.live_tv,
      "name": "Live  ",
    },
    {
      "icon": Icons.videogame_asset,
      "name": "Gaming",
    },
    {
      "icon": Icons.newspaper,
      "name": "News",
    },
    {
      "icon": Icons.sports_baseball,
      "name": "Sports",
    },
    {
      "icon": Icons.lightbulb_outlined,
      "name": "Courses",
    },
    {
      "icon": Icons.add_home_work_rounded,
      "name": "Fashion & beauty",
    },
    {
      "icon": Icons.podcasts_outlined,
      "name": "Podcasts",
    },
    {
      "icon": Icons.play_circle_outline,
      "name": "YouTube Premiunm",
    },
    {
      "icon": Icons.local_play_sharp,
      "name": "YouTube Studio",
    },
    {
      "icon": Icons.play_arrow,
      "name": "YouTube Kids",
    },
    {
      "icon": Icons.settings,
      "name": "Settings",
    },
    {
      "icon": Icons.flag_outlined,
      "name": "Report History",
    },
    {
      "icon": Icons.help_outline_outlined,
      "name": "Help",
    },
    {
      "icon": Icons.error_outline_outlined,
      "name": "Send feedback",
    },
    {
      "icon": Icons.circle_outlined,
      "name": "",
    },
  ];
  bool ishover = false;

  List video = [
    "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4",
    "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4",
    "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerJoyrides.mp4",
    "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerMeltdowns.mp4",
    "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/SubaruOutbackOnStreetAndDirt.mp4",
  ];
  late VideoPlayerController controller1;
  late VideoPlayerController controller2;
  late VideoPlayerController controller3;
  late VideoPlayerController controller4;
  late VideoPlayerController controller5;
  int selectvideo = 0;
  List<VideoPlayerController> videocontrollerList = [];

  @override
  void initState() {
    super.initState();
    controller1 = VideoPlayerController.networkUrl(
      Uri.parse("${video[0]}"),
    )..initialize().then((_) {
        setState(() {});
      });
    controller2 = VideoPlayerController.networkUrl(
      Uri.parse("${video[1]}"),
    )..initialize().then((_) {
        setState(() {});
      });
    controller3 = VideoPlayerController.networkUrl(
      Uri.parse("${video[2]}"),
    )..initialize().then((_) {
        setState(() {});
      });
    controller4 = VideoPlayerController.networkUrl(
      Uri.parse("${video[3]}"),
    )..initialize().then((_) {
        setState(() {});
      });
    controller5 = VideoPlayerController.networkUrl(
      Uri.parse("${video[4]}"),
    )..initialize().then((_) {
        setState(() {});
      });
    videocontrollerList.add(controller1);
    videocontrollerList.add(controller2);
    videocontrollerList.add(controller3);
    videocontrollerList.add(controller4);
    videocontrollerList.add(controller5);
    // print("-------$videocontrollerList");
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      floatingActionButton: videocontrollerList[selectvideo].value.isInitialized
          ? Stack(
              alignment: Alignment.center,
              children: [
                Container(
                    height: 0.17 * height,
                    width: 0.4 * width,
                    child: Center(
                      child: VideoPlayer(videocontrollerList[selectvideo]),
                    )),
                FloatingActionButton(
                  backgroundColor: Colors.transparent,
                  onPressed: () {
                    setState(() {
                      videocontrollerList[selectvideo].value.isPlaying
                          ? videocontrollerList[selectvideo].pause()
                          : videocontrollerList[selectvideo].play();
                    });
                  },
                  child: Icon(
                    videocontrollerList[selectvideo].value.isPlaying
                        ? Icons.pause
                        : Icons.play_arrow,
                  ),
                ),
              ],
            )
          : Container(),
      body: width <= 520
          ? Padding(
              padding: EdgeInsets.symmetric(horizontal: 0.03 * width),
              child: Column(
                children: [
                  SizedBox(height: 0.014 * height),
                  Row(
                    children: [
                      InkResponse(
                        onTap: () {},
                        onHover: (value) {
                          setState(() {
                            ishover = value;
                          });
                        },
                        hoverColor: Colors.grey.withOpacity(0.4),
                        highlightShape: BoxShape.circle,
                        borderRadius: BorderRadius.circular(0.01 * width),
                        child: Icon(
                          Icons.menu,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 0.06 * width),
                      Icon(
                        Icons.play_circle_fill_outlined,
                        color: Colors.red,
                        size: 0.06 * width,
                      ),
                      Text(
                        "YouTube",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 19,
                            // height: 2,
                            fontWeight: FontWeight.w800),
                      ),
                      Spacer(),
                      InkResponse(
                        onTap: () {},
                        onHover: (value) {
                          setState(() {
                            ishover = value;
                          });
                        },
                        hoverColor: Colors.grey.withOpacity(0.4),
                        highlightShape: BoxShape.circle,
                        borderRadius: BorderRadius.circular(0.01 * width),
                        child: Icon(
                          Icons.search,
                          color: Colors.white,
                          size: 0.052 * width,
                        ),
                      ),
                      SizedBox(width: 0.012 * width),
                      InkResponse(
                        onTap: () {},
                        onHover: (value) {
                          setState(() {
                            ishover = value;
                          });
                        },
                        hoverColor: Colors.grey.withOpacity(0.4),
                        highlightShape: BoxShape.circle,
                        borderRadius: BorderRadius.circular(0.01 * width),
                        child: Icon(
                          Icons.mic,
                          color: Colors.white,
                          size: 0.05 * width,
                        ),
                      ),
                      SizedBox(width: 0.012 * width),
                      InkResponse(
                        onTap: () {},
                        onHover: (value) {
                          setState(() {
                            ishover = value;
                          });
                        },
                        hoverColor: Colors.grey.withOpacity(0.4),
                        highlightShape: BoxShape.circle,
                        borderRadius: BorderRadius.circular(0.01 * width),
                        child: Icon(
                          Icons.video_call_outlined,
                          size: 0.05 * width,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 0.012 * width),
                      InkResponse(
                        onTap: () {},
                        onHover: (value) {
                          setState(() {
                            ishover = value;
                          });
                        },
                        hoverColor: Colors.grey.withOpacity(0.4),
                        highlightShape: BoxShape.circle,
                        borderRadius: BorderRadius.circular(0.005 * width),
                        child: Icon(
                          Icons.notifications,
                          size: 0.05 * width,
                          color: Colors.white,
                        ),
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
                  SizedBox(height: 0.03 * height),
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
                          hoverColor: Colors.grey.withOpacity(0.4),
                          highlightShape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(0.01 * width),
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
                        children: [
                          InkResponse(
                            onTap: () {
                              setState(() {
                                selectvideo = index;
                              });
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => VideoPlayerScreen(
                                      // index: index,
                                      videoplayer: "${video[index]}",
                                      // videoist:
                                      //   videocontrollerList[selectvideo]
                                    ),
                                  ));
                            },
                            child: Container(
                              height: 0.34 * height,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        NetworkImage(details[index]["color"]),
                                    fit: BoxFit.cover),
                                // color: details[index]["color"],
                                borderRadius:
                                    BorderRadius.circular(0.02 * width),
                              ),
                            ),
                          ),
                          SizedBox(height: 0.01 * height),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                radius: 0.03 * width,
                                backgroundImage:
                                    NetworkImage("${details[index]["color"]}"),
                              ),
                              SizedBox(width: 0.02 * width),
                              SizedBox(
                                width: 0.57 * width,
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
                          InkResponse(
                            onTap: () {},
                            onHover: (value) {
                              setState(() {
                                ishover = value;
                              });
                            },
                            hoverColor: Colors.grey.withOpacity(0.4),
                            highlightShape: BoxShape.circle,
                            borderRadius: BorderRadius.circular(0.01 * width),
                            child: Icon(
                              Icons.menu_outlined,
                              color: Colors.white,
                              size: 0.035 * width,
                            ),
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
                            height: 0.06 * height,
                            width: 0.29 * width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(0.03 * width),
                              border: Border.all(color: Colors.grey.shade300),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                TextField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    contentPadding: EdgeInsets.only(
                                        left: 0.015 * width,
                                        bottom: 0.02 * height),
                                    constraints: BoxConstraints.expand(
                                        width: (0.234 * width)),
                                    hintText: "Search",
                                    hintStyle: TextStyle(
                                      color: Colors.grey.shade400,
                                    ),
                                  ),
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
                          InkResponse(
                            onTap: () {},
                            onHover: (value) {
                              setState(() {
                                ishover = value;
                              });
                            },
                            hoverColor: Colors.grey.withOpacity(0.4),
                            highlightShape: BoxShape.circle,
                            borderRadius: BorderRadius.circular(0.01 * width),
                            child: CircleAvatar(
                              backgroundColor: Colors.grey.shade700,
                              radius: 0.025 * width,
                              child: Icon(
                                Icons.mic,
                                color: Colors.white,
                                size: 0.03 * width,
                              ),
                            ),
                          ),
                          SizedBox(width: 0.07 * width),
                          InkResponse(
                            onTap: () {},
                            onHover: (value) {
                              setState(() {
                                ishover = value;
                              });
                            },
                            hoverColor: Colors.grey.withOpacity(0.4),
                            highlightShape: BoxShape.circle,
                            borderRadius: BorderRadius.circular(0.01 * width),
                            child: Icon(
                              Icons.video_call_outlined,
                              size: 0.038 * width,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 0.01 * width),
                          InkResponse(
                            onTap: () {},
                            onHover: (value) {
                              setState(() {
                                ishover = value;
                              });
                            },
                            hoverColor: Colors.grey.withOpacity(0.4),
                            highlightShape: BoxShape.circle,
                            borderRadius: BorderRadius.circular(0.01 * width),
                            child: Icon(
                              Icons.notifications_none_outlined,
                              size: 0.038 * width,
                              color: Colors.white,
                            ),
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
                                onHover: (value) {
                                  setState(() {
                                    ishover = value;
                                  });
                                },
                                hoverColor: Colors.grey.withOpacity(0.4),
                                highlightShape: BoxShape.rectangle,
                                borderRadius:
                                    BorderRadius.circular(0.01 * width),
                                child: Container(
                                  height: 0.1 * height,
                                  width: 0.18 * width,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
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
                                onHover: (value) {
                                  setState(() {
                                    ishover = value;
                                  });
                                },
                                hoverColor: Colors.grey.withOpacity(0.4),
                                highlightShape: BoxShape.rectangle,
                                borderRadius:
                                    BorderRadius.circular(0.01 * width),
                                child: Container(
                                  height: 0.1 * height,
                                  width: 0.18 * width,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
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
                                onHover: (value) {
                                  setState(() {
                                    ishover = value;
                                  });
                                },
                                hoverColor: Colors.grey.withOpacity(0.4),
                                highlightShape: BoxShape.rectangle,
                                borderRadius:
                                    BorderRadius.circular(0.01 * width),
                                child: Container(
                                  height: 0.1 * height,
                                  width: 0.18 * width,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
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
                                onHover: (value) {
                                  setState(() {
                                    ishover = value;
                                  });
                                },
                                hoverColor: Colors.grey.withOpacity(0.4),
                                highlightShape: BoxShape.rectangle,
                                borderRadius:
                                    BorderRadius.circular(0.01 * width),
                                child: Container(
                                  height: 0.1 * height,
                                  width: 0.18 * width,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.slideshow_outlined,
                                        color: Colors.white,
                                        size: 0.038 * width,
                                      ),
                                      Text(
                                        "You",
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
                                            mainAxisSpacing: 0.06,
                                            mainAxisExtent: 280
                                            // childAspectRatio: 0.8,
                                            ),
                                    itemBuilder: (context, index) {
                                      return InkResponse(
                                        onTap: () {
                                          setState(() {
                                            selectvideo = index;
                                          });
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    VideoPlayerScreen(
                                                  // videoist:
                                                  //   videocontrollerList[selectvideo],
                                                  videoplayer:
                                                      "${video[index]}",
                                                ),
                                              ));
                                        },
                                        child: Column(
                                          children: [
                                            Container(
                                              height: 0.29 * height,
                                              width: 0.38 * width,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: NetworkImage(
                                                        "${details[index]["color"]}"),
                                                    fit: BoxFit.cover),
                                                // color: details[index]
                                                //     ["color"],
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        0.02 * width),
                                              ),
                                            ),
                                            // SizedBox(height: 0.001 * height),
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
                                                    backgroundImage:
                                                        NetworkImage(
                                                      "${details[index]["color"]}",
                                                    ),
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
                                            // SizedBox(height: 0.01 * height),
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
                          InkResponse(
                            onTap: () {},
                            onHover: (value) {
                              setState(() {
                                ishover = value;
                              });
                            },
                            hoverColor: Colors.grey.withOpacity(0.4),
                            highlightShape: BoxShape.circle,
                            borderRadius: BorderRadius.circular(0.01 * width),
                            child: Icon(
                              Icons.menu_outlined,
                              color: Colors.white,
                              size: 0.023 * width,
                              fill: 0.01,
                            ),
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
                          InkResponse(
                            onTap: () {},
                            onHover: (value) {
                              setState(() {
                                ishover = value;
                              });
                            },
                            hoverColor: Colors.grey.withOpacity(0.4),
                            highlightShape: BoxShape.circle,
                            borderRadius: BorderRadius.circular(0.01 * width),
                            child: CircleAvatar(
                              backgroundColor: Colors.grey.shade700,
                              radius: 0.017 * width,
                              child: Icon(
                                Icons.mic,
                                color: Colors.white,
                                size: 0.02 * width,
                              ),
                            ),
                          ),
                          SizedBox(width: 0.1 * width),
                          InkResponse(
                            onTap: () {},
                            onHover: (value) {
                              setState(() {
                                ishover = value;
                              });
                            },
                            hoverColor: Colors.grey.withOpacity(0.4),
                            highlightShape: BoxShape.circle,
                            borderRadius: BorderRadius.circular(0.01 * width),
                            child: Icon(
                              Icons.video_call_outlined,
                              size: 0.025 * width,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 0.02 * width),
                          InkResponse(
                            onTap: () {},
                            onHover: (value) {
                              setState(() {
                                ishover = value;
                              });
                            },
                            hoverColor: Colors.grey.withOpacity(0.4),
                            highlightShape: BoxShape.circle,
                            borderRadius: BorderRadius.circular(0.01 * width),
                            child: Icon(
                              Icons.notifications_none_outlined,
                              size: 0.025 * width,
                              color: Colors.white,
                            ),
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
                          height: 0.83 * height,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 0.83 * height,
                                width: 0.18 * width,
                                child: ListView.separated(
                                    padding:
                                        EdgeInsets.only(left: 0.02 * width),
                                    itemBuilder: (context, index) {
                                      return InkResponse(
                                        onTap: () {},
                                        onHover: (value) {
                                          setState(() {
                                            ishover = value;
                                          });
                                        },
                                        hoverColor:
                                            Colors.grey.withOpacity(0.4),
                                        highlightShape: BoxShape.rectangle,
                                        borderRadius:
                                            BorderRadius.circular(0.01 * width),
                                        child: Container(
                                          height: 0.07 * height,
                                          width: 0.04 * width,
                                          child: Row(
                                            children: [
                                              SizedBox(width: 0.01 * width),
                                              Icon(
                                                sidedetails[index]["icon"],
                                                color: Colors.white,
                                                size: 0.02 * width,
                                              ),
                                              SizedBox(
                                                width: 0.01 * width,
                                              ),
                                              Text(
                                                "${sidedetails[index]["name"]}",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 14),
                                              )
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                    separatorBuilder: (context, index) {
                                      return index == 2
                                          ? Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Divider(
                                                  color: Colors.grey
                                                      .withOpacity(0.4),
                                                ),
                                                Text(
                                                  "You",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 18),
                                                )
                                              ],
                                            )
                                          : index == 8
                                              ? Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Divider(
                                                      color: Colors.grey
                                                          .withOpacity(0.4),
                                                    ),
                                                    Text(
                                                      "Explore",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 18),
                                                    ),
                                                  ],
                                                )
                                              : index == 19
                                                  ? Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Divider(
                                                          color: Colors.grey
                                                              .withOpacity(0.4),
                                                        ),
                                                        Text(
                                                          "More from YouTube",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 18),
                                                        ),
                                                      ],
                                                    )
                                                  : index == 22
                                                      ? Divider(
                                                          color: Colors.grey
                                                              .withOpacity(0.4),
                                                        )
                                                      : index == 26
                                                          ? Column(
                                                              children: [
                                                                Divider(
                                                                  color: Colors
                                                                      .grey
                                                                      .withOpacity(
                                                                          0.4),
                                                                ),
                                                                Text(
                                                                  "AboutPressCopyrightContact usCreatorsAdvertiseDevelopersTermsPrivacyPolicy & SafetyHow YouTube worksTest new features© 2024 Google LLC",
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .white,
                                                                      fontSize:
                                                                          15),
                                                                ),
                                                              ],
                                                            )
                                                          : SizedBox();
                                    },
                                    itemCount: sidedetails.length),
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
                        SizedBox(
                          width: 0.74 * width,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 0.05 * height,
                                width: 0.75 * width,
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
                                          BorderRadius.circular(0.006 * width),
                                      highlightShape: BoxShape.rectangle,
                                      // customBorder: ShapeBorde,
                                      child: Container(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 0.01 * width,
                                        ),
                                        margin: EdgeInsets.symmetric(
                                            horizontal: 0.005 * width),
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
                                                fontSize: 0.013 * width),
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
                                          crossAxisCount: 3,
                                          mainAxisSpacing: 0.04,
                                          mainAxisExtent: 270
                                          // childAspectRatio: 1,
                                          ),
                                  itemBuilder: (context, index) {
                                    return InkResponse(
                                      onTap: () {
                                        setState(() {
                                          selectvideo = index;
                                        });
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  VideoPlayerScreen(
                                                // videoist:
                                                //   videocontrollerList[
                                                //       selectvideo]
                                                //
                                                // index: selectvideo,
                                                videoplayer: "${video[index]}",
                                              ),
                                            ));
                                      },
                                      child: Column(
                                        children: [
                                          SizedBox(height: 0.02 * height),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                right: 0.02 * width),
                                            child: Container(
                                              height: 0.26 * height,
                                              width: 0.3 * width,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: NetworkImage(
                                                        "${details[index]["color"]}"),
                                                    fit: BoxFit.cover),
                                                // color: details[index]["color"],
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        0.01 * width),
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 0.01 * height),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              CircleAvatar(
                                                radius: 0.015 * width,
                                                backgroundImage: NetworkImage(
                                                    "${details[index]["color"]}"),
                                              ),
                                              SizedBox(width: 0.005 * width),
                                              SizedBox(
                                                width: 0.13 * width,
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "${details[index]["name"]}",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize:
                                                              0.022 * height,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                    Text(
                                                      "${details[index]["typeofvideo"]}",
                                                      style: TextStyle(
                                                          color: Colors
                                                              .grey.shade300,
                                                          fontSize:
                                                              0.02 * height,
                                                          fontWeight:
                                                              FontWeight.w300),
                                                    ),
                                                    Row(
                                                      children: [
                                                        Text(
                                                          "${details[index]["time"]}",
                                                          style: TextStyle(
                                                              color: Colors.grey
                                                                  .shade300,
                                                              fontSize:
                                                                  0.02 * height,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w300),
                                                        ),
                                                        SizedBox(
                                                            width:
                                                                0.004 * width),
                                                        Icon(
                                                          Icons.circle,
                                                          color: Colors
                                                              .grey.shade300,
                                                          size: 0.003 * width,
                                                        ),
                                                        SizedBox(
                                                            width:
                                                                0.004 * width),
                                                        Text(
                                                          "${details[index]["day"]}",
                                                          style: TextStyle(
                                                              color: Colors.grey
                                                                  .shade300,
                                                              fontSize:
                                                                  0.02 * height,
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
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    right: 0.01 * width),
                                                child: Icon(
                                                  Icons.more_vert,
                                                  color: Colors.white,
                                                ),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
    );
  }
}
