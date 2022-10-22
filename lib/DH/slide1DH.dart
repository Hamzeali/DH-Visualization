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

class Slide1DH extends StatefulWidget {
  const Slide1DH({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _Slide1DHState createState() => _Slide1DHState();
}

String locale = 'de';
var sliderOldValue = 0;
var valOldValue = 0;
bool languageOldValue = true;
var indexVisibilitySlide1DH = -1;
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
double turquoisePosition = 0.61;
double redPosition = 0.6;
var seconds = Global.slider;
bool dropButton = false;
bool desc = true;
bool descVisbility = desc;
String text = '';
bool videoButton = true;
bool settingButton = true;
var timerSeconds = 3;
Timer delayTimer = Timer(Duration(seconds: seconds), () {});
Timer delayTimer2 = Timer(Duration(seconds: seconds), () {});
Timer videoTimerVariable = Timer(Duration(seconds: seconds), () {});
Timer timerSlide1DH = Timer(Duration(seconds: seconds), () {});
Timer videoTimerSlide1DH =
    Timer.periodic(Duration(seconds: Global.slider), (videoTimer) {});

List colorsVisibility = [true, true, true, true];
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
  0.0
];

bool b = true;
bool test = true;
double orangeRightPosition = 0.021;
double blueLeftPosition = 0.169;

class _Slide1DHState extends State<Slide1DH>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  // ignore: must_call_super
  void dispose() {
    videoTimerVariable.cancel();
    timerSlide1DH.cancel();
    videoTimerSlide1DH.cancel();
    delayTimer.cancel();
    delayTimer2.cancel();
    indexVisibilitySlide1DH = -1;
    checkVisibility = 0;
    delay = true;
    dropdownValue = 'Deutsch';
    settingsVideoButton = 0.13;
    settingsStopButton = 0.13;
    advancedSettingsButton = 0.13;
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
    turquoisePosition = 0.61;
    redPosition = 0.6;
    seconds = Global.slider;
    dropButton = false;
    desc = true;
    descVisbility = desc;
    text = '';
    videoButton = true;
    settingButton = true;
    timerSeconds = 3;

    colorsVisibility = [true, true, true, true];
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
      0.0
    ];

    b = true;
    test = true;
    orangeRightPosition = 0.021;
    blueLeftPosition = 0.169;

