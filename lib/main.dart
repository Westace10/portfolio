// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
// import 'dart:html';
// import 'package:flutter/gestures.dart';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:portfolio/animated_cursor.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AnimatedCursor(
          child: const MyHomePage(title: 'Flutter Demo Home Page')),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  bool pageSwitch = false;
  bool flutterLeadSwitch = true;
  bool flutterdevSwitch = false;
  bool cloudArchSwitch = false;
  bool picsColorSwitch = false;
  bool aboutColorSwitch = false;
  bool expColorSwitch = false;
  bool workColorSwitch = false;
  bool contactColorSwitch = false;
  bool colorSwitch = false;
  bool linkedinColorSwitch = false;
  bool instaColorSwitch = false;
  bool twitterolorSwitch = false;
  bool mailcontactColorSwitch = false;
  bool githubcolorSwitch = false;
  final homeKey = GlobalKey();
  final workKey = GlobalKey();
  final aboutKey = GlobalKey();
  final expKey = GlobalKey();
  final contactKey = GlobalKey();
  double mouseX = 0;
  double mouseY = 0;

  // PageController? _pageController;
  final ScrollController _controller = ScrollController();

  late final AnimationController _animationController = AnimationController(
    duration: const Duration(seconds: 8),
    vsync: this,
  )..repeat(reverse: false);

  late final Animation<double> _animation = CurvedAnimation(
    parent: _animationController,
    curve: Curves.linear,
  );

  String aboutMe =
      """Hello! My name is Brittany and I enjoy creating things that live on the internet. My interest in web development started back in 2012 when I decided to try editing custom Tumblr themes — turns out hacking together a custom reblog button taught me a lot about HTML & CSS!

Fast-forward to today, and I’ve had the privilege of working at an advertising agency, a start-up, a huge corporation, and a student-led design studio. My main focus these days is building accessible, inclusive products and digital experiences at Upstatement for a variety of clients.

I also recently launched a course that covers everything you need to build a web app with the Spotify API using Node & React.

Here are a few technologies I’ve been working with recently""";

  @override
  void initState() {
    super.initState();
    // _pageController = PageController(initialPage: 0, viewportFraction: 1.0);
  }

  void _animateToIndex(double index) {
    _controller.animateTo(
      index,
      duration: Duration(seconds: 2),
      curve: Curves.fastOutSlowIn,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: Stack(
        children: [
          Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height,
                child: ListView(
                  controller: _controller,
                  children: [
                    Container(
                      key: homeKey,
                      color: Color(0xFF0D182D),
                      height: MediaQuery.of(context).size.height * 1.3,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.15,
                          right: MediaQuery.of(context).size.width * 0.15,
                          top: MediaQuery.of(context).size.height * 0.25,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                vertical:
                                    MediaQuery.of(context).size.height * 0.03,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "Hi, my name is",
                                    style: TextStyle(
                                      fontSize: 24,
                                      color: Colors.blue.shade300,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Akeem Ashaolu.",
                                  style: TextStyle(
                                    fontSize: 72,
                                    color: Color(0xFFCED6F3),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "I build things with Flutter.",
                                  style: TextStyle(
                                    fontSize: 72,
                                    color: Color(0xFF8A92AD),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                vertical:
                                    MediaQuery.of(context).size.height * 0.03,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.43,
                                    child: Text(
                                      "I am a software engineer specializing in Web and mobile application development, a solution architect in Cloud Computing and occasionally design user interface. Currently, I lead a team of Flutter Developer at Datamellon Limited",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Color(0xFF8A92AD),
                                        letterSpacing: 0.5,
                                        height: 1.5,
                                      ),
                                      textAlign: TextAlign.start,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                vertical:
                                    MediaQuery.of(context).size.height * 0.03,
                              ),
                              child: SizedBox(
                                width: 180,
                                height: 50,
                                child: OutlinedButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Get in touch",
                                    style: TextStyle(
                                      color: Colors.blue.shade300,
                                      fontSize: 16,
                                    ),
                                  ),
                                  style: OutlinedButton.styleFrom(
                                    onSurface: Colors.blue.shade300,
                                    side: BorderSide(
                                      width: 1.0,
                                      color: Colors.blue.shade300,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      key: expKey,
                      color: Color(0xFF0D182D),
                      height: MediaQuery.of(context).size.height * 1.3,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width * 0.15,
                          vertical: MediaQuery.of(context).size.height * 0.25,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "01. ",
                                      style: TextStyle(
                                        fontSize: 24,
                                        color: Colors.blue.shade300,
                                      ),
                                    ),
                                    Text(
                                      "Where I've worked",
                                      style: TextStyle(
                                        fontSize: 24,
                                        color: Color(0xFFCED6F3),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 8.0,
                                  ),
                                  child: SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.15,
                                    child: Divider(
                                      color: Colors.blue.shade300,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 64.0,
                              ),
                              child: SizedBox(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.4,
                                      width: MediaQuery.of(context).size.width *
                                          0.18,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              setState(() {
                                                cloudArchSwitch = false;
                                                flutterLeadSwitch = true;
                                                flutterdevSwitch = false;
                                              });
                                            },
                                            child: Container(
                                              decoration: BoxDecoration(
                                                border: Border(
                                                  left: BorderSide(
                                                    color: flutterLeadSwitch
                                                        ? Colors.blue.shade300
                                                        : Color(0xFF8A92AD)
                                                            .withOpacity(0.4),
                                                    width: 2.0,
                                                  ),
                                                ),
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(20.0),
                                                child: Row(
                                                  children: [
                                                    Text("Datamellon"),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          InkWell(
                                            onTap: () {
                                              setState(() {
                                                cloudArchSwitch = false;
                                                flutterLeadSwitch = false;
                                                flutterdevSwitch = true;
                                              });
                                            },
                                            child: Container(
                                              decoration: BoxDecoration(
                                                border: Border(
                                                  left: BorderSide(
                                                    color: flutterdevSwitch
                                                        ? Colors.blue.shade300
                                                        : Color(0xFF8A92AD)
                                                            .withOpacity(0.4),
                                                    width: 2.0,
                                                  ),
                                                ),
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(20.0),
                                                child: Row(
                                                  children: [
                                                    Text("Datamellon"),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          InkWell(
                                            onTap: () {
                                              setState(() {
                                                cloudArchSwitch = true;
                                                flutterLeadSwitch = false;
                                                flutterdevSwitch = false;
                                              });
                                            },
                                            child: Container(
                                              decoration: BoxDecoration(
                                                border: Border(
                                                  left: BorderSide(
                                                    color: cloudArchSwitch
                                                        ? Colors.blue.shade300
                                                        : Color(0xFF8A92AD)
                                                            .withOpacity(0.4),
                                                    width: 2.0,
                                                  ),
                                                ),
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(20.0),
                                                child: Row(
                                                  children: [
                                                    Text("Datamellon"),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    cloudArchSwitch
                                        ? Container(
                                            // color: Colors.blue.shade300,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.5,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.5,
                                            child: Column(
                                              children: [
                                                Row(
                                                  children: [
                                                    RichText(
                                                      text: TextSpan(
                                                        text: 'Engineer ',
                                                        children: [
                                                          TextSpan(
                                                              text: '@',
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .blue
                                                                      .shade300,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold)),
                                                          TextSpan(
                                                              text:
                                                                  ' Upstatement',
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .blue
                                                                      .shade300,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold)),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  children: [
                                                    Text(
                                                      "November 2021 - Present",
                                                    ),
                                                  ],
                                                ),
                                                Center(
                                                  child: Text(
                                                    "cloud architect",
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )
                                        : flutterdevSwitch
                                            ? Container(
                                                color: Colors.blue.shade300,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.5,
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.5,
                                                child: Center(
                                                  child: Text(
                                                    "flutter dev",
                                                  ),
                                                ),
                                              )
                                            : Container(
                                                color: Colors.blue.shade300,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.5,
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.5,
                                                child: Center(
                                                  child: Text(
                                                    "flutter lead",
                                                  ),
                                                ),
                                              ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      key: workKey,
                      color: Color(0xFF0D182D),
                      height: MediaQuery.of(context).size.height * 1.3,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width * 0.15,
                          vertical: MediaQuery.of(context).size.height * 0.25,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "02. ",
                                      style: TextStyle(
                                        fontSize: 24,
                                        color: Colors.blue.shade300,
                                      ),
                                    ),
                                    Text(
                                      "Things I've built so far",
                                      style: TextStyle(
                                        fontSize: 24,
                                        color: Color(0xFFCED6F3),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 8.0,
                                  ),
                                  child: SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.15,
                                    child: Divider(
                                      color: Colors.blue.shade300,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      key: aboutKey,
                      color: Color(0xFF0D182D),
                      height: MediaQuery.of(context).size.height * 1.3,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.15,
                          right: MediaQuery.of(context).size.width * 0.15,
                          top: MediaQuery.of(context).size.height * 0.25,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "03. ",
                                      style: TextStyle(
                                        fontSize: 24,
                                        color: Colors.blue.shade300,
                                      ),
                                    ),
                                    Text(
                                      "About me",
                                      style: TextStyle(
                                        fontSize: 24,
                                        color: Color(0xFFCED6F3),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 8.0,
                                  ),
                                  child: SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.15,
                                    child: Divider(
                                      color: Colors.blue.shade300,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 16.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.43,
                                        child: Text(
                                          aboutMe,
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Color(0xFF8A92AD),
                                            letterSpacing: 0.5,
                                            height: 1.5,
                                          ),
                                          textAlign: TextAlign.start,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 8.0),
                                        child: SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.2,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        vertical: 8.0),
                                                    child: Row(
                                                      children: [
                                                        Icon(
                                                          Icons
                                                              .arrow_forward_ios_outlined,
                                                          color: Colors
                                                              .blue.shade300,
                                                        ),
                                                        Text(
                                                          "Javascript",
                                                          style: TextStyle(
                                                            fontSize: 16,
                                                            color: Color(
                                                                0xFF8A92AD),
                                                            letterSpacing: 0.5,
                                                            height: 1.5,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        vertical: 8.0),
                                                    child: Row(
                                                      children: [
                                                        Icon(
                                                          Icons
                                                              .arrow_forward_ios_outlined,
                                                          color: Colors
                                                              .blue.shade300,
                                                        ),
                                                        Text(
                                                          "Javascript",
                                                          style: TextStyle(
                                                            fontSize: 16,
                                                            color: Color(
                                                                0xFF8A92AD),
                                                            letterSpacing: 0.5,
                                                            height: 1.5,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        vertical: 8.0),
                                                    child: Row(
                                                      children: [
                                                        Icon(
                                                          Icons
                                                              .arrow_forward_ios_outlined,
                                                          color: Colors
                                                              .blue.shade300,
                                                        ),
                                                        Text(
                                                          "Javascript",
                                                          style: TextStyle(
                                                            fontSize: 16,
                                                            color: Color(
                                                                0xFF8A92AD),
                                                            letterSpacing: 0.5,
                                                            height: 1.5,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Column(
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        vertical: 8.0),
                                                    child: Row(
                                                      children: [
                                                        Icon(
                                                          Icons
                                                              .arrow_forward_ios_outlined,
                                                          color: Colors
                                                              .blue.shade300,
                                                        ),
                                                        Text(
                                                          "Javascript",
                                                          style: TextStyle(
                                                            fontSize: 16,
                                                            color: Color(
                                                                0xFF8A92AD),
                                                            letterSpacing: 0.5,
                                                            height: 1.5,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        vertical: 8.0),
                                                    child: Row(
                                                      children: [
                                                        Icon(
                                                          Icons
                                                              .arrow_forward_ios_outlined,
                                                          color: Colors
                                                              .blue.shade300,
                                                        ),
                                                        Text(
                                                          "Javascript",
                                                          style: TextStyle(
                                                            fontSize: 16,
                                                            color: Color(
                                                                0xFF8A92AD),
                                                            letterSpacing: 0.5,
                                                            height: 1.5,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        vertical: 8.0),
                                                    child: Row(
                                                      children: [
                                                        Icon(
                                                          Icons
                                                              .arrow_forward_ios_outlined,
                                                          color: Colors
                                                              .blue.shade300,
                                                        ),
                                                        Text(
                                                          "Javascript",
                                                          style: TextStyle(
                                                            fontSize: 16,
                                                            color: Color(
                                                                0xFF8A92AD),
                                                            letterSpacing: 0.5,
                                                            height: 1.5,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Stack(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.all(
                                                picsColorSwitch ? 12.0 : 8.0),
                                            child: Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.15,
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.3,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(5),
                                                ),
                                                border: Border.all(
                                                  color: Colors.blue.shade300,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.all(
                                                picsColorSwitch ? 20.0 : 16.0),
                                            child: Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.15,
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.3,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(5),
                                                ),
                                                border: Border.all(
                                                  color: Colors.blue.shade300
                                                      .withOpacity(0.5),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.all(
                                                picsColorSwitch ? 20.0 : 24.0),
                                            child: Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.15,
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.3,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(5),
                                                ),
                                                border: Border.all(
                                                  color: Colors.blue.shade300
                                                      .withOpacity(0.2),
                                                ),
                                              ),
                                            ),
                                          ),
                                          ClipRRect(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(10),
                                            ),
                                            child: InkWell(
                                              onTap: () {},
                                              onHover: (value) {
                                                value
                                                    ? setState(() {
                                                        picsColorSwitch = true;
                                                      })
                                                    : setState(() {
                                                        picsColorSwitch = false;
                                                      });
                                              },
                                              child: Image.asset(
                                                "assets/images/coder.jpeg",
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.15,
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.3,
                                                fit: BoxFit.contain,
                                                colorBlendMode: picsColorSwitch
                                                    ? BlendMode.softLight
                                                    : BlendMode.multiply,
                                                color: Colors.blue,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                          vertical: 50.0,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Stack(
                                              alignment:
                                                  AlignmentDirectional.center,
                                              children: [
                                                Center(
                                                  child: RotationTransition(
                                                    turns: _animation,
                                                    child: Image.asset(
                                                      "assets/images/FIAF-white-2-8.png",
                                                      width: 180,
                                                      height: 180,
                                                      fit: BoxFit.fill,
                                                    ),
                                                  ),
                                                ),
                                                AnimatedCursorMouseRegion(
                                                  decoration: BoxDecoration(
                                                    color: Colors.black
                                                        .withOpacity(0),
                                                    border: Border.all(
                                                      width: 2,
                                                      color:
                                                          Colors.blue.shade300,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.all(
                                                      Radius.circular(90),
                                                    ),
                                                  ),
                                                  child: Center(
                                                    child: Icon(
                                                      Icons.arrow_downward,
                                                      size: 64,
                                                      color:
                                                          Colors.blue.shade300,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      key: contactKey,
                      color: Color(0xFF0D182D),
                      height: MediaQuery.of(context).size.height * 1.3,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.15,
                          right: MediaQuery.of(context).size.width * 0.15,
                          top: MediaQuery.of(context).size.height * 0.25,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "04. ",
                                      style: TextStyle(
                                        fontSize: 24,
                                        color: Colors.blue.shade300,
                                      ),
                                    ),
                                    Text(
                                      "Contact",
                                      style: TextStyle(
                                        fontSize: 24,
                                        color: Color(0xFFCED6F3),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 8.0,
                                  ),
                                  child: SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.15,
                                    child: Divider(
                                      color: Colors.blue.shade300,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                color: Color(0xFF0D182D),
                height: MediaQuery.of(context).size.height * 0.1,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 32.0,
                    vertical: 16.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 0.0,
                          vertical: 0.0,
                        ),
                        child: InkWell(
                          child: Image.asset(
                            "assets/images/logo.png",
                            height: 500,
                            width: 130,
                            fit: BoxFit.cover,
                          ),
                          onTap: () {
                            _animateToIndex(
                              MediaQuery.of(context).size.height * 0,
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 24.0,
                        ),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.5,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AnimatedCursorMouseRegion(
                                decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.0),
                                  border: Border.all(
                                    width: 1,
                                    color: Colors.blue.shade300,
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(5),
                                  ),
                                ),
                                child: InkWell(
                                  onHover: (value) {
                                    value
                                        ? setState(() {
                                            aboutColorSwitch = true;
                                          })
                                        : setState(() {
                                            aboutColorSwitch = false;
                                          });
                                  },
                                  hoverColor: Colors.blue.shade300,
                                  onTap: () {
                                    _animateToIndex(
                                      MediaQuery.of(context).size.height * 1.3,
                                    );
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 20.0,
                                      vertical: 10.0,
                                    ),
                                    child: Row(
                                      children: [
                                        Text(
                                          "01.",
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.blue.shade300,
                                          ),
                                        ),
                                        Text(
                                          "Experience",
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: aboutColorSwitch
                                                ? Colors.blue.shade300
                                                : Color(0xFF8A92AD),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              AnimatedCursorMouseRegion(
                                decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.0),
                                  border: Border.all(
                                    width: 1,
                                    color: Colors.blue.shade300,
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(5),
                                  ),
                                ),
                                child: InkWell(
                                  onHover: (value) {
                                    value
                                        ? setState(() {
                                            expColorSwitch = true;
                                          })
                                        : setState(() {
                                            expColorSwitch = false;
                                          });
                                  },
                                  hoverColor: Colors.blue.shade300,
                                  onTap: () {
                                    _animateToIndex(
                                      MediaQuery.of(context).size.height * 2.6,
                                    );
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 20.0,
                                      vertical: 10.0,
                                    ),
                                    child: Row(
                                      children: [
                                        Text(
                                          "02.",
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.blue.shade300,
                                          ),
                                        ),
                                        Text(
                                          "Archive",
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: expColorSwitch
                                                ? Colors.blue.shade300
                                                : Color(0xFF8A92AD),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              AnimatedCursorMouseRegion(
                                decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.0),
                                  border: Border.all(
                                    width: 1,
                                    color: Colors.blue.shade300,
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(5),
                                  ),
                                ),
                                child: InkWell(
                                  onHover: (value) {
                                    value
                                        ? setState(() {
                                            workColorSwitch = true;
                                          })
                                        : setState(() {
                                            workColorSwitch = false;
                                          });
                                  },
                                  hoverColor: Colors.blue.shade300,
                                  onTap: () {
                                    _animateToIndex(
                                      MediaQuery.of(context).size.height * 3.9,
                                    );
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 20.0,
                                      vertical: 10.0,
                                    ),
                                    child: Row(
                                      children: [
                                        Text(
                                          "03.",
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.blue.shade300,
                                          ),
                                        ),
                                        Text(
                                          "About",
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: workColorSwitch
                                                ? Colors.blue.shade300
                                                : Color(0xFF8A92AD),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              AnimatedCursorMouseRegion(
                                decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.0),
                                  border: Border.all(
                                    width: 1,
                                    color: Colors.blue.shade300,
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(5),
                                  ),
                                ),
                                child: InkWell(
                                  onHover: (value) {
                                    value
                                        ? setState(() {
                                            contactColorSwitch = true;
                                          })
                                        : setState(() {
                                            contactColorSwitch = false;
                                          });
                                  },
                                  hoverColor: Colors.blue.shade300,
                                  onTap: () {
                                    _animateToIndex(
                                      MediaQuery.of(context).size.height * 5.2,
                                    );
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 20.0,
                                      vertical: 10.0,
                                    ),
                                    child: Row(
                                      children: [
                                        Text(
                                          "04.",
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.blue.shade300,
                                          ),
                                        ),
                                        Text(
                                          "Contact",
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: contactColorSwitch
                                                ? Colors.blue.shade300
                                                : Color(0xFF8A92AD),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 100,
                                height: 40,
                                child: OutlinedButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Resume",
                                    style: TextStyle(
                                      color: Colors.blue.shade300,
                                      fontSize: 16,
                                    ),
                                  ),
                                  style: OutlinedButton.styleFrom(
                                    side: BorderSide(
                                      width: 1.0,
                                      color: Colors.blue.shade300,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      // Text("Email")
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 32.0,
                  vertical: 0.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.44,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            color: Colors.blue.shade300,
                            height: 80,
                            width: 2,
                          ),
                          AnimatedCursorMouseRegion(
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.0),
                            ),
                            child: RotatedBox(
                              quarterTurns: 45,
                              child: InkWell(
                                onHover: (value) {
                                  value
                                      ? setState(() {
                                          mailcontactColorSwitch = true;
                                        })
                                      : setState(() {
                                          mailcontactColorSwitch = false;
                                        });
                                },
                                hoverColor: Colors.blue.shade300,
                                onTap: () {},
                                child: Text(
                                  "ashaoluakeem@gmail.com",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    letterSpacing: 4.0,
                                    color: mailcontactColorSwitch
                                        ? Colors.blue.shade300
                                        : Color(0xFF8A92AD),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 32.0,
                  vertical: 0.0,
                ),
                child: Row(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.46,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AnimatedCursorMouseRegion(
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.0),
                            ),
                            child: InkWell(
                              onHover: (value) {
                                value
                                    ? setState(() {
                                        githubcolorSwitch = true;
                                      })
                                    : setState(() {
                                        githubcolorSwitch = false;
                                      });
                              },
                              hoverColor: Colors.blue.shade300,
                              onTap: () {},
                              child: Image.asset(
                                "assets/icons/github.png",
                                height: 25,
                                color: githubcolorSwitch
                                    ? Colors.blue.shade300
                                    : Color(0xFF8A92AD),
                              ),
                            ),
                          ),
                          AnimatedCursorMouseRegion(
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.0),
                            ),
                            child: InkWell(
                              onHover: (value) {
                                value
                                    ? setState(() {
                                        linkedinColorSwitch = true;
                                      })
                                    : setState(() {
                                        linkedinColorSwitch = false;
                                      });
                              },
                              hoverColor: Colors.blue.shade300,
                              onTap: () {},
                              child: Image.asset(
                                "assets/icons/linkedin.png",
                                height: 25,
                                color: linkedinColorSwitch
                                    ? Colors.blue.shade300
                                    : Color(0xFF8A92AD),
                              ),
                            ),
                          ),
                          AnimatedCursorMouseRegion(
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.0),
                            ),
                            child: InkWell(
                              onHover: (value) {
                                value
                                    ? setState(() {
                                        twitterolorSwitch = true;
                                      })
                                    : setState(() {
                                        twitterolorSwitch = false;
                                      });
                              },
                              hoverColor: Colors.blue.shade300,
                              onTap: () {},
                              child: Image.asset(
                                "assets/icons/twitter.png",
                                height: 25,
                                color: twitterolorSwitch
                                    ? Colors.blue.shade300
                                    : Color(0xFF8A92AD),
                              ),
                            ),
                          ),
                          AnimatedCursorMouseRegion(
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.0),
                            ),
                            child: InkWell(
                              onHover: (value) {
                                value
                                    ? setState(() {
                                        instaColorSwitch = true;
                                      })
                                    : setState(() {
                                        instaColorSwitch = false;
                                      });
                              },
                              hoverColor: Colors.blue.shade300,
                              onTap: () {},
                              child: Image.asset(
                                "assets/icons/instagram.png",
                                height: 25,
                                color: instaColorSwitch
                                    ? Colors.blue.shade300
                                    : Color(0xFF8A92AD),
                              ),
                            ),
                          ),
                          Container(
                            color: Colors.blue.shade300,
                            height: 80,
                            width: 2,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
