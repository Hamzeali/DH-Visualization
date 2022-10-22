// ignore_for_file: file_names

import 'dart:async';

import '../main.dart';
// ignore: implementation_imports
import 'package:provider/src/provider.dart';
import '../home-page-DH.dart';
import 'description-widget.dart';
import 'positioned-widget.dart';
import 'package:flutter/material.dart';
import '../language-provider.dart';
import '../global.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Slide4DH extends StatefulWidget {
  const Slide4DH({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _Slide4DHState createState() => _Slide4DHState();
}

bool isCanceled = false;
int secretBobOldVal = 0;
int scretAliceOldVal = 0;
var sliderOldValue = 0;
var valOldValue = 0;
String locale = 'de';
bool languageOldValue = true;
bool textVisibility = true;
var indexVisibilitySlide4DH = -1;
int checkVisibility = 0;
bool delay = true;
String dropdownValue = 'Deutsch';
var settingsVideoButton = 0.13;
var settingsStopButton = 0.13;
var advancedSettingsButton = 0.13;
var backToZero = 0;
var checkSettingsDuration = 0;
var isSettingsPressed = 0;
var settingsButtonDuration = 0;
int descIndex = -1;
int containerSeconds = 0;
int isPressedUp = 0;
int isPressedDown = 0;
var timerProblem = 0;
List stepsVisibility = [true, false];
var seconds = Global.slider;
bool dropButton = false;
bool desc = true;
bool descVisbility = desc;
String text = '';
bool videoButton = true;
bool settingButton = true;
var timerSeconds = 3;
Timer delayTimer = Timer(const Duration(seconds: 1), () {});
Timer videoTimerVariable = Timer(const Duration(seconds: 1), () {});
Timer timerSlide4DH = Timer(const Duration(seconds: 1), () {});
Timer videoTimerSlide4DH =
    Timer.periodic(Duration(seconds: Global.slider), (videoTimer) {});

List contentOpacity = [
  0.0,
  0.0,
  0.0,
  0.0,
  0.0,
  0.0,
  0.0,
  0.0,
  0.0,
  0.0,
  0.0,
  0.0,
  0.0,
  0.0,
];

class _Slide4DHState extends State<Slide4DH>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    textVisibility = true;
  }

  @override
  // ignore: must_call_super
  void dispose() {
    Global.replacedSliderValue = Global.slider;
    indexVisibilitySlide4DH = -1;
    checkVisibility = 0;
    delay = true;
    // dropdownValue = 'Deutsch';
    backToZero = 0;
    checkSettingsDuration = 0;
    isSettingsPressed = 0;
    settingsButtonDuration = 0;
    descIndex = -1;
    containerSeconds = 0;
    isPressedUp = 0;
    isPressedDown = 0;
    timerProblem = 0;
    stepsVisibility = [true, false];
    seconds = Global.slider;
    dropButton = false;
    desc = true;
    descVisbility = desc;
    text = '';
    videoButton = true;
    settingButton = true;
    delayTimer.cancel();
    videoTimerVariable.cancel();
    timerSlide4DH.cancel();
    videoTimerSlide4DH.cancel();
    settingsVideoButton = 0.13;
    settingsStopButton = 0.13;
    advancedSettingsButton = 0.13;
    contentOpacity = [
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
      0.0,
    ];
    textVisibility = false;
    delayTimer.cancel();

    super.dispose();
  }

  String translate(BuildContext ctx, indexVisibility) {
    switch (indexVisibility) {
      case 0:
        return AppLocalizations.of(ctx)!.slide4Item0;
      case 1:
        return AppLocalizations.of(ctx)!.slide4Item1;
      case 2:
        return AppLocalizations.of(ctx)!.slide4Item2;
      case 3:
        return AppLocalizations.of(ctx)!.slide4Item3;
      case 4:
        return AppLocalizations.of(ctx)!.slide4Item4;
      case 5:
        return AppLocalizations.of(ctx)!.slide4Item5;
      case 6:
        return AppLocalizations.of(ctx)!.slide4Item6;
      case 7:
        return AppLocalizations.of(ctx)!.slide4Item7;
      case 8:
        return AppLocalizations.of(ctx)!.slide4Item8;
      case 9:
        return AppLocalizations.of(ctx)!.slide4Item9;
      case 10:
        return AppLocalizations.of(ctx)!.slide4Item10;
      case 11:
        return AppLocalizations.of(ctx)!.slide4Item11;
      case 12:
        return AppLocalizations.of(ctx)!.slide4Item12;
      case 13:
        return AppLocalizations.of(ctx)!.slide4Item13;
      case 14:
        return AppLocalizations.of(ctx)!.slide4Item14;
      default:
        return "";
    }
  }

  void increment() {
    seconds = Global.slider;

    if (indexVisibilitySlide4DH < 14) {
      indexVisibilitySlide4DH++;
      stepsVisibility[0] = !stepsVisibility[0];
      stepsVisibility[1] = !stepsVisibility[1];
      if (indexVisibilitySlide4DH != 14) {
        contentOpacity[indexVisibilitySlide4DH] = 1.0;
      }
    }
  }

  void decrement() {
    if (videoButton == false) {
      videoTimerSlide4DH.cancel();
    }
    videoButton = true;

    seconds = Global.slider;
    if (indexVisibilitySlide4DH == 0) text = '';

    if (indexVisibilitySlide4DH >= 0) {
      stepsVisibility[0] = !stepsVisibility[0];
      stepsVisibility[1] = !stepsVisibility[1];
      if (indexVisibilitySlide4DH != 14) {
        contentOpacity[indexVisibilitySlide4DH] = 0.0;
      }
      indexVisibilitySlide4DH--;
    }
  }

  Timer videoTimerProblem() {
    videoTimerVariable = Timer.periodic(
      Duration(seconds: Global.slider),
      (Timer videoTimerVariable) {
        setState(
          () {
            increment();
          },
        );
      },
    );
    return videoTimerVariable;
  }

  Positioned linePosition(
      double top, double left, double width, double height) {
    return Positioned(
      top: (MediaQuery.of(context).size.height -
              HomePageDHState.returnAppBar[1]) *
          top,
      left: MediaQuery.of(context).size.width * left,
      width: MediaQuery.of(context).size.width * width,
      height: MediaQuery.of(context).size.height * height,
      child: Container(
        color: Colors.black,
      ),
    );
  }

  Visibility texVisibility(
    bool textVisibility,
    double top,
    double left,
    double width,
    double height,
    double opacity,
    Alignment align,
    String text,
    double fontSize,
  ) {
    return Visibility(
      visible: textVisibility,
      child: Positioned(
        top: (MediaQuery.of(context).size.height -
                HomePageDHState.returnAppBar[1]) *
            top,
        left: MediaQuery.of(context).size.width * left,
        width: MediaQuery.of(context).size.width * width,
        height: MediaQuery.of(context).size.height * height,
        child: AnimatedOpacity(
          opacity: opacity,
          duration: Duration(seconds: seconds),
          child: Align(
            alignment: align,
            child: FittedBox(
              child: Text(
                text,
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * fontSize,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  bool stop = true;

  @override
  Widget build(BuildContext context) {
    text = translate(context, indexVisibilitySlide4DH);
    double shortWidth = 0.0;
    double middleWidth = 0.0;
    double marginValue = 0.0;

    if (MediaQuery.of(context).size.width < 1000) {
      shortWidth = 0.025;
      middleWidth = 0.015;
    } else {
      shortWidth = 0.02;
      middleWidth = 0.02;
    }
    if (MediaQuery.of(context).size.width < 700) {
      marginValue = 8.0;
    } else {
      marginValue = 16.5;
    }
    if (MediaQuery.of(context).size.width > 1000 &&
        MediaQuery.of(context).size.height < 400) {
      middleWidth = 0.015;
    } else if (MediaQuery.of(context).size.width < 1000 &&
        MediaQuery.of(context).size.height < 400) {
      middleWidth = 0.02;
    } else if (MediaQuery.of(context).size.width < 1000 &&
        MediaQuery.of(context).size.height > 400) {
      middleWidth = 0.025;
    }

    if (isPressedDown == 2 && isPressedUp == 1 && desc) {
      containerSeconds = 2;
      isPressedUp = 0;
      isPressedDown = 0;
    } else if (isPressedDown == 2 && isPressedUp == 1 && !desc) {
      containerSeconds = 2;
      isPressedUp = 0;
      isPressedDown = 0;
    } else if (checkVisibility == 1) {
      containerSeconds = 0;
      checkVisibility = 0;
    }
    if (isSettingsPressed == 1) {
      settingsButtonDuration = 100;
      backToZero = 1;
      isSettingsPressed = 0;
    } else if (checkSettingsDuration == 1) {
      backToZero = 0;
      settingsButtonDuration = 0;
      checkSettingsDuration = 0;
    }
    return InteractiveViewer(
      panEnabled: true,
      maxScale: 4,
      child: Container(
        color: Colors.white,
        child: Stack(
          children: [
            // ALice-Image Position
            MyPositioned(
              false,
              true,
              false,
              false,
              0.1,
              0.0,
              0.0,
              0.11,
              0.1,
              0.2,
              true,
              'assets/AliceDH.jpeg',
              BoxFit.fill,
              seconds,
              HomePageDHState.returnAppBar[1],
              1.0,
            ),

            // Bob-Image Position
            MyPositioned(
              true,
              false,
              false,
              false,
              0.1,
              0.12,
              0.0,
              0.0,
              0.08,
              0.2,
              true,
              'assets/BobDH.jpeg',
              BoxFit.fill,
              seconds,
              HomePageDHState.returnAppBar[1],
              1.0,
            ),

            // Eve-Image Position
            MyPositioned(
              true,
              false,
              false,
              false,
              0.1,
              0.46,
              0.0,
              0.0,
              0.08,
              0.2,
              true,
              'assets/EveDH.jpeg',
              BoxFit.fill,
              seconds,
              HomePageDHState.returnAppBar[1],
              1.0,
            ),

            // Alice-Line
            linePosition(0.3, 0.02, 0.002, 0.5),

            // Bob-Line
            linePosition(0.3, 0.98, 0.002, 0.5),

            // Eve-Alice Line
            linePosition(0.3, 0.3, 0.002, 0.5),

            // Eve-Bob Line
            linePosition(0.3, 0.7, 0.002, 0.5),

            // Right-Arrow between Alice and Eve
            Visibility(
              visible: textVisibility,
              child: MyPositioned(
                true,
                false,
                false,
                false,
                0.13,
                0.55,
                0.0,
                0.0,
                0.2,
                0.25,
                true,
                'assets/arrow-horizontal.jpeg',
                BoxFit.fill,
                seconds,
                HomePageDHState.returnAppBar[1],
                contentOpacity[2],
              ),
            ),

            // Left-Arrow between Alice and Eve
            Visibility(
              visible: textVisibility,
              child: MyPositioned(
                true,
                false,
                false,
                false,
                0.25,
                0.55,
                0.0,
                0.0,
                0.2,
                0.02,
                true,
                'assets/left-arrow-horizontal.jpeg',
                BoxFit.fill,
                seconds,
                HomePageDHState.returnAppBar[1],
                contentOpacity[5],
              ),
            ),

            // Right-Arrow between Bob and Eve
            Visibility(
              visible: textVisibility,
              child: MyPositioned(
                true,
                false,
                false,
                false,
                0.25,
                0.23,
                0.0,
                0.0,
                0.2,
                0.25,
                true,
                'assets/arrow-horizontal.jpeg',
                BoxFit.fill,
                seconds,
                HomePageDHState.returnAppBar[1],
                contentOpacity[12],
              ),
            ),

            // Left-Arrow between Bob and Eve
            Visibility(
              visible: textVisibility,
              child: MyPositioned(
                true,
                false,
                false,
                false,
                0.13,
                0.23,
                0.0,
                0.0,
                0.2,
                0.02,
                true,
                'assets/left-arrow-horizontal.jpeg',
                BoxFit.fill,
                seconds,
                HomePageDHState.returnAppBar[1],
                contentOpacity[9],
              ),
            ),

            // a exchange between Alice and Eve
            texVisibility(textVisibility, 0.05, 0.35, 0.2, 0.1,
                contentOpacity[2], Alignment.topLeft, 'a', shortWidth),
            // Visibility(
            //   visible: textVisibility,
            //   child: Positioned(
            //     top: (MediaQuery.of(context).size.height -
            //             HomePageDHState.returnAppBar[1]) *
            //         0.05,
            //     left: MediaQuery.of(context).size.width * 0.35,
            //     width: MediaQuery.of(context).size.width * 0.2,
            //     height: MediaQuery.of(context).size.height * 0.1,
            //     child: AnimatedOpacity(
            //       opacity: contentOpacity[2],
            //       duration: Duration(seconds: seconds),
            //       child: Align(
            //         alignment: Alignment.topLeft,
            //         child: FittedBox(
            //           child: Text(
            //             'a',
            //             style: TextStyle(
            //               fontSize:
            //                   MediaQuery.of(context).size.width * shortWidth,
            //             ),
            //           ),
            //         ),
            //       ),
            //     ),
            //   ),
            // ),

            // eb exchange between Alice and Eve
            texVisibility(textVisibility, 0.18, 0.35, 0.2, 0.1,
                contentOpacity[5], Alignment.topLeft, 'eb', shortWidth),
            // Visibility(
            //   visible: textVisibility,
            //   child: Positioned(
            //     top: (MediaQuery.of(context).size.height -
            //             HomePageDHState.returnAppBar[1]) *
            //         0.18,
            //     left: MediaQuery.of(context).size.width * 0.35,
            //     width: MediaQuery.of(context).size.width * 0.2,
            //     height: MediaQuery.of(context).size.height * 0.1,
            //     child: AnimatedOpacity(
            //       opacity: contentOpacity[5],
            //       duration: Duration(seconds: seconds),
            //       child: Align(
            //         alignment: Alignment.topLeft,
            //         child: FittedBox(
            //           child: Text(
            //             'eb',
            //             style: TextStyle(
            //               fontSize:
            //                   MediaQuery.of(context).size.width * shortWidth,
            //             ),
            //           ),
            //         ),
            //       ),
            //     ),
            //   ),
            // ),

            // b exchange between Bob and Eve
            texVisibility(textVisibility, 0.05, 0.67, 0.2, 0.1,
                contentOpacity[9], Alignment.topLeft, 'b', shortWidth),
            // Visibility(
            //   visible: textVisibility,
            //   child: Positioned(
            //     top: (MediaQuery.of(context).size.height -
            //             HomePageDHState.returnAppBar[1]) *
            //         0.05,
            //     left: MediaQuery.of(context).size.width * 0.67,
            //     width: MediaQuery.of(context).size.width * 0.2,
            //     height: MediaQuery.of(context).size.height * 0.1,
            //     child: AnimatedOpacity(
            //       opacity: contentOpacity[9],
            //       duration: Duration(seconds: seconds),
            //       child: Align(
            //         alignment: Alignment.topLeft,
            //         child: FittedBox(
            //           child: Text(
            //             'b',
            //             style: TextStyle(
            //               fontSize:
            //                   MediaQuery.of(context).size.width * shortWidth,
            //             ),
            //           ),
            //         ),
            //       ),
            //     ),
            //   ),
            // ),

            // ea exchange between Bob and Eve
            texVisibility(textVisibility, 0.18, 0.67, 0.2, 0.1,
                contentOpacity[12], Alignment.topLeft, 'ea', shortWidth),
            // Visibility(
            //   visible: textVisibility,
            //   child: Positioned(
            //     top: (MediaQuery.of(context).size.height -
            //             HomePageDHState.returnAppBar[1]) *
            //         0.18,
            //     left: MediaQuery.of(context).size.width * 0.67,
            //     width: MediaQuery.of(context).size.width * 0.2,
            //     height: MediaQuery.of(context).size.height * 0.1,
            //     child: AnimatedOpacity(
            //       opacity: contentOpacity[12],
            //       duration: Duration(seconds: seconds),
            //       child: Align(
            //         alignment: Alignment.topLeft,
            //         child: FittedBox(
            //           child: Text(
            //             'ea',
            //             style: TextStyle(
            //               fontSize:
            //                   MediaQuery.of(context).size.width * shortWidth,
            //             ),
            //           ),
            //         ),
            //       ),
            //     ),
            //   ),
            // ),

            //Alice

            // Secret S(Alice)

            Visibility(
              visible: textVisibility,
              child: Positioned(
                top: (MediaQuery.of(context).size.height -
                        HomePageDHState.returnAppBar[1]) *
                    0.35,
                left: MediaQuery.of(context).size.width * 0.05,
                width: MediaQuery.of(context).size.width * 2,
                height: MediaQuery.of(context).size.height * 0.1,
                child: AnimatedOpacity(
                  opacity: contentOpacity[0],
                  duration: Duration(seconds: seconds),
                  child: Wrap(
                    children: [
                      Text(
                        'Secret s',
                        style: TextStyle(
                          fontSize:
                              (MediaQuery.of(context).size.width * middleWidth),
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Container(
                        padding: EdgeInsets.only(top: marginValue),
                        child: Text(
                          '(Alice)',
                          style: TextStyle(
                            fontSize: (MediaQuery.of(context).size.width *
                                    shortWidth) /
                                2,
                            color: Colors.red[800],
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // a = r^S(Alice) mod n

            Visibility(
              visible: textVisibility,
              child: Positioned(
                top: (MediaQuery.of(context).size.height -
                        HomePageDHState.returnAppBar[1]) *
                    0.45,
                left: MediaQuery.of(context).size.width * 0.05,
                width: MediaQuery.of(context).size.width * 0.28,
                height: MediaQuery.of(context).size.height * 0.1,
                child: AnimatedOpacity(
                  opacity: contentOpacity[1],
                  duration: Duration(seconds: seconds),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: FittedBox(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 15.0),
                            child: Text(
                              'a = r',
                              style: TextStyle(
                                fontSize: MediaQuery.of(context).size.width *
                                    middleWidth,
                              ),
                            ),
                          ),
                          Text(
                            'S',
                            style: TextStyle(
                              fontSize: MediaQuery.of(context).size.width *
                                  middleWidth /
                                  1.5,
                            ),
                          ),
                          Text(
                            '(Alice)',
                            style: TextStyle(
                              fontSize: MediaQuery.of(context).size.width *
                                  middleWidth /
                                  1.5,
                              color: Colors.red,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15.0),
                            child: Text(
                              ' mod n', // = $r',
                              style: TextStyle(
                                fontSize: MediaQuery.of(context).size.width *
                                    middleWidth,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),

            // S = eb^S(Alice) mod n
            Visibility(
              visible: textVisibility,
              child: Positioned(
                top: (MediaQuery.of(context).size.height -
                        HomePageDHState.returnAppBar[1]) *
                    0.58,
                left: MediaQuery.of(context).size.width * 0.05,
                width: MediaQuery.of(context).size.width * 0.28,
                height: MediaQuery.of(context).size.height * 0.1,
                child: AnimatedOpacity(
                  opacity: contentOpacity[6],
                  duration: Duration(seconds: seconds),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: FittedBox(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 15.0),
                            child: Text(
                              'S1 = eb',
                              style: TextStyle(
                                fontSize: MediaQuery.of(context).size.width *
                                    middleWidth,
                              ),
                            ),
                          ),
                          Text(
                            'S',
                            style: TextStyle(
                              fontSize: MediaQuery.of(context).size.width *
                                  middleWidth /
                                  1.5,
                            ),
                          ),
                          Text(
                            '(Alice)',
                            style: TextStyle(
                              fontSize: MediaQuery.of(context).size.width *
                                  middleWidth /
                                  1.5,
                              color: Colors.red,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15.0),
                            child: Text(
                              ' mod n', // = $r',
                              style: TextStyle(
                                fontSize: MediaQuery.of(context).size.width *
                                    middleWidth,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),

            // Eve

            // Secret es(Eve-Alice)
            Visibility(
              visible: textVisibility,
              child: Positioned(
                top: (MediaQuery.of(context).size.height -
                        HomePageDHState.returnAppBar[1]) *
                    0.35,
                left: MediaQuery.of(context).size.width * 0.31,
                width: MediaQuery.of(context).size.width * 2,
                height: MediaQuery.of(context).size.height * 0.1,
                child: AnimatedOpacity(
                  opacity: contentOpacity[3],
                  duration: Duration(seconds: seconds),
                  child: Wrap(
                    children: [
                      Text(
                        'Secret s',
                        style: TextStyle(
                          fontSize:
                              (MediaQuery.of(context).size.width * middleWidth),
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Container(
                        padding: EdgeInsets.only(top: marginValue),
                        child: Text(
                          '(Eve-Alice)',
                          style: TextStyle(
                            fontSize: (MediaQuery.of(context).size.width *
                                    shortWidth) /
                                2,
                            color: Colors.red[800],
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // Secret es(Eve-Bob)
            Visibility(
              visible: textVisibility,
              child: Positioned(
                top: (MediaQuery.of(context).size.height -
                        HomePageDHState.returnAppBar[1]) *
                    0.35,
                left: MediaQuery.of(context).size.width * 0.5,
                width: MediaQuery.of(context).size.width * 2,
                height: MediaQuery.of(context).size.height * 0.1,
                child: AnimatedOpacity(
                  opacity: contentOpacity[10],
                  duration: Duration(seconds: seconds),
                  child: Wrap(
                    children: [
                      Text(
                        ';   Secret s',
                        style: TextStyle(
                          fontSize:
                              (MediaQuery.of(context).size.width * middleWidth),
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Container(
                        padding: EdgeInsets.only(top: marginValue),
                        child: Text(
                          '(Eve-Bob)',
                          style: TextStyle(
                            fontSize: (MediaQuery.of(context).size.width *
                                    shortWidth) /
                                2,
                            color: Colors.red[800],
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // ea = r^S(Eve-Alice) mod n
            Visibility(
              visible: textVisibility,
              child: Positioned(
                top: (MediaQuery.of(context).size.height -
                        HomePageDHState.returnAppBar[1]) *
                    0.45,
                left: MediaQuery.of(context).size.width * 0.31,
                width: MediaQuery.of(context).size.width * 0.17,
                height: MediaQuery.of(context).size.height * 0.1,
                child: AnimatedOpacity(
                  opacity: contentOpacity[4],
                  duration: Duration(seconds: seconds),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: FittedBox(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 15.0),
                            child: Text(
                              'ea = r',
                              style: TextStyle(
                                fontSize: MediaQuery.of(context).size.width *
                                    middleWidth,
                              ),
                            ),
                          ),
                          Text(
                            'S',
                            style: TextStyle(
                              fontSize: MediaQuery.of(context).size.width *
                                  middleWidth /
                                  1.5,
                            ),
                          ),
                          Text(
                            '(Eve-Alice)',
                            style: TextStyle(
                              fontSize: MediaQuery.of(context).size.width *
                                  middleWidth /
                                  1.5,
                              color: Colors.red,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15.0),
                            child: Text(
                              ' mod n', // = $r',
                              style: TextStyle(
                                fontSize: MediaQuery.of(context).size.width *
                                    middleWidth,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),

            // eb = r^S(Eve-Bob) mod n
            Visibility(
              visible: textVisibility,
              child: Positioned(
                top: (MediaQuery.of(context).size.height -
                        HomePageDHState.returnAppBar[1]) *
                    0.45,
                left: MediaQuery.of(context).size.width * 0.5,
                width: MediaQuery.of(context).size.width * 0.17,
                height: MediaQuery.of(context).size.height * 0.1,
                child: AnimatedOpacity(
                  opacity: contentOpacity[11],
                  duration: Duration(seconds: seconds),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: FittedBox(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 15.0),
                            child: Text(
                              '; eb = r',
                              style: TextStyle(
                                fontSize: MediaQuery.of(context).size.width *
                                    middleWidth,
                              ),
                            ),
                          ),
                          Text(
                            'S',
                            style: TextStyle(
                              fontSize: MediaQuery.of(context).size.width *
                                  middleWidth /
                                  1.5,
                            ),
                          ),
                          Text(
                            '(Eve-Bob)',
                            style: TextStyle(
                              fontSize: MediaQuery.of(context).size.width *
                                  middleWidth /
                                  1.5,
                              color: Colors.red,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15.0),
                            child: Text(
                              ' mod n', // = $r',
                              style: TextStyle(
                                fontSize: MediaQuery.of(context).size.width *
                                    middleWidth,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),

            // S = a^S(Eve-Alice) mod n
            Visibility(
              visible: textVisibility,
              child: Positioned(
                top: (MediaQuery.of(context).size.height -
                        HomePageDHState.returnAppBar[1]) *
                    0.58,
                left: MediaQuery.of(context).size.width * 0.31,
                width: MediaQuery.of(context).size.width * 0.17,
                height: MediaQuery.of(context).size.height * 0.1,
                child: AnimatedOpacity(
                  opacity: contentOpacity[6],
                  duration: Duration(seconds: seconds),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: FittedBox(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 15.0),
                            child: Text(
                              'S1 = a',
                              style: TextStyle(
                                fontSize: MediaQuery.of(context).size.width *
                                    middleWidth,
                              ),
                            ),
                          ),
                          Text(
                            'S',
                            style: TextStyle(
                              fontSize: MediaQuery.of(context).size.width *
                                  middleWidth /
                                  1.5,
                            ),
                          ),
                          Text(
                            '(Eve-Alice)',
                            style: TextStyle(
                              fontSize: MediaQuery.of(context).size.width *
                                  middleWidth /
                                  1.5,
                              color: Colors.red,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15.0),
                            child: Text(
                              ' mod n', // = $r',
                              style: TextStyle(
                                fontSize: MediaQuery.of(context).size.width *
                                    middleWidth,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),

            // S = b^S(Eve-Bob) mod n
            Visibility(
              visible: textVisibility,
              child: Positioned(
                top: (MediaQuery.of(context).size.height -
                        HomePageDHState.returnAppBar[1]) *
                    0.58,
                left: MediaQuery.of(context).size.width * 0.5,
                width: MediaQuery.of(context).size.width * 0.17,
                height: MediaQuery.of(context).size.height * 0.1,
                child: AnimatedOpacity(
                  opacity: contentOpacity[13],
                  duration: Duration(seconds: seconds),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: FittedBox(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 15.0),
                            child: Text(
                              '; S2 = b',
                              style: TextStyle(
                                fontSize: MediaQuery.of(context).size.width *
                                    middleWidth,
                              ),
                            ),
                          ),
                          Text(
                            'S',
                            style: TextStyle(
                              fontSize: MediaQuery.of(context).size.width *
                                  middleWidth /
                                  1.5,
                            ),
                          ),
                          Text(
                            '(Eve-Alice)',
                            style: TextStyle(
                              fontSize: MediaQuery.of(context).size.width *
                                  middleWidth /
                                  1.5,
                              color: Colors.red,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15.0),
                            child: Text(
                              ' mod n', // = $r',
                              style: TextStyle(
                                fontSize: MediaQuery.of(context).size.width *
                                    middleWidth,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),

            // Bob

            // Secret S(Bob)
            Visibility(
              visible: textVisibility,
              child: Positioned(
                top: (MediaQuery.of(context).size.height -
                        HomePageDHState.returnAppBar[1]) *
                    0.35,
                left: MediaQuery.of(context).size.width * 0.71,
                width: MediaQuery.of(context).size.width * 2,
                height: MediaQuery.of(context).size.height * 0.1,
                child: AnimatedOpacity(
                  opacity: contentOpacity[7],
                  duration: Duration(seconds: seconds),
                  child: Wrap(
                    children: [
                      Text(
                        'Secret s',
                        style: TextStyle(
                          fontSize:
                              (MediaQuery.of(context).size.width * middleWidth),
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Container(
                        padding: EdgeInsets.only(top: marginValue),
                        child: Text(
                          '(Bob)',
                          style: TextStyle(
                            fontSize: (MediaQuery.of(context).size.width *
                                    shortWidth) /
                                2,
                            color: Colors.red[800],
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // b = r^S(Bob) mod n
            Visibility(
              visible: textVisibility,
              child: Positioned(
                top: (MediaQuery.of(context).size.height -
                        HomePageDHState.returnAppBar[1]) *
                    0.45,
                left: MediaQuery.of(context).size.width * 0.71,
                width: MediaQuery.of(context).size.width * 0.28,
                height: MediaQuery.of(context).size.height * 0.1,
                child: AnimatedOpacity(
                  opacity: contentOpacity[8],
                  duration: Duration(seconds: seconds),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: FittedBox(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 15.0),
                            child: Text(
                              'b = r',
                              style: TextStyle(
                                fontSize: MediaQuery.of(context).size.width *
                                    middleWidth,
                              ),
                            ),
                          ),
                          Text(
                            'S',
                            style: TextStyle(
                              fontSize: MediaQuery.of(context).size.width *
                                  middleWidth /
                                  1.5,
                            ),
                          ),
                          Text(
                            '(Bob)',
                            style: TextStyle(
                              fontSize: MediaQuery.of(context).size.width *
                                  middleWidth /
                                  1.5,
                              color: Colors.red,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15.0),
                            child: Text(
                              ' mod n', // = $r',
                              style: TextStyle(
                                fontSize: MediaQuery.of(context).size.width *
                                    middleWidth,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),

            // S = ea^S(Bob) mod n
            Visibility(
              visible: textVisibility,
              child: Positioned(
                top: (MediaQuery.of(context).size.height -
                        HomePageDHState.returnAppBar[1]) *
                    0.58,
                left: MediaQuery.of(context).size.width * 0.71,
                width: MediaQuery.of(context).size.width * 0.28,
                height: MediaQuery.of(context).size.height * 0.1,
                child: AnimatedOpacity(
                  opacity: contentOpacity[13],
                  duration: Duration(seconds: seconds),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: FittedBox(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 15.0),
                            child: Text(
                              'S2 = ea',
                              style: TextStyle(
                                fontSize: MediaQuery.of(context).size.width *
                                    middleWidth,
                              ),
                            ),
                          ),
                          Text(
                            'S',
                            style: TextStyle(
                              fontSize: MediaQuery.of(context).size.width *
                                  middleWidth /
                                  1.5,
                            ),
                          ),
                          Text(
                            '(Bob)',
                            style: TextStyle(
                              fontSize: MediaQuery.of(context).size.width *
                                  middleWidth /
                                  1.5,
                              color: Colors.red,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15.0),
                            child: Text(
                              ' mod n', // = $r',
                              style: TextStyle(
                                fontSize: MediaQuery.of(context).size.width *
                                    middleWidth,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),

            // Steps1
            MyPositioned(
              true,
              false,
              false,
              false,
              0.88,
              0.23,
              0.0,
              0.0,
              0.04,
              0.1,
              stepsVisibility[0],
              'assets/steps1.jpeg',
              BoxFit.fill,
              0,
              HomePageDHState.returnAppBar[1],
              1.0,
            ),

            // Steps2
            MyPositioned(
              true,
              false,
              false,
              false,
              0.88,
              0.23,
              0.0,
              0.0,
              0.04,
              0.1,
              stepsVisibility[1],
              'assets/steps2.jpeg',
              BoxFit.fill,
              0,
              HomePageDHState.returnAppBar[1],
              1.0,
            ),

            // description
            Description(desc, text, descVisbility, containerSeconds,
                HomePageDHState.returnAppBar[1]),

            // Right-Button
            Positioned(
              right: MediaQuery.of(context).size.width * 0.01,
              bottom: MediaQuery.of(context).size.height * 0.02,
              width: MediaQuery.of(context).size.width * 0.1,
              height: MediaQuery.of(context).size.height * 0.1,
              child: FloatingActionButton(
                heroTag: "right9",
                onPressed: () => setState(
                  () {
                    if (videoButton == false) {
                      videoTimerSlide4DH.cancel();
                    }
                    videoButton = true;
                    increment();
                  },
                ),
                child: Icon(Icons.arrow_forward,
                    size: MediaQuery.of(context).size.height * 0.06),
              ),
            ),

            // Left-Button
            Positioned(
              left: MediaQuery.of(context).size.width * 0.01,
              bottom: MediaQuery.of(context).size.height * 0.02,
              width: MediaQuery.of(context).size.width * 0.1,
              height: MediaQuery.of(context).size.height * 0.1,
              child: FloatingActionButton(
                heroTag: "left9",
                onPressed: () => setState(
                  () {
                    decrement();
                  },
                ),
                child: Icon(
                  Icons.arrow_back,
                  size: MediaQuery.of(context).size.height * 0.06,
                ),
              ),
            ),

            // Middle-Button
            Positioned(
              left: MediaQuery.of(context).size.width * 0.458,
              bottom: MediaQuery.of(context).size.height * 0.001,
              width: MediaQuery.of(context).size.width * 0.08,
              height: MediaQuery.of(context).size.height * 0.08,
              child: FloatingActionButton(
                heroTag: "middle9",
                onPressed: () => setState(
                  () {
                    isPressedUp = 1;
                    isPressedDown = 2;

                    dropButton = !dropButton;
                    containerSeconds = 2;
                    desc = !desc;
                    timerSlide4DH = Timer(
                      const Duration(seconds: 2),
                      () {
                        setState(
                          () {
                            descVisbility = desc;
                            checkVisibility = 1;
                          },
                        );
                      },
                    );
                  },
                ),
                child: dropButton
                    ? Icon(
                        Icons.arrow_drop_up,
                        size: MediaQuery.of(context).size.height * 0.04,
                      )
                    : Icon(
                        Icons.arrow_drop_down,
                        size: MediaQuery.of(context).size.height * 0.04,
                      ),
              ),
            ),

            // Advanced-Setting-Button

            AnimatedPositioned(
              right: MediaQuery.of(context).size.width * 0.01,
              bottom:
                  MediaQuery.of(context).size.height * advancedSettingsButton,
              width: MediaQuery.of(context).size.width * 0.1,
              height: MediaQuery.of(context).size.height * 0.1,
              duration: Duration(
                  milliseconds: settingsButtonDuration + 200 * backToZero),
              child: FloatingActionButton(
                heroTag: "settings9",
                backgroundColor: Colors.orange,
                onPressed: () {
                  locale = Global.locale;
                  sliderOldValue = Global.slider;
                  valOldValue = Global.val;
                  languageOldValue = Global.selectedLanguage;
                  showDialog<String>(
                    barrierDismissible: false,
                    context: context,
                    builder: (BuildContext context) => SingleChildScrollView(
                      child: AlertDialog(
                        title: Text(
                          // 'Settings'
                          AppLocalizations.of(context)!.settings,
                          textAlign: TextAlign.center,
                        ),
                        content: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // 'Animation-Geschwindigkeit',
                                  Text(
                                    AppLocalizations.of(context)!
                                        .animationSpeed,
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  Text(
                                    // 'Sprache'
                                    AppLocalizations.of(context)!.appLanguage,
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 50,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  StatefulBuilder(
                                    builder: (BuildContext context,
                                        void Function(void Function())
                                            setState) {
                                      return Slider(
                                        value: Global.val.toDouble(),
                                        min: 1.0,
                                        max: 3.0,
                                        divisions: 2,
                                        label: Global.val.toString(),
                                        onChanged: (double newValue) {
                                          setState(
                                            () {
                                              Global.val = newValue.round();

                                              if (Global.val == 1) {
                                                Global.slider = Global.val + 2;
                                                if (!videoButton) {
                                                  videoTimerSlide4DH.cancel();
                                                  videoTimerSlide4DH =
                                                      videoTimerProblem();
                                                }
                                              } else if (Global.val == 3) {
                                                Global.slider = Global.val - 2;
                                                if (!videoButton) {
                                                  videoTimerSlide4DH.cancel();
                                                  videoTimerSlide4DH =
                                                      videoTimerProblem();
                                                }
                                              } else {
                                                Global.slider = Global.val;
                                                if (!videoButton) {
                                                  videoTimerSlide4DH.cancel();
                                                  videoTimerSlide4DH =
                                                      videoTimerProblem();
                                                }
                                              }
                                            },
                                          );
                                        },
                                      );
                                    },
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(left: 18.0),
                                    child: StatefulBuilder(builder:
                                        (BuildContext context,
                                            void Function(void Function())
                                                setState) {
                                      return DropdownButton<String>(
                                        value: Global.selectedLanguage == true
                                            ? Global.languages[0]
                                            : Global.languages[1],
                                        elevation: 16,
                                        style: const TextStyle(
                                            color: Colors.deepPurple),
                                        underline: Container(
                                          height: 2,
                                          color: Colors.deepPurpleAccent,
                                        ),
                                        onChanged: (newValue) {
                                          setState(
                                            () {
                                              dropdownValue = newValue!;
                                              if (dropdownValue ==
                                                  Global.languages[1]) {
                                                Global.selectedLanguage = false;
                                                MyApp.of(context)!.setLocale(
                                                    const Locale.fromSubtags(
                                                        languageCode: 'en'));
                                                Global.locale = 'en';
                                              } else {
                                                Global.selectedLanguage = true;
                                                MyApp.of(context)!.setLocale(
                                                    const Locale.fromSubtags(
                                                        languageCode: 'de'));
                                                Global.locale = 'de';
                                              }
                                            },
                                          );
                                          Provider.of<LanguageProvider>(context,
                                                  listen: false)
                                              .changeLanguage(1);
                                        },
                                        items: Global.languages
                                            .map<DropdownMenuItem<String>>(
                                          (String value) {
                                            return DropdownMenuItem<String>(
                                              value: value,
                                              child: Text(value),
                                            );
                                          },
                                        ).toList(),
                                      );
                                    }),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context, 'OK');
                            },
                            child: const Text('OK'),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context, 'Cancel');
                              setState(() {
                                Global.slider = sliderOldValue;
                                Global.val = valOldValue;
                                Global.selectedLanguage = languageOldValue;
                                Global.locale = locale;
                                MyApp.of(context)!.setLocale(
                                    Locale.fromSubtags(languageCode: locale));
                              });
                            },
                            child: Text(AppLocalizations.of(context)!.cancel),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                child: Icon(Icons.settings,
                    size: MediaQuery.of(context).size.height * 0.045),
              ),
            ),

            // Video-Stop-Button

            AnimatedPositioned(
              right: MediaQuery.of(context).size.width * 0.01,
              bottom: MediaQuery.of(context).size.height * settingsStopButton,
              width: MediaQuery.of(context).size.width * 0.1,
              height: MediaQuery.of(context).size.height * 0.1,
              duration: Duration(
                  milliseconds: settingsButtonDuration + 100 * backToZero),
              child: FloatingActionButton(
                heroTag: "stop9",
                backgroundColor: Colors.red,
                onPressed: () => setState(
                  () {
                    isCanceled = false;
                    secretBobOldVal = 0;
                    scretAliceOldVal = 0;
                    sliderOldValue = 0;
                    valOldValue = 0;
                    Global.slider = 3;
                    Global.val = 1;
                    Global.replacedSliderValue = Global.slider;
                    indexVisibilitySlide4DH = -1;
                    checkVisibility = 0;
                    dropdownValue = 'Deutsch';
                    backToZero = 0;
                    checkSettingsDuration = 0;
                    isSettingsPressed = 0;
                    settingsButtonDuration = 0;
                    descIndex = -1;
                    containerSeconds = 0;
                    isPressedUp = 0;
                    isPressedDown = 0;
                    timerProblem = 0;
                    stepsVisibility = [true, false];
                    seconds = Global.slider;
                    dropButton = false;
                    desc = true;
                    descVisbility = desc;
                    text = '';
                    videoButton = true;
                    delayTimer.cancel();
                    videoTimerVariable.cancel();
                    timerSlide4DH.cancel();
                    videoTimerSlide4DH.cancel();

                    contentOpacity = [
                      0.0,
                      0.0,
                      0.0,
                      0.0,
                      0.0,
                      0.0,
                      0.0,
                      0.0,
                      0.0,
                      0.0,
                      0.0,
                      0.0,
                      0.0,
                      0.0,
                      0.0,
                    ];
                    textVisibility = false;
                    delayTimer = Timer(const Duration(milliseconds: 50), () {
                      setState(() {
                        textVisibility = true;
                        Global.slider = Global.replacedSliderValue;
                        seconds = Global.slider;
                        delayTimer.cancel();
                      });
                    });
                  },
                ),
                child: Icon(Icons.restart_alt_rounded,
                    size: MediaQuery.of(context).size.height * 0.06),
              ),
            ),

            // Video-Play-Button

            AnimatedPositioned(
              right: MediaQuery.of(context).size.width * 0.01,
              bottom: MediaQuery.of(context).size.height * settingsVideoButton,
              width: MediaQuery.of(context).size.width * 0.1,
              height: MediaQuery.of(context).size.height * 0.1,
              duration: Duration(milliseconds: settingsButtonDuration),
              child: FloatingActionButton(
                heroTag: "play9",
                backgroundColor: Colors.green,
                onPressed: () => setState(
                  () {
                    desc = true;
                    descVisbility = desc;
                    dropButton = false;
                    videoButton = !videoButton;
                    if (!videoButton) {
                      videoTimerSlide4DH = videoTimerProblem();
                    } else {
                      videoTimerSlide4DH.cancel();
                    }
                  },
                ),
                child: videoButton
                    ? Icon(Icons.play_arrow,
                        size: MediaQuery.of(context).size.height * 0.06)
                    : Icon(Icons.pause,
                        size: MediaQuery.of(context).size.height * 0.06),
              ),
            ),

            // More-Button

            Positioned(
              right: MediaQuery.of(context).size.width * 0.01,
              bottom: MediaQuery.of(context).size.height * 0.13,
              width: MediaQuery.of(context).size.width * 0.1,
              height: MediaQuery.of(context).size.height * 0.1,
              child: FloatingActionButton(
                heroTag: "more9",
                onPressed: () => setState(
                  () {
                    isSettingsPressed = 1;
                    settingButton = !settingButton;
                    if (!settingButton) {
                      settingsStopButton = 0.35;
                      settingsVideoButton = 0.24;
                      advancedSettingsButton = 0.46;
                      settingsButtonDuration = 100;
                      backToZero = 1;
                    } else {
                      settingsStopButton = 0.13;
                      settingsVideoButton = 0.13;
                      advancedSettingsButton = 0.13;
                      settingsButtonDuration = 100;
                      backToZero = 1;
                    }

                    timerSlide4DH = Timer(
                      const Duration(milliseconds: 100),
                      () {
                        setState(
                          () {
                            checkSettingsDuration = 1;
                          },
                        );
                      },
                    );
                  },
                ),
                child: settingButton
                    ? Icon(Icons.more_vert,
                        size: MediaQuery.of(context).size.height * 0.05)
                    : Icon(Icons.close,
                        size: MediaQuery.of(context).size.height * 0.05),
              ),
            ),

            // Page-number
            Positioned(
              bottom: (MediaQuery.of(context).size.height -
                      HomePageDHState.returnAppBar[1]) *
                  0.03,
              right: MediaQuery.of(context).size.width * 0.12,
              width: MediaQuery.of(context).size.width * 0.1,
              height: (MediaQuery.of(context).size.height -
                      HomePageDHState.returnAppBar[1]) *
                  0.1,
              child: Center(
                child: FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Text(
                    '4: ${indexVisibilitySlide4DH + 1} / 15',
                    style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