    super.dispose();
  }

  String translate(BuildContext ctx, indexVisibility) {
    switch (indexVisibility) {
      case 0:
        return AppLocalizations.of(ctx)!.slide1Item0;
      case 1:
        return AppLocalizations.of(ctx)!.slide1Item1;
      case 2:
        return AppLocalizations.of(ctx)!.slide1Item2;
      case 3:
        return AppLocalizations.of(ctx)!.slide1Item3;
      case 4:
        return AppLocalizations.of(ctx)!.slide1Item4;
      case 5:
        return AppLocalizations.of(ctx)!.slide1Item5;
      case 6:
        return AppLocalizations.of(ctx)!.slide1Item6;
      default:
        return "";
    }
  }

  Timer videoTimerProblem() {
    videoTimerVariable = Timer.periodic(
      Duration(seconds: Global.slider),
      (Timer videoTimerVariable) {
        setState(
          () {
            seconds = Global.slider;
            if (indexVisibilitySlide1DH < 6 && delay) {
              // Languages.player.play("assets/steps.mp3");
              indexVisibilitySlide1DH++;
              stepsVisibility[0] = !stepsVisibility[0];
              stepsVisibility[1] = !stepsVisibility[1];
            }
            if (indexVisibilitySlide1DH == 0) {
              contentOpacity[0] = 1.0;
            } else if (indexVisibilitySlide1DH == 1 && delay) {
              contentOpacity[1] = 1.0;
              contentOpacity[2] = 1.0;
              contentOpacity[3] = 1.0;
              contentOpacity[4] = 1.0;
            } else if (indexVisibilitySlide1DH == 2 && delay) {
              contentOpacity[1] = 0.0;
              contentOpacity[2] = 0.0;
              contentOpacity[5] = 1.0;
              contentOpacity[6] = 1.0;
            } else if (indexVisibilitySlide1DH == 3 && delay) {
              turquoisePosition = 0.47;
              redPosition = 0.47;
              contentOpacity[6] = 0.5;
              contentOpacity[5] = 0.0;
              delay = false;
              delayTimer = Timer(Duration(seconds: seconds), () {
                setState(() {
                  contentOpacity[0] = 0.0;
                  contentOpacity[4] = 0.0;
                  contentOpacity[6] = 0.0;
                  contentOpacity[7] = 1.0;
                  delayTimer.cancel();
                });
              });
              delayTimer2 = Timer(Duration(seconds: seconds * 2), () {
                setState(() {
                  colorsVisibility[2] = false;
                  turquoisePosition = 0.61;
                  redPosition = 0.6;
                  delay = true;
                  delayTimer2.cancel();
                });
              });
            } else if (indexVisibilitySlide1DH == 4 && delay) {
              contentOpacity[2] = 1.0;
              contentOpacity[8] = 1.0;
              contentOpacity[11] = 1.0;
              contentOpacity[9] = 1.0;
              colorsVisibility[2] = true;
            } else if (indexVisibilitySlide1DH == 5 && delay) {
              contentOpacity[8] = 0.0;
              delay = false;
              delayTimer = Timer(Duration(seconds: seconds), () {
                setState(() {
                  contentOpacity[8] = 1.0;
                  blueLeftPosition = 0.09;
                  orangeRightPosition = 0.1;
                  delay = true;
                  delayTimer.cancel();
                });
              });
              contentOpacity[2] = 0.0;
              contentOpacity[5] = 1.0;
              contentOpacity[6] = 1.0;
              contentOpacity[7] = 0.0;
              contentOpacity[11] = 0.0;
            } else if (indexVisibilitySlide1DH == 6 && delay) {
              turquoisePosition = 0.47;
              redPosition = 0.47;
              contentOpacity[5] = 0.0;
              delay = false;
              delayTimer = Timer(Duration(seconds: seconds), () {
                setState(() {
                  contentOpacity[6] = 0.0;
                  contentOpacity[8] = 0.0;
                  contentOpacity[10] = 1.0;
                  delay = true;
                  delayTimer.cancel();
                });
              });
            }
            // if (Languages.selectedLanguage) {
            //   text = DescListDeutchDH.slide1Desc[indexVisibilitySlide1DH];
            // } else {
            //   text = DescListEnglishDH.slide1Desc[indexVisibilitySlide1DH];
            // }
          },
        );
      },
    );
    return videoTimerVariable;
  }

  bool stop = true;

  @override
  Widget build(BuildContext context) {
    text = translate(context, indexVisibilitySlide1DH);
    double longWidth = 0.0;
    if (MediaQuery.of(context).size.width < 1000) {
      longWidth = 0.1;
    } else {
      longWidth = 0.02;
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
              0.2,
              0.0,
              0.0,
              0.08,
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
              0.2,
              0.1,
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
              0.46,
              0.45,
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

            // Right-Arrow-horizontal-Image Position
            Visibility(
              visible: colorsVisibility[1],
              child: MyPositioned(
                true,
                false,
                false,
                false,
                0.26,
                0.25,
                0.0,
                0.0,
                0.5,
                0.3,
                true,
                'assets/arrow-horizontal.jpeg',
                BoxFit.fill,
                seconds,
                HomePageDHState.returnAppBar[1],
                contentOpacity[2],
              ),
            ),

            // Arrow-vertical-Image Position
            Visibility(
              visible: colorsVisibility[1],
              child: MyPositioned(
                true,
                false,
                false,
                false,
                0.265,
                0.195,
                0.0,
                0.0,
                0.5,
                0.2,
                true,
                'assets/arrow-vertical.jpeg',
                BoxFit.fill,
                seconds,
                HomePageDHState.returnAppBar[1],
                contentOpacity[2],
              ),
            ),
            // Left-Arrow-horizontal-Image Position
            Visibility(
              visible: colorsVisibility[3],
              child: MyPositioned(
                true,
                false,
                false,
                false,
                0.29,
                0.25,
                0.0,
                0.0,
                0.5,
                0.02,
                true,
                'assets/left-arrow-horizontal.jpeg',
                BoxFit.fill,
                seconds,
                HomePageDHState.returnAppBar[1],
                contentOpacity[11],
              ),
            ),

            // Yellow-Left-Image Position
            Visibility(
              visible: colorsVisibility[0],
              child: MyPositioned(
                false,
                true,
                false,
                false,
                0.42,
                0.0,
                0.0,
                0.09,
                0.08,
                0.1,
                true,
                'assets/yellow.jpeg',
                BoxFit.fill,
                seconds,
                HomePageDHState.returnAppBar[1],
                contentOpacity[0],
              ),
            ),

            // Dark-green-Left-Image Position
            Visibility(
              visible: colorsVisibility[0],
              child: MyPositioned(
                false,
                true,
                false,
                false,
                0.42,
                0.0,
                0.0,
                0.09,
                0.08,
                0.1,
                true,
                'assets/dark-green.jpeg',
                BoxFit.fill,
                seconds,
                HomePageDHState.returnAppBar[1],
                contentOpacity[10],
              ),
            ),

            // Orange-Left-Image Position
            Visibility(
              visible: colorsVisibility[0],
              child: MyPositioned(
                false,
                true,
                false,
                false,
                0.42,
                0.0,
                0.0,
                0.09,
                0.08,
                0.1,
                true,
                'assets/orange.jpeg',
                BoxFit.fill,
                seconds,
                HomePageDHState.returnAppBar[1],
                contentOpacity[7],
              ),
            ),

            // blue-Left-Image Position
            Visibility(
              visible: colorsVisibility[3],
              child: MyPositioned(
                false,
                true,
                false,
                false,
                0.42,
                0.0,
                0.0,
                blueLeftPosition,
                0.08,
                0.1,
                true,
                'assets/blue.jpeg',
                BoxFit.fill,
                seconds,
                HomePageDHState.returnAppBar[1],
                contentOpacity[8],
              ),
            ),

            // Yellow-Top-Image Position
            Visibility(
              visible: colorsVisibility[1],
              child: MyPositioned(
                true,
                false,
                false,
                false,
                0.16,
                0.45,
                0.0,
                0.0,
                0.08,
                0.1,
                true,
                'assets/yellow.jpeg',
                BoxFit.fill,
                seconds,
                HomePageDHState.returnAppBar[1],
                contentOpacity[1],
              ),
            ),

            // Orange-Top-Image Position
            Visibility(
              visible: colorsVisibility[1],
              child: MyPositioned(
                true,
                false,
                false,
                false,
                0.16,
                0.45,
                0.0,
                0.0,
                0.08,
                0.1,
                true,
                'assets/orange.jpeg',
                BoxFit.fill,
                seconds,
                HomePageDHState.returnAppBar[1],
                contentOpacity[11],
              ),
            ),

            // Blue-Top-Image Position
            Visibility(
              visible: colorsVisibility[3],
              child: MyPositioned(
                true,
                false,
                false,
                false,
                0.37,
                0.4,
                0.0,
                0.0,
                0.08,
                0.1,
                true,
                'assets/blue.jpeg',
                BoxFit.fill,
                seconds,
                HomePageDHState.returnAppBar[1],
                contentOpacity[11],
              ),
            ),

            // Yellow-Bottom-Image Position
            Visibility(
              visible: colorsVisibility[1],
              child: MyPositioned(
                true,
                false,
                false,
                false,
                0.52,
                0.379,
                0.0,
                0.0,
                0.08,
                0.1,
                true,
                'assets/yellow.jpeg',
                BoxFit.fill,
                seconds,
                HomePageDHState.returnAppBar[1],
                contentOpacity[3],
              ),
            ),
            // Orange-Bottom-Image Position
            Visibility(
              visible: colorsVisibility[3],
              child: MyPositioned(
                true,
                false,
                false,
                false,
                0.52,
                0.3,
                0.0,
                0.0,
                0.08,
                0.1,
                true,
                'assets/orange.jpeg',
                BoxFit.fill,
                seconds,
                HomePageDHState.returnAppBar[1],
                contentOpacity[9],
              ),
            ),
            // blue-Bottom-Image Position
            Visibility(
              visible: colorsVisibility[3],
              child: MyPositioned(
                true,
                false,
                false,
                false,
                0.52,
                0.221,
                0.0,
                0.0,
                0.08,
                0.1,
                true,
                'assets/blue.jpeg',
                BoxFit.fill,
                seconds,
                HomePageDHState.returnAppBar[1],
                contentOpacity[9],
              ),
            ),

            // Yellow-Right-Image Position
            Visibility(
              visible: colorsVisibility[1],
              child: MyPositioned(
                true,
                false,
                false,
                false,
                0.42,
                0.1,
                0.0,
                0.0,
                0.08,
                0.1,
                true,
                'assets/yellow.jpeg',
                BoxFit.fill,
                seconds,
                HomePageDHState.returnAppBar[1],
                contentOpacity[4],
              ),
            ),

            // Dark-Green-Right-Image Position
            Visibility(
              visible: colorsVisibility[1],
              child: MyPositioned(
                true,
                false,
                false,
                false,
                0.42,
                0.1,
                0.0,
                0.0,
                0.08,
                0.1,
                true,
                'assets/dark-green.jpeg',
                BoxFit.fill,
                seconds,
                HomePageDHState.returnAppBar[1],
                contentOpacity[10],
              ),
            ),

            // Blue-Right-Image Position
            Visibility(
              visible: colorsVisibility[1],
              child: MyPositioned(
                true,
                false,
                false,
                false,
                0.42,
                0.1,
                0.0,
                0.0,
                0.08,
                0.1,
                true,
                'assets/blue.jpeg',
                BoxFit.fill,
                seconds,
                HomePageDHState.returnAppBar[1],
                contentOpacity[7],
              ),
            ),
            // Orange-Right-Image Position
            Visibility(
              visible: colorsVisibility[3],
              child: MyPositioned(
                true,
                false,
                false,
                false,
                0.42,
                orangeRightPosition,
                0.0,
                0.0,
                0.08,
                0.1,
                true,
                'assets/orange.jpeg',
                BoxFit.fill,
                seconds,
                HomePageDHState.returnAppBar[1],
                contentOpacity[8],
              ),
            ),

            // Turquoise-Right-Image Position
            Visibility(
              visible: colorsVisibility[2],
              child: AnimatedPositioned(
                top: (MediaQuery.of(context).size.height -
                        HomePageDHState.returnAppBar[1]) *
                    turquoisePosition,
                right: MediaQuery.of(context).size.width * 0.1,
                width: MediaQuery.of(context).size.width * 0.08,
                height: (MediaQuery.of(context).size.height -
                        HomePageDHState.returnAppBar[1]) *
                    0.05,
                duration: Duration(seconds: seconds),
                child: AnimatedOpacity(
                  opacity: contentOpacity[6],
                  duration: Duration(seconds: seconds),
                  child: Image.asset(
                    'assets/turquoise.jpeg',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),

            // plus-Right-Image Position
            Visibility(
              visible: colorsVisibility[1],
              child: MyPositioned(
                true,
                false,
                false,
                false,
                0.55,
                0.19,
                0.0,
                0.0,
                0.03,
                0.05,
                true,
                'assets/plus.jpeg',
                BoxFit.fill,
                seconds,
                HomePageDHState.returnAppBar[1],
                contentOpacity[5],
              ),
            ),

            // Plus-Left-Image Position
            Visibility(
              visible: colorsVisibility[1],
              child: MyPositioned(
                false,
                true,
                false,
                false,
                0.55,
                0.0,
                0.0,
                0.05,
                0.03,
                0.05,
                true,
                'assets/plus.jpeg',
                BoxFit.fill,
                seconds,
                HomePageDHState.returnAppBar[1],
                contentOpacity[5],
              ),
            ),

            // red-Left-Image Position
            Visibility(
              visible: colorsVisibility[2],
              child: AnimatedPositioned(
                top: (MediaQuery.of(context).size.height -
                        HomePageDHState.returnAppBar[1]) *
                    redPosition,
                left: MediaQuery.of(context).size.width * 0.09,
                width: MediaQuery.of(context).size.width * 0.08,
                height: (MediaQuery.of(context).size.height -
                        HomePageDHState.returnAppBar[1]) *
                    0.05,
                duration: Duration(seconds: seconds),
                child: AnimatedOpacity(
                  opacity: contentOpacity[6],
                  duration: Duration(seconds: seconds),
                  child: Image.asset(
                    'assets/red.jpeg',
                    fit: BoxFit.fill,
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

            // Upper-Text
            Positioned(
              top: (MediaQuery.of(context).size.height -
                      HomePageDHState.returnAppBar[1]) *
                  0.03,
              right: MediaQuery.of(context).size.width * 0.25,
              width: MediaQuery.of(context).size.width * 0.7,
              height: MediaQuery.of(context).size.height * 0.06,
              child: Align(
                alignment: Alignment.topLeft,
                child: FittedBox(
                  child: Text(
                    AppLocalizations.of(context)!.text1,
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * longWidth,
                    ),
                  ),
                ),
              ),
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
                      videoTimerSlide1DH.cancel();
                    }
                    videoButton = true;
                    seconds = Global.slider;

                    if (indexVisibilitySlide1DH < 6 && delay) {
                      // Languages.player.play("assets/steps.mp3");
                      indexVisibilitySlide1DH++;
                      stepsVisibility[0] = !stepsVisibility[0];
                      stepsVisibility[1] = !stepsVisibility[1];
                    }
                    if (indexVisibilitySlide1DH == 0) {
                      contentOpacity[0] = 1.0;
                    } else if (indexVisibilitySlide1DH == 1 && delay) {
                      contentOpacity[1] = 1.0;
                      contentOpacity[2] = 1.0;
                      contentOpacity[3] = 1.0;
                      contentOpacity[4] = 1.0;
                    } else if (indexVisibilitySlide1DH == 2 && delay) {
                      contentOpacity[1] = 0.0;
                      contentOpacity[2] = 0.0;
                      contentOpacity[5] = 1.0;
                      contentOpacity[6] = 1.0;
                    } else if (indexVisibilitySlide1DH == 3 && delay) {
                      turquoisePosition = 0.47;
                      redPosition = 0.47;
                      contentOpacity[6] = 0.5;
                      contentOpacity[5] = 0.0;
                      delay = false;
                      delayTimer = Timer(Duration(seconds: seconds), () {
                        setState(() {
                          contentOpacity[0] = 0.0;
                          contentOpacity[4] = 0.0;
                          contentOpacity[6] = 0.0;
                          contentOpacity[7] = 1.0;
                        });
                      });
                      delayTimer2 = Timer(Duration(seconds: seconds * 2), () {
                        setState(() {
                          colorsVisibility[2] = false;
                          turquoisePosition = 0.61;
                          redPosition = 0.6;
                          delay = true;
                        });
                      });
                    } else if (indexVisibilitySlide1DH == 4 && delay) {
                      contentOpacity[2] = 1.0;
                      contentOpacity[8] = 1.0;
                      contentOpacity[11] = 1.0;
                      contentOpacity[9] = 1.0;
                      colorsVisibility[2] = true;
                    } else if (indexVisibilitySlide1DH == 5 && delay) {
                      contentOpacity[8] = 0.0;
                      delay = false;
                      delayTimer = Timer(Duration(seconds: seconds), () {
                        setState(() {
                          contentOpacity[8] = 1.0;
                          blueLeftPosition = 0.09;
                          orangeRightPosition = 0.1;
                          delay = true;
                        });
                      });
                      contentOpacity[2] = 0.0;
                      contentOpacity[5] = 1.0;
                      contentOpacity[6] = 1.0;
                      contentOpacity[7] = 0.0;
                      contentOpacity[11] = 0.0;
                    } else if (indexVisibilitySlide1DH == 6 && delay) {
                      turquoisePosition = 0.47;
                      redPosition = 0.47;
                      contentOpacity[5] = 0.0;
                      delay = false;
                      delayTimer = Timer(Duration(seconds: seconds), () {
                        setState(() {
                          contentOpacity[6] = 0.0;
                          contentOpacity[8] = 0.0;
                          contentOpacity[10] = 1.0;
                          delay = true;
                        });
                      });
                    }
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
                    if (videoButton == false) {
                      videoTimerSlide1DH.cancel();
                    }
                    videoButton = true;

                    seconds = Global.slider;
                    if (indexVisibilitySlide1DH == 0) text = '';

                    if (indexVisibilitySlide1DH == 0) {
                      // Languages.player.play("assets/steps.mp3");
                      indexVisibilitySlide1DH--;
                      contentOpacity[0] = 0.0;
                      stepsVisibility[0] = !stepsVisibility[0];
                      stepsVisibility[1] = !stepsVisibility[1];
                    } else if (indexVisibilitySlide1DH == 1 && delay) {
                      contentOpacity[1] = 0.0;
                      contentOpacity[2] = 0.0;
                      contentOpacity[3] = 0.0;
                      contentOpacity[4] = 0.0;
                    } else if (indexVisibilitySlide1DH == 2 && delay) {
                      contentOpacity[1] = 1.0;
                      contentOpacity[2] = 1.0;
                      contentOpacity[5] = 0.0;
                      contentOpacity[6] = 0.0;
                    } else if (indexVisibilitySlide1DH == 3 && delay) {
                      // Languages.player.play("assets/steps.mp3");
                      indexVisibilitySlide1DH--;
                      stepsVisibility[0] = !stepsVisibility[0];
                      stepsVisibility[1] = !stepsVisibility[1];
                      colorsVisibility[2] = true;
                      contentOpacity[5] = 1.0;
                      turquoisePosition = 0.47;
                      redPosition = 0.47;
                      delay = false;
                      delayTimer = Timer(Duration(seconds: seconds), () {
                        setState(() {
                          contentOpacity[0] = 1.0;
                          contentOpacity[4] = 1.0;
                          contentOpacity[6] = 1.0;
                          contentOpacity[7] = 0.0;
                          turquoisePosition = 0.61;
                          redPosition = 0.6;
                          delay = true;
                        });
                      });
                    } else if (indexVisibilitySlide1DH == 4 && delay) {
                      contentOpacity[2] = 0.0;
                      contentOpacity[8] = 0.0;
                      contentOpacity[11] = 0.0;
                      contentOpacity[9] = 0.0;
                      colorsVisibility[2] = false;
                    } else if (indexVisibilitySlide1DH == 5 && delay) {
                      // Languages.player.play("assets/steps.mp3");
                      indexVisibilitySlide1DH--;
                      contentOpacity[8] = 0.0;
                      stepsVisibility[0] = !stepsVisibility[0];
                      stepsVisibility[1] = !stepsVisibility[1];
                      delay = false;
                      delayTimer = Timer(Duration(seconds: seconds), () {
                        setState(() {
                          contentOpacity[8] = 1.0;
                          contentOpacity[7] = 1.0;
                          blueLeftPosition = 0.169;
                          orangeRightPosition = 0.021;
                          delay = true;
                        });
                      });
                      contentOpacity[2] = 1.0;
                      contentOpacity[5] = 0.0;
                      contentOpacity[6] = 0.0;
                      contentOpacity[11] = 1.0;
                    } else if (indexVisibilitySlide1DH == 6 && delay) {
                      turquoisePosition = 0.61;
                      redPosition = 0.6;
                      contentOpacity[5] = 1.0;
                      contentOpacity[10] = 0.0;
                      contentOpacity[6] = 1.0;
                      contentOpacity[8] = 1.0;
                    }
                    if (indexVisibilitySlide1DH > 0 && delay) {
                      // Languages.player.play("assets/steps.mp3");
                      if (indexVisibilitySlide1DH == 0) {
                        delay = false;
                      }
                      indexVisibilitySlide1DH--;
                      stepsVisibility[0] = !stepsVisibility[0];
                      stepsVisibility[1] = !stepsVisibility[1];
                    }
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
                    timerSlide1DH = Timer(
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
                                                  videoTimerSlide1DH.cancel();
                                                  videoTimerSlide1DH =
                                                      videoTimerProblem();
                                                }
                                              } else if (Global.val == 3) {
                                                Global.slider = Global.val - 2;
                                                if (!videoButton) {
                                                  videoTimerSlide1DH.cancel();
                                                  videoTimerSlide1DH =
                                                      videoTimerProblem();
                                                }
                                              } else {
                                                Global.slider = Global.val;
                                                if (!videoButton) {
                                                  videoTimerSlide1DH.cancel();
                                                  videoTimerSlide1DH =
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
                    Global.slider = 3;
                    Global.val = 1;
                    Global.replacedSliderValue = Global.slider;
                    colorsVisibility = [false, false, false, false];
                    videoTimerVariable.cancel();
                    timerSlide1DH.cancel();
                    videoTimerSlide1DH.cancel();
                    indexVisibilitySlide1DH = -1;
                    checkVisibility = 0;
                    delay = true;
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
                    turquoisePosition = 0.61;
                    redPosition = 0.6;
                    seconds = Global.slider;
                    dropButton = false;
                    desc = true;
                    descVisbility = desc;
                    text = '';
                    videoButton = true;
                    timerSeconds = 3;
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
                      0.0
                    ];

                    b = true;
                    test = true;
                    orangeRightPosition = 0.021;
                    blueLeftPosition = 0.169;
                    delayTimer = Timer(const Duration(milliseconds: 50), () {
                      setState(() {
                        colorsVisibility = [true, true, true, true];
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
                      videoTimerSlide1DH = videoTimerProblem();
                    } else {
                      videoTimerSlide1DH.cancel();
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

                    timerSlide1DH = Timer(
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
                    '2: ${indexVisibilitySlide1DH + 1} / 7',
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
