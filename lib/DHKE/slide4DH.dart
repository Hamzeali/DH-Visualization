// ignore_for_file: file_names

import 'dart:async';

import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

import '../main.dart';
// ignore: implementation_imports
import 'package:provider/src/provider.dart';
import 'home-page-DH.dart';
import 'description-widget.dart';
import 'positioned-widget.dart';
import 'package:flutter/material.dart';
import '../Main/language-provider.dart';
import '../Main/global.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Slide4DH extends StatefulWidget {
  const Slide4DH({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  Slide4DHState createState() => Slide4DHState();
}

final scrollController = ScrollController();
List isLastIndex = [false, true];
bool scaleEnabledOldVal = false;
bool switchOldValue = false;
bool isCanceled = false;
int secretBobOldVal = 0;
int scretAliceOldVal = 0;
var sliderOldValue = 0;
var valOldValue = 0;
String locale = 'de';
bool languageOldValue = true;
bool textVisibility = true;
int indexVisibilitySlide4DH = -1;
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
Timer pageNumberTimer = Timer(Duration(seconds: seconds), () {});
Timer timerSlide4DH = Timer(const Duration(seconds: 1), () {});
Timer videoTimerSlide4DH =
    Timer.periodic(Duration(seconds: Global.slider), (videoTimer) {});

TextEditingController pageController4 = TextEditingController()
  ..text = (indexVisibilitySlide4DH + 1).toString();

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

class Slide4DHState extends State<Slide4DH>
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
    isLastIndex = [false, true];
    indexVisibilitySlide4DH = -1;
    pageController4 = TextEditingController()..text = (0).toString();
    checkVisibility = 0;
    delay = true;
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
    pageNumberTimer.cancel();
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
        return AppLocalizations.of(ctx)!.slide4Item15;
    }
  }

  void increment() {
    seconds = Global.slider;
    if (indexVisibilitySlide4DH == 14) {
      openDialog(false);
      videoTimerVariable.cancel();
    }
    if (indexVisibilitySlide4DH < 14) {
      indexVisibilitySlide4DH++;
      pageController4 = TextEditingController()
        ..text = (indexVisibilitySlide4DH + 1).toString();
      stepsVisibility[0] = !stepsVisibility[0];
      stepsVisibility[1] = !stepsVisibility[1];
      if (indexVisibilitySlide4DH != 14) {
        contentOpacity[indexVisibilitySlide4DH] = 1.0;
      }
      if (indexVisibilitySlide4DH == 0) {
        isLastIndex[1] = false;
      }
      if (indexVisibilitySlide4DH == 14) {
        isLastIndex[0] = true;
      }
    }
  }

  void decrement() {
    if (videoButton == false) {
      videoTimerSlide4DH.cancel();
    }
    videoButton = true;

    seconds = Global.slider;

    if (indexVisibilitySlide4DH == -1) {
      openDialog(true);
    }
    if (indexVisibilitySlide4DH == 0) {
      text = '';
      isLastIndex[1] = true;
    }
    if (indexVisibilitySlide4DH == 14) {
      isLastIndex[0] = false;
    }

    if (indexVisibilitySlide4DH >= 0) {
      stepsVisibility[0] = !stepsVisibility[0];
      stepsVisibility[1] = !stepsVisibility[1];
      if (indexVisibilitySlide4DH != 14) {
        contentOpacity[indexVisibilitySlide4DH] = 0.0;
      }
      indexVisibilitySlide4DH--;
      pageController4 = TextEditingController()
        ..text = (indexVisibilitySlide4DH + 1).toString();
    }
  }

  Timer selectPageNumber(int a) {
    // stopFunction();
    pageNumberTimer = Timer.periodic(
      const Duration(seconds: 0),
      (Timer pageNumberTimer) {
        setState(
          () {
            seconds = 0;
            if (indexVisibilitySlide4DH == a) {
              pageNumberTimer.cancel();
            }
            if (indexVisibilitySlide4DH < a) {
              indexVisibilitySlide4DH++;
              pageController4 = TextEditingController()
                ..text = (indexVisibilitySlide4DH + 1).toString();
              stepsVisibility[0] = !stepsVisibility[0];
              stepsVisibility[1] = !stepsVisibility[1];
              if (indexVisibilitySlide4DH != a) {
                contentOpacity[indexVisibilitySlide4DH] = 1.0;
              }
              if (indexVisibilitySlide4DH == 0) {
                isLastIndex[1] = false;
              }
              if (indexVisibilitySlide4DH == 14) {
                isLastIndex[0] = true;
              }
            }
          },
        );
      },
    );
    return pageNumberTimer;
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
      height: (MediaQuery.of(context).size.height -
              HomePageDHState.returnAppBar[1]) *
          height,
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
        height: (MediaQuery.of(context).size.height -
                HomePageDHState.returnAppBar[1]) *
            height,
        child: AnimatedOpacity(
          opacity: opacity,
          duration: Duration(seconds: seconds),
          child: FittedBox(
            child: Align(
              alignment: align,
              child: Text(
                text,
                style: const TextStyle(
                  fontStyle: FontStyle.italic,
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

    if (MediaQuery.of(context).size.width < 1000) {
      shortWidth = 0.025;
    } else {
      shortWidth = 0.02;
    }
    if (MediaQuery.of(context).size.width < 700) {
    } else {}
    if (MediaQuery.of(context).size.width > 1000 &&
        MediaQuery.of(context).size.height < 400) {
    } else if (MediaQuery.of(context).size.width < 1000 &&
        MediaQuery.of(context).size.height < 400) {
    } else if (MediaQuery.of(context).size.width < 1000 &&
        MediaQuery.of(context).size.height > 400) {}

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
      scaleEnabled: Global.scaleEnabled,
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

            // Upper-Text
            Positioned(
              top: (MediaQuery.of(context).size.height -
                      HomePageDHState.returnAppBar[1]) *
                  0.03,
              right: MediaQuery.of(context).size.width * 0.1,
              width: MediaQuery.of(context).size.width * 0.85,
              height: (MediaQuery.of(context).size.height -
                      HomePageDHState.returnAppBar[1]) *
                  0.06,
              child: Align(
                alignment: Alignment.topLeft,
                child: FittedBox(
                  child: Text(
                    AppLocalizations.of(context)!.text4,
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.016,
                    ),
                  ),
                ),
              ),
            ),

            // Alice-Line
            linePosition(0.3, 0.02, 0.002, 0.33),

            // Bob-Line
            linePosition(0.3, 0.98, 0.002, 0.33),

            // Eve-Alice Line
            linePosition(0.3, 0.3, 0.002, 0.33),

            // Eve-Bob Line
            linePosition(0.3, 0.7, 0.002, 0.33),

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

            // 'A' exchange between Alice and Eve
            texVisibility(textVisibility, 0.05, 0.35, 0.01, 0.1,
                contentOpacity[2], Alignment.topLeft, 'A', shortWidth),

            // 'EA' exchange between Alice and Eve
            texVisibility(textVisibility, 0.18, 0.35, 0.02, 0.1,
                contentOpacity[5], Alignment.topLeft, 'EA', shortWidth),

            // 'B' exchange between Bob and Eve
            texVisibility(textVisibility, 0.05, 0.67, 0.01, 0.1,
                contentOpacity[9], Alignment.topLeft, 'B', shortWidth),

            // 'EB' exchange between Bob and Eve
            texVisibility(textVisibility, 0.18, 0.67, 0.02, 0.1,
                contentOpacity[12], Alignment.topLeft, 'EB', shortWidth),

            //Alic part

            // Secret a
            Visibility(
              visible: textVisibility,
              child: Positioned(
                top: (MediaQuery.of(context).size.height -
                        HomePageDHState.returnAppBar[1]) *
                    0.35,
                left: MediaQuery.of(context).size.width * 0.05,
                width: MediaQuery.of(context).size.width * 0.1,
                height: (MediaQuery.of(context).size.height -
                        HomePageDHState.returnAppBar[1]) *
                    0.08,
                child: AnimatedOpacity(
                  opacity: contentOpacity[0],
                  duration: Duration(seconds: seconds),
                  child: FittedBox(
                    child: Wrap(
                      children: [
                        Text(
                          // 'Secret ',
                          AppLocalizations.of(context)!.secret,
                          style: const TextStyle(
                            fontStyle: FontStyle.italic,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        RichText(
                          text: const TextSpan(
                            style: TextStyle(
                              color: Colors.black,
                            ),
                            children: [
                              TextSpan(
                                text: 'a',
                                style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                  color: Colors.red,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            // A = g^a mod p
            Visibility(
              visible: textVisibility,
              child: Positioned(
                top: (MediaQuery.of(context).size.height -
                        HomePageDHState.returnAppBar[1]) *
                    0.45,
                left: MediaQuery.of(context).size.width * 0.05,
                width: MediaQuery.of(context).size.width * 0.11,
                height: (MediaQuery.of(context).size.height -
                        HomePageDHState.returnAppBar[1]) *
                    0.08,
                child: AnimatedOpacity(
                  opacity: contentOpacity[1],
                  duration: Duration(seconds: seconds),
                  child: FittedBox(
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: RichText(
                        text: TextSpan(
                          children: [
                            const TextSpan(
                              text: 'A = g',
                              style: TextStyle(
                                fontStyle: FontStyle.italic,
                                color: Colors.black,
                              ),
                            ),
                            WidgetSpan(
                              child: Transform.translate(
                                offset: const Offset(0, -4),
                                child: RichText(
                                  text: const TextSpan(
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: 'a',
                                        style: TextStyle(
                                          fontStyle: FontStyle.italic,
                                          color: Colors.red,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            const TextSpan(
                              text: ' mod p',
                              style: TextStyle(
                                fontStyle: FontStyle.italic,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            // S1 = EA^a mod p
            Visibility(
              visible: textVisibility,
              child: Positioned(
                top: (MediaQuery.of(context).size.height -
                        HomePageDHState.returnAppBar[1]) *
                    0.55,
                left: MediaQuery.of(context).size.width * 0.05,
                width: MediaQuery.of(context).size.width * 0.13,
                height: (MediaQuery.of(context).size.height -
                        HomePageDHState.returnAppBar[1]) *
                    0.08,
                child: AnimatedOpacity(
                  opacity: contentOpacity[6],
                  duration: Duration(seconds: seconds),
                  child: FittedBox(
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: RichText(
                        text: TextSpan(
                          children: [
                            const TextSpan(
                              text: 'S',
                              style: TextStyle(
                                fontStyle: FontStyle.italic,
                                color: Colors.black,
                              ),
                            ),
                            WidgetSpan(
                              child: Transform.translate(
                                offset: const Offset(0, 4),
                                child: const Text(
                                  '1',
                                  textScaleFactor: 0.8,
                                  style: TextStyle(
                                      fontStyle: FontStyle.italic,
                                      color: Colors.black),
                                ),
                              ),
                            ),
                            const TextSpan(
                              text: ' = EA',
                              style: TextStyle(
                                fontStyle: FontStyle.italic,
                                color: Colors.black,
                              ),
                            ),
                            WidgetSpan(
                              child: Transform.translate(
                                offset: const Offset(0, -5),
                                child: RichText(
                                  text: const TextSpan(
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: 'a',
                                        style: TextStyle(
                                          fontStyle: FontStyle.italic,
                                          color: Colors.red,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            const TextSpan(
                              text: ' mod p',
                              style: TextStyle(
                                fontStyle: FontStyle.italic,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            // Eve part

            // Secret e1
            Visibility(
              visible: textVisibility,
              child: Positioned(
                top: (MediaQuery.of(context).size.height -
                        HomePageDHState.returnAppBar[1]) *
                    0.35,
                left: MediaQuery.of(context).size.width * 0.31,
                width: MediaQuery.of(context).size.width * 0.1,
                height: (MediaQuery.of(context).size.height -
                        HomePageDHState.returnAppBar[1]) *
                    0.08,
                child: AnimatedOpacity(
                  opacity: contentOpacity[3],
                  duration: Duration(seconds: seconds),
                  child: FittedBox(
                    child: Wrap(
                      children: [
                        Text(
                          // 'Secret ',
                          AppLocalizations.of(context)!.secret,
                          style: const TextStyle(
                            fontStyle: FontStyle.italic,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        RichText(
                          text: TextSpan(
                            style: const TextStyle(
                              color: Colors.black,
                            ),
                            children: [
                              const TextSpan(
                                text: 'e',
                                style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                  color: Colors.red,
                                ),
                              ),
                              WidgetSpan(
                                child: Transform.translate(
                                  offset: const Offset(0, 4),
                                  child: const Text(
                                    '1',
                                    textScaleFactor: 0.8,
                                    style: TextStyle(
                                        fontStyle: FontStyle.italic,
                                        color: Colors.red),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            // Secret e2
            Visibility(
              visible: textVisibility,
              child: Positioned(
                top: (MediaQuery.of(context).size.height -
                        HomePageDHState.returnAppBar[1]) *
                    0.35,
                left: MediaQuery.of(context).size.width * 0.5,
                width: MediaQuery.of(context).size.width * 0.1,
                height: (MediaQuery.of(context).size.height -
                        HomePageDHState.returnAppBar[1]) *
                    0.08,
                child: AnimatedOpacity(
                  opacity: contentOpacity[10],
                  duration: Duration(seconds: seconds),
                  child: FittedBox(
                    child: Wrap(
                      children: [
                        Text(
                          // 'Secret ',
                          AppLocalizations.of(context)!.secret,
                          style: const TextStyle(
                            fontStyle: FontStyle.italic,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        RichText(
                          text: TextSpan(
                            style: const TextStyle(
                              color: Colors.black,
                            ),
                            children: [
                              const TextSpan(
                                text: 'e',
                                style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                  color: Colors.red,
                                ),
                              ),
                              WidgetSpan(
                                child: Transform.translate(
                                  offset: const Offset(0, 4),
                                  child: const Text(
                                    '2',
                                    textScaleFactor: 0.8,
                                    style: TextStyle(
                                        fontStyle: FontStyle.italic,
                                        color: Colors.red),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            // EA = g^e1 mod p
            Visibility(
              visible: textVisibility,
              child: Positioned(
                top: (MediaQuery.of(context).size.height -
                        HomePageDHState.returnAppBar[1]) *
                    0.45,
                left: MediaQuery.of(context).size.width * 0.31,
                width: MediaQuery.of(context).size.width * 0.12,
                height: (MediaQuery.of(context).size.height -
                        HomePageDHState.returnAppBar[1]) *
                    0.08,
                child: AnimatedOpacity(
                  opacity: contentOpacity[4],
                  duration: Duration(seconds: seconds),
                  child: FittedBox(
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: RichText(
                        text: TextSpan(
                          children: [
                            const TextSpan(
                              text: 'EA = g',
                              style: TextStyle(
                                fontStyle: FontStyle.italic,
                                color: Colors.black,
                              ),
                            ),
                            WidgetSpan(
                              child: Transform.translate(
                                offset: const Offset(0, -6),
                                child: RichText(
                                  text: TextSpan(
                                    style: const TextStyle(
                                      color: Colors.black,
                                    ),
                                    children: [
                                      const TextSpan(
                                        text: 'e',
                                        style: TextStyle(
                                          fontStyle: FontStyle.italic,
                                          color: Colors.red,
                                        ),
                                      ),
                                      WidgetSpan(
                                        child: Transform.translate(
                                          offset: const Offset(0, 4),
                                          child: const Text(
                                            '1',
                                            textScaleFactor: 0.8,
                                            style: TextStyle(
                                                fontStyle: FontStyle.italic,
                                                color: Colors.red),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            const TextSpan(
                              text: ' mod p',
                              style: TextStyle(
                                fontStyle: FontStyle.italic,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            // EB = g^e2 mod p
            Visibility(
              visible: textVisibility,
              child: Positioned(
                top: (MediaQuery.of(context).size.height -
                        HomePageDHState.returnAppBar[1]) *
                    0.45,
                left: MediaQuery.of(context).size.width * 0.5,
                width: MediaQuery.of(context).size.width * 0.12,
                height: (MediaQuery.of(context).size.height -
                        HomePageDHState.returnAppBar[1]) *
                    0.08,
                child: AnimatedOpacity(
                  opacity: contentOpacity[11],
                  duration: Duration(seconds: seconds),
                  child: FittedBox(
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: RichText(
                        text: TextSpan(
                          children: [
                            const TextSpan(
                              text: 'EB = g',
                              style: TextStyle(
                                fontStyle: FontStyle.italic,
                                color: Colors.black,
                              ),
                            ),
                            WidgetSpan(
                              child: Transform.translate(
                                offset: const Offset(0, -6),
                                child: RichText(
                                  text: TextSpan(
                                    style: const TextStyle(
                                      color: Colors.black,
                                    ),
                                    children: [
                                      const TextSpan(
                                        text: 'e',
                                        style: TextStyle(
                                          fontStyle: FontStyle.italic,
                                          color: Colors.red,
                                        ),
                                      ),
                                      WidgetSpan(
                                        child: Transform.translate(
                                          offset: const Offset(0, 4),
                                          child: const Text(
                                            '2',
                                            textScaleFactor: 0.8,
                                            style: TextStyle(
                                                fontStyle: FontStyle.italic,
                                                color: Colors.red),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            const TextSpan(
                              text: ' mod p',
                              style: TextStyle(
                                fontStyle: FontStyle.italic,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            // S1 = A^e1 mod p
            Visibility(
              visible: textVisibility,
              child: Positioned(
                top: (MediaQuery.of(context).size.height -
                        HomePageDHState.returnAppBar[1]) *
                    0.55,
                left: MediaQuery.of(context).size.width * 0.31,
                width: MediaQuery.of(context).size.width * 0.12,
                height: (MediaQuery.of(context).size.height -
                        HomePageDHState.returnAppBar[1]) *
                    0.08,
                child: AnimatedOpacity(
                  opacity: contentOpacity[6],
                  duration: Duration(seconds: seconds),
                  child: FittedBox(
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: RichText(
                        text: TextSpan(
                          children: [
                            const TextSpan(
                              text: 'S',
                              style: TextStyle(
                                fontStyle: FontStyle.italic,
                                color: Colors.black,
                              ),
                            ),
                            WidgetSpan(
                              child: Transform.translate(
                                offset: const Offset(0, 4),
                                child: const Text(
                                  '1',
                                  textScaleFactor: 0.8,
                                  style: TextStyle(
                                      fontStyle: FontStyle.italic,
                                      color: Colors.black),
                                ),
                              ),
                            ),
                            const TextSpan(
                              text: ' = A',
                              style: TextStyle(
                                fontStyle: FontStyle.italic,
                                color: Colors.black,
                              ),
                            ),
                            WidgetSpan(
                              child: Transform.translate(
                                offset: const Offset(0, -6),
                                child: RichText(
                                  text: TextSpan(
                                    style: const TextStyle(
                                      color: Colors.black,
                                    ),
                                    children: [
                                      const TextSpan(
                                        text: 'e',
                                        style: TextStyle(
                                          fontStyle: FontStyle.italic,
                                          color: Colors.red,
                                        ),
                                      ),
                                      WidgetSpan(
                                        child: Transform.translate(
                                          offset: const Offset(0, 4),
                                          child: const Text(
                                            '1',
                                            textScaleFactor: 0.8,
                                            style: TextStyle(
                                                fontStyle: FontStyle.italic,
                                                color: Colors.red),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            const TextSpan(
                              text: ' mod p',
                              style: TextStyle(
                                fontStyle: FontStyle.italic,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            // S2 = B^e2 mod p
            Visibility(
              visible: textVisibility,
              child: Positioned(
                top: (MediaQuery.of(context).size.height -
                        HomePageDHState.returnAppBar[1]) *
                    0.55,
                left: MediaQuery.of(context).size.width * 0.5,
                width: MediaQuery.of(context).size.width * 0.12,
                height: (MediaQuery.of(context).size.height -
                        HomePageDHState.returnAppBar[1]) *
                    0.08,
                child: AnimatedOpacity(
                  opacity: contentOpacity[13],
                  duration: Duration(seconds: seconds),
                  child: FittedBox(
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: RichText(
                        text: TextSpan(
                          children: [
                            const TextSpan(
                              text: 'S',
                              style: TextStyle(
                                fontStyle: FontStyle.italic,
                                color: Colors.black,
                              ),
                            ),
                            WidgetSpan(
                              child: Transform.translate(
                                offset: const Offset(0, 4),
                                child: const Text(
                                  '2',
                                  textScaleFactor: 0.8,
                                  style: TextStyle(
                                      fontStyle: FontStyle.italic,
                                      color: Colors.black),
                                ),
                              ),
                            ),
                            const TextSpan(
                              text: ' = B',
                              style: TextStyle(
                                fontStyle: FontStyle.italic,
                                color: Colors.black,
                              ),
                            ),
                            WidgetSpan(
                              child: Transform.translate(
                                offset: const Offset(0, -6),
                                child: RichText(
                                  text: TextSpan(
                                    style: const TextStyle(
                                      color: Colors.black,
                                    ),
                                    children: [
                                      const TextSpan(
                                        text: 'e',
                                        style: TextStyle(
                                          fontStyle: FontStyle.italic,
                                          color: Colors.red,
                                        ),
                                      ),
                                      WidgetSpan(
                                        child: Transform.translate(
                                          offset: const Offset(0, 4),
                                          child: const Text(
                                            '2',
                                            textScaleFactor: 0.8,
                                            style: TextStyle(
                                                fontStyle: FontStyle.italic,
                                                color: Colors.red),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            const TextSpan(
                              text: ' mod p',
                              style: TextStyle(
                                fontStyle: FontStyle.italic,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            // Bob part

            // Secret b
            Visibility(
              visible: textVisibility,
              child: Positioned(
                top: (MediaQuery.of(context).size.height -
                        HomePageDHState.returnAppBar[1]) *
                    0.35,
                left: MediaQuery.of(context).size.width * 0.71,
                width: MediaQuery.of(context).size.width * 0.1,
                height: (MediaQuery.of(context).size.height -
                        HomePageDHState.returnAppBar[1]) *
                    0.08,
                child: AnimatedOpacity(
                  opacity: contentOpacity[7],
                  duration: Duration(seconds: seconds),
                  child: FittedBox(
                    child: Wrap(
                      children: [
                        Text(
                          // 'Secret ',
                          AppLocalizations.of(context)!.secret,
                          style: const TextStyle(
                            fontStyle: FontStyle.italic,
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        RichText(
                          text: const TextSpan(
                            style: TextStyle(
                              color: Colors.black,
                            ),
                            children: [
                              TextSpan(
                                text: 'b',
                                style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                  color: Colors.red,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            // B = g^b mod p
            Visibility(
              visible: textVisibility,
              child: Positioned(
                top: (MediaQuery.of(context).size.height -
                        HomePageDHState.returnAppBar[1]) *
                    0.45,
                left: MediaQuery.of(context).size.width * 0.71,
                width: MediaQuery.of(context).size.width * 0.11,
                height: (MediaQuery.of(context).size.height -
                        HomePageDHState.returnAppBar[1]) *
                    0.08,
                child: AnimatedOpacity(
                  opacity: contentOpacity[8],
                  duration: Duration(seconds: seconds),
                  child: FittedBox(
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: RichText(
                        text: TextSpan(
                          children: [
                            const TextSpan(
                              text: 'B = g',
                              style: TextStyle(
                                fontStyle: FontStyle.italic,
                                color: Colors.black,
                              ),
                            ),
                            WidgetSpan(
                              child: Transform.translate(
                                offset: const Offset(0, -4),
                                child: RichText(
                                  text: const TextSpan(
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: 'b',
                                        style: TextStyle(
                                          fontStyle: FontStyle.italic,
                                          color: Colors.red,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            const TextSpan(
                              text: ' mod p',
                              style: TextStyle(
                                fontStyle: FontStyle.italic,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            // S2 = EB^b mod p
            Visibility(
              visible: textVisibility,
              child: Positioned(
                top: (MediaQuery.of(context).size.height -
                        HomePageDHState.returnAppBar[1]) *
                    0.55,
                left: MediaQuery.of(context).size.width * 0.71,
                width: MediaQuery.of(context).size.width * 0.13,
                height: (MediaQuery.of(context).size.height -
                        HomePageDHState.returnAppBar[1]) *
                    0.08,
                child: AnimatedOpacity(
                  opacity: contentOpacity[13],
                  duration: Duration(seconds: seconds),
                  child: FittedBox(
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: RichText(
                        text: TextSpan(
                          children: [
                            const TextSpan(
                              text: 'S',
                              style: TextStyle(
                                fontStyle: FontStyle.italic,
                                color: Colors.black,
                              ),
                            ),
                            WidgetSpan(
                              child: Transform.translate(
                                offset: const Offset(0, 4),
                                child: const Text(
                                  '2',
                                  textScaleFactor: 0.8,
                                  style: TextStyle(
                                      fontStyle: FontStyle.italic,
                                      color: Colors.black),
                                ),
                              ),
                            ),
                            const TextSpan(
                              text: ' = EB',
                              style: TextStyle(
                                fontStyle: FontStyle.italic,
                                color: Colors.black,
                              ),
                            ),
                            WidgetSpan(
                              child: Transform.translate(
                                offset: const Offset(0, -5),
                                child: RichText(
                                  text: const TextSpan(
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: 'b',
                                        style: TextStyle(
                                          fontStyle: FontStyle.italic,
                                          color: Colors.red,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            const TextSpan(
                              text: ' mod p',
                              style: TextStyle(
                                fontStyle: FontStyle.italic,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
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
                HomePageDHState.returnAppBar[1], false),

            // Right-Button
            Positioned(
              right: MediaQuery.of(context).size.width * 0.01,
              bottom: MediaQuery.of(context).size.height * 0.02,
              width: MediaQuery.of(context).size.width * 0.1,
              height: MediaQuery.of(context).size.height * 0.1,
              child: FloatingActionButton(
                tooltip: AppLocalizations.of(context)!.toolTipRightBtn,
                backgroundColor: isLastIndex[0] ? Colors.grey : Colors.blue,
                heroTag: "right9",
                onPressed: () {
                  setState(
                    () {
                      if (videoButton == false) {
                        videoTimerSlide4DH.cancel();
                      }
                      videoButton = true;
                      increment();
                    },
                  );
                },
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
                tooltip: AppLocalizations.of(context)!.toolTipLeftBtn,
                backgroundColor: isLastIndex[1] ? Colors.grey : Colors.blue,
                heroTag: "left9",
                onPressed: () {
                  setState(
                    () {
                      decrement();
                    },
                  );
                },
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
                tooltip: AppLocalizations.of(context)!.toolTipDescBtn,
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
                tooltip: AppLocalizations.of(context)!.toolTipSettingsBtn,
                heroTag: "settings9",
                backgroundColor: Colors.orange,
                onPressed: () {
                  scaleEnabledOldVal = Global.scaleEnabled;
                  switchOldValue = Global.switchValue;
                  locale = Global.locale;
                  sliderOldValue = Global.slider;
                  valOldValue = Global.val;
                  languageOldValue = Global.selectedLanguage;
                  showDialog<String>(
                    barrierDismissible: false,
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      scrollable: true,
                      shape: const RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(32.0))),
                      title: Text(
                        // 'Settings'
                        AppLocalizations.of(context)!.settings,
                        textAlign: TextAlign.center,
                      ),
                      content: SizedBox(
                        height: 300.0,
                        width: 500.0,
                        child: RawScrollbar(
                          controller: scrollController,
                          thumbColor: Colors.blue,
                          radius: const Radius.circular(20),
                          thickness: 5,
                          child: ListView(
                            controller: scrollController,
                            shrinkWrap: true,
                            children: <Widget>[
                              const SizedBox(height: 20),
                              _buildRow(
                                AppLocalizations.of(context)!.animationSpeed,
                                StatefulBuilder(
                                  builder: (BuildContext context,
                                      void Function(void Function()) setState) {
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
                                false,
                              ),
                              _buildRow(
                                AppLocalizations.of(context)!.appLanguage,
                                Container(
                                  margin: const EdgeInsets.only(left: 18.0),
                                  child: StatefulBuilder(
                                    builder: (BuildContext context,
                                        void Function(void Function())
                                            setState) {
                                      return DropdownButton<String>(
                                        value: Global.selectedLanguage == true
                                            ? Global.languages[0]
                                            : Global.languages[1],
                                        elevation: 16,
                                        style: const TextStyle(
                                          color: Colors.blue,
                                        ),
                                        underline: Container(
                                          height: 2,
                                          color: Colors.blueAccent,
                                        ),
                                        onChanged: (newValue) {
                                          setState(
                                            () {
                                              dropdownValue = newValue!;
                                              if (dropdownValue ==
                                                  Global.languages[1]) {
                                                Global.selectedLanguage = false;
                                                DHKEVis.of(context)!.setLocale(
                                                    const Locale.fromSubtags(
                                                        languageCode: 'en'));
                                                Global.locale = 'en';
                                              } else {
                                                Global.selectedLanguage = true;
                                                DHKEVis.of(context)!.setLocale(
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
                                    },
                                  ),
                                ),
                                false,
                              ),
                              _buildRow(
                                AppLocalizations.of(context)!.zoomEnable,
                                StatefulBuilder(
                                  builder: (BuildContext context,
                                      void Function(void Function()) setState) {
                                    return CupertinoSwitch(
                                      value: Global.switchValue,
                                      onChanged: (value) {
                                        setState(() {
                                          Global.switchValue = value;
                                          Global.scaleEnabled =
                                              Global.switchValue;
                                        });
                                      },
                                    );
                                  },
                                ),
                                true,
                              ),
                            ],
                          ),
                        ),
                      ),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context, 'OK');
                            setState(() {});
                          },
                          child: const Text('OK'),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context, 'Cancel');
                            setState(() {
                              Global.switchValue = switchOldValue;
                              Global.scaleEnabled = scaleEnabledOldVal;
                              Global.slider = sliderOldValue;
                              Global.val = valOldValue;
                              Global.selectedLanguage = languageOldValue;
                              Global.locale = locale;
                              DHKEVis.of(context)!.setLocale(
                                  Locale.fromSubtags(languageCode: locale));
                            });
                          },
                          child: Text(AppLocalizations.of(context)!.cancel),
                        ),
                      ],
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
                tooltip: AppLocalizations.of(context)!.toolTipResetBtn,
                heroTag: "stop9",
                backgroundColor: Colors.red,
                onPressed: () => setState(
                  () {
                    isLastIndex = [false, true];
                    isCanceled = false;
                    secretBobOldVal = 0;
                    scretAliceOldVal = 0;
                    sliderOldValue = 0;
                    valOldValue = 0;
                    Global.slider = 3;
                    Global.val = 1;
                    Global.replacedSliderValue = Global.slider;
                    indexVisibilitySlide4DH = -1;
                    pageController4 = TextEditingController()
                      ..text = (0).toString();
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
                    pageNumberTimer.cancel();

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
                tooltip: AppLocalizations.of(context)!.toolTipPlayBtn,
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
                  child: TextButton(
                      onPressed: () {
                        numberPageDialog();
                      },
                      child: Text(
                        '${indexVisibilitySlide4DH + 1} / 15',
                        style: const TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRow(String text, Widget widget, bool isSwitch) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: <Widget>[
          const SizedBox(height: 12),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(child: Text(text)),
              Expanded(
                child: Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.symmetric(
                      vertical: 8, horizontal: isSwitch ? 35 : 20),
                  child: widget,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  numberPageDialog() {
    showDialog<String>(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) => AlertDialog(
        scrollable: true,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(32.0))),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 2,
              child: Text(
                AppLocalizations.of(context)!.goToStep,
                // 'Go to Page:',
                textAlign: TextAlign.left,
              ),
            ),
            const Expanded(
              flex: 1,
              child: SizedBox(),
            ),
            Expanded(
              flex: 2,
              child: TextField(
                keyboardType: TextInputType.number,
                controller: pageController4,
                inputFormatters: <TextInputFormatter>[
                  LengthLimitingTextInputFormatter(2),
                  FilteringTextInputFormatter.digitsOnly
                ],
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.only(left: 10),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ],
        ),
        content: const SizedBox(
          height: 5.0,
          width: 300.0,
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              setState(() {
                if (videoButton == false) {
                  videoTimerSlide4DH.cancel();
                }
                videoButton = true;
                seconds = Global.slider;
              });
              if ((int.parse(pageController4.text) > 15) ||
                  (int.parse(pageController4.text) < 0)) {
                showFlushBarMessage(
                    const Icon(
                      Icons.error,
                      size: 32,
                      color: Colors.white,
                    ),
                    // 'Error',
                    AppLocalizations.of(context)!.errorTitel,
                    // 'n must be prime number',
                    AppLocalizations.of(context)!.outOfRangeError,
                    Colors.red);
              } else {
                stepNumber();
                Navigator.pop(context, 'Ok');
              }
            },
            child: const Text('Ok'),
          ),
          TextButton(
            onPressed: () {
              setState(() {
                pageController4 = TextEditingController()
                  ..text = (indexVisibilitySlide4DH + 1).toString();
              });
              Navigator.pop(context, 'No');
            },
            child: Text(AppLocalizations.of(context)!.cancel),
          ),
        ],
      ),
    );
  }

  stepNumber() {
    setState(() {
      resetFunction();
      selectPageNumber(int.parse(pageController4.text) - 1);
    });
  }

  openDialog(bool isLeft) {
    showDialog<String>(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) => AlertDialog(
        scrollable: true,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(32.0))),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Expanded(
              flex: 1,
              child: Icon(
                Icons.error,
                size: 30,
                color: Colors.blue,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              flex: 15,
              child: Text(
                isLeft
                    ? AppLocalizations.of(context)!.lastLeft2
                    : AppLocalizations.of(context)!.lastRight2,
                textAlign: TextAlign.left,
              ),
            ),
          ],
        ),
        content: const SizedBox(
          height: 5.0,
          width: 300.0,
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.pop(context, 'Yes');
              HomePageDHState.controller.animateTo(isLeft ? 2 : 0);
            },
            child: Text(AppLocalizations.of(context)!.yes),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context, 'No');
              setState(() {});
            },
            child: Text(AppLocalizations.of(context)!.no),
          ),
        ],
      ),
    );
  }

  resetFunction() {
    setState(
      () {
        indexVisibilitySlide4DH = -1;
        videoTimerSlide4DH.cancel();
        isLastIndex = [false, true];
        isCanceled = false;
        checkVisibility = 0;
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
        dropdownValue = 'Deutsch';
        delayTimer.cancel();
        videoTimerVariable.cancel();
        timerSlide4DH.cancel();

        pageNumberTimer.cancel();

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
            delayTimer.cancel();
          });
        });
      },
    );
  }

  void showFlushBarMessage(
      Icon icon, String title, String message, Color backgroundColor) {
    Flushbar(
      icon: icon,
      title: title,
      titleSize: 20,
      message: message,
      duration: const Duration(seconds: 1),
      borderRadius: const BorderRadius.all(Radius.circular(20)),
      maxWidth: MediaQuery.of(context).size.width * 0.4,
      backgroundColor: backgroundColor,
      flushbarPosition: FlushbarPosition.TOP,
    ).show(context);
  }
}
