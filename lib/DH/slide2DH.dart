// ignore_for_file: file_names

import 'dart:async';
import 'dart:math';
import '../main.dart';
import 'description-list-deutschDH.dart';
// ignore: implementation_imports
import 'package:provider/src/provider.dart';
import '../home-page-DH.dart';
import 'description-widget.dart';
import 'positioned-widget.dart';
import 'package:flutter/material.dart';
import '../language-provider.dart';
import '../languages.dart';
import 'description-list-englishDH.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Slide2DH extends StatefulWidget {
  const Slide2DH({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _Slide2DHState createState() => _Slide2DHState();
}

String locale = 'de';
var sliderOldValue = 0;
var valOldValue = 0;
bool languageOldValue = true;
bool resultVisibility = true;
var indexVisibilitySlide2DH = -1;
int checkVisibility = 0;
bool delay = true;
bool circleVisibility = true;
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
var seconds = Languages.slider;
bool dropButton = false;
bool desc = true;
bool descVisbility = desc;
String text = '';
bool videoButton = true;
bool settingButton = true;
var timerSeconds = 3;
int result = 1;
List power = [
  '0',
  '1',
  '2',
  '3',
  '4',
  '5',
  '6',
  '7',
  '8',
  '9',
  '10',
  '11',
  '12',
  '13',
  '14',
  '15',
  '16'
];
double resultOpacity = 0.0;
Timer delayTimer = Timer(const Duration(seconds: 1), () {});
Timer videoTimerVariable = Timer(const Duration(seconds: 1), () {});
Timer timerSlide1DH = Timer(const Duration(seconds: 1), () {});
Timer videoTimerSlide1DH =
    Timer.periodic(Duration(seconds: Languages.slider), (videoTimer) {});

List circlesOpacity = [
  1.0,
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
  0.0,
  0.0,
];

class _Slide2DHState extends State<Slide2DH>
    with SingleTickerProviderStateMixin, WidgetsBindingObserver {
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
    indexVisibilitySlide2DH = -1;
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
    seconds = Languages.slider;
    dropButton = false;
    desc = true;
    descVisbility = desc;
    text = '';
    videoButton = true;
    settingButton = true;
    timerSeconds = 3;
    resultVisibility = true;
    circlesOpacity = [
      1.0,
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
      0.0,
      0.0,
    ];
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    setState(() {
      videoTimerProblem().cancel();
    });
  }

  Timer videoTimerProblem() {
    videoTimerVariable = Timer.periodic(
      Duration(seconds: Languages.slider),
      (Timer videoTimerVariable) {
        setState(
          () {
            seconds = Languages.slider;

            if (indexVisibilitySlide2DH < 16 && delay) {
              // Languages.player.play("assets/steps.mp3");
              indexVisibilitySlide2DH++;
              stepsVisibility[0] = !stepsVisibility[0];
              stepsVisibility[1] = !stepsVisibility[1];
              result = (pow(3, indexVisibilitySlide2DH).toInt()) % 17;
            }
            if (indexVisibilitySlide2DH == 0) {
              circlesOpacity[0] = 0.0;
              circlesOpacity[1] = 1.0;
              resultOpacity = 1.0;
            } else if (indexVisibilitySlide2DH == 1 && delay) {
              circlesOpacity[1] = 0.0;
              circlesOpacity[2] = 1.0;
            } else if (indexVisibilitySlide2DH == 2 && delay) {
              circlesOpacity[2] = 0.0;
              circlesOpacity[3] = 1.0;
            } else if (indexVisibilitySlide2DH == 3 && delay) {
              circlesOpacity[3] = 0.0;
              circlesOpacity[4] = 1.0;
            } else if (indexVisibilitySlide2DH == 4 && delay) {
              circlesOpacity[4] = 0.0;
              circlesOpacity[5] = 1.0;
            } else if (indexVisibilitySlide2DH == 5 && delay) {
              circlesOpacity[5] = 0.0;
              circlesOpacity[6] = 1.0;
            } else if (indexVisibilitySlide2DH == 6 && delay) {
              circlesOpacity[6] = 0.0;
              circlesOpacity[7] = 1.0;
            } else if (indexVisibilitySlide2DH == 7 && delay) {
              circlesOpacity[7] = 0.0;
              circlesOpacity[8] = 1.0;
            } else if (indexVisibilitySlide2DH == 8 && delay) {
              circlesOpacity[8] = 0.0;
              circlesOpacity[9] = 1.0;
            } else if (indexVisibilitySlide2DH == 9 && delay) {
              circlesOpacity[9] = 0.0;
              circlesOpacity[10] = 1.0;
            } else if (indexVisibilitySlide2DH == 10 && delay) {
              circlesOpacity[10] = 0.0;
              circlesOpacity[11] = 1.0;
            } else if (indexVisibilitySlide2DH == 11 && delay) {
              circlesOpacity[11] = 0.0;
              circlesOpacity[12] = 1.0;
            } else if (indexVisibilitySlide2DH == 12 && delay) {
              circlesOpacity[12] = 0.0;
              circlesOpacity[13] = 1.0;
            } else if (indexVisibilitySlide2DH == 13 && delay) {
              circlesOpacity[13] = 0.0;
              circlesOpacity[14] = 1.0;
            } else if (indexVisibilitySlide2DH == 14 && delay) {
              circlesOpacity[14] = 0.0;
              circlesOpacity[15] = 1.0;
            } else if (indexVisibilitySlide2DH == 15 && delay) {
              circlesOpacity[15] = 0.0;
              circlesOpacity[16] = 1.0;
            } else if (indexVisibilitySlide2DH == 16 && delay) {
              circlesOpacity[16] = 0.0;
              circlesOpacity[17] = 1.0;
            }
            if (Languages.selectedLanguage) {
              text = DescListDeutchDH.slide2Desc[indexVisibilitySlide2DH];
            } else {
              text = DescListEnglishDH.slide2Desc[indexVisibilitySlide2DH];
            }
          },
        );
      },
    );
    return videoTimerVariable;
  }

  bool stop = true;

  @override
  Widget build(BuildContext context) {
    double middleWidth = 0.0;
    double modWidth = 0.0;
    if (MediaQuery.of(context).size.width > 1000 &&
        MediaQuery.of(context).size.height < 400) {
      modWidth = 0.07;
    } else if (MediaQuery.of(context).size.width < 1000 &&
        MediaQuery.of(context).size.height < 400) {
      modWidth = 0.02;
    } else if (MediaQuery.of(context).size.width > 1000 &&
        MediaQuery.of(context).size.height > 400) {
      modWidth = 0.03;
    } else if (MediaQuery.of(context).size.width < 1000 &&
        MediaQuery.of(context).size.height > 400) {
      modWidth = 0.025;
    }

    if (MediaQuery.of(context).size.width > 1200 &&
        MediaQuery.of(context).size.height < 400) {
      middleWidth = 0.015;
    } else if (MediaQuery.of(context).size.width > 1000 &&
        MediaQuery.of(context).size.height < 400) {
      middleWidth = 0.015;
    } else if (MediaQuery.of(context).size.width > 1000 &&
        MediaQuery.of(context).size.height > 400) {
      middleWidth = 0.022;
    } else if (MediaQuery.of(context).size.width < 600 &&
        MediaQuery.of(context).size.height < 400) {
      middleWidth = 0.02;
    } else if (MediaQuery.of(context).size.width < 1000 &&
        MediaQuery.of(context).size.height < 400) {
      middleWidth = 0.018;
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
      child: Stack(
        children: [
          // Numbers
          Visibility(
            visible: circleVisibility,
            child: MyPositioned(
              false,
              true,
              false,
              false,
              0.1,
              0.0,
              0.0,
              0.6,
              0.35,
              0.6,
              true,
              'assets/slide2Images/Numbers.jpeg',
              BoxFit.fill,
              seconds,
              HomePageDHState.returnAppBar[1],
              1.0,
            ),
          ),
          // 0
          Visibility(
            visible: circleVisibility,
            child: MyPositioned(
              false,
              true,
              false,
              false,
              0.1,
              0.0,
              0.0,
              0.6,
              0.35,
              0.6,
              true,
              'assets/slide2Images/0.jpeg',
              BoxFit.fill,
              seconds,
              HomePageDHState.returnAppBar[1],
              circlesOpacity[0],
            ),
          ),
          // 1
          Visibility(
            visible: circleVisibility,
            child: MyPositioned(
              false,
              true,
              false,
              false,
              0.1,
              0.0,
              0.0,
              0.6,
              0.35,
              0.6,
              true,
              'assets/slide2Images/1.jpeg',
              BoxFit.fill,
              seconds,
              HomePageDHState.returnAppBar[1],
              circlesOpacity[1],
            ),
          ),

          // 2
          Visibility(
            visible: circleVisibility,
            child: MyPositioned(
              false,
              true,
              false,
              false,
              0.1,
              0.0,
              0.0,
              0.6,
              0.35,
              0.6,
              true,
              'assets/slide2Images/2.jpeg',
              BoxFit.fill,
              seconds,
              HomePageDHState.returnAppBar[1],
              circlesOpacity[2],
            ),
          ),

          // 3
          Visibility(
            visible: circleVisibility,
            child: MyPositioned(
              false,
              true,
              false,
              false,
              0.1,
              0.0,
              0.0,
              0.6,
              0.35,
              0.6,
              true,
              'assets/slide2Images/3.jpeg',
              BoxFit.fill,
              seconds,
              HomePageDHState.returnAppBar[1],
              circlesOpacity[3],
            ),
          ),

          // 4
          Visibility(
            visible: circleVisibility,
            child: MyPositioned(
              false,
              true,
              false,
              false,
              0.1,
              0.0,
              0.0,
              0.6,
              0.35,
              0.6,
              true,
              'assets/slide2Images/4.jpeg',
              BoxFit.fill,
              seconds,
              HomePageDHState.returnAppBar[1],
              circlesOpacity[4],
            ),
          ),

          // 5
          Visibility(
            visible: circleVisibility,
            child: MyPositioned(
              false,
              true,
              false,
              false,
              0.1,
              0.0,
              0.0,
              0.6,
              0.35,
              0.6,
              true,
              'assets/slide2Images/5.jpeg',
              BoxFit.fill,
              seconds,
              HomePageDHState.returnAppBar[1],
              circlesOpacity[5],
            ),
          ),

          // 6
          Visibility(
            visible: circleVisibility,
            child: MyPositioned(
              false,
              true,
              false,
              false,
              0.1,
              0.0,
              0.0,
              0.6,
              0.35,
              0.6,
              true,
              'assets/slide2Images/6.jpeg',
              BoxFit.fill,
              seconds,
              HomePageDHState.returnAppBar[1],
              circlesOpacity[6],
            ),
          ),

          // 7
          Visibility(
            visible: circleVisibility,
            child: MyPositioned(
              false,
              true,
              false,
              false,
              0.1,
              0.0,
              0.0,
              0.6,
              0.35,
              0.6,
              true,
              'assets/slide2Images/7.jpeg',
              BoxFit.fill,
              seconds,
              HomePageDHState.returnAppBar[1],
              circlesOpacity[7],
            ),
          ),

          // 8
          Visibility(
            visible: circleVisibility,
            child: MyPositioned(
              false,
              true,
              false,
              false,
              0.1,
              0.0,
              0.0,
              0.6,
              0.35,
              0.6,
              true,
              'assets/slide2Images/8.jpeg',
              BoxFit.fill,
              seconds,
              HomePageDHState.returnAppBar[1],
              circlesOpacity[8],
            ),
          ),

          // 9
          Visibility(
            visible: circleVisibility,
            child: MyPositioned(
              false,
              true,
              false,
              false,
              0.1,
              0.0,
              0.0,
              0.6,
              0.35,
              0.6,
              true,
              'assets/slide2Images/9.jpeg',
              BoxFit.fill,
              seconds,
              HomePageDHState.returnAppBar[1],
              circlesOpacity[9],
            ),
          ),

          // 10
          Visibility(
            visible: circleVisibility,
            child: MyPositioned(
              false,
              true,
              false,
              false,
              0.1,
              0.0,
              0.0,
              0.6,
              0.35,
              0.6,
              true,
              'assets/slide2Images/10.jpeg',
              BoxFit.fill,
              seconds,
              HomePageDHState.returnAppBar[1],
              circlesOpacity[10],
            ),
          ),

          // 11
          Visibility(
            visible: circleVisibility,
            child: MyPositioned(
              false,
              true,
              false,
              false,
              0.1,
              0.0,
              0.0,
              0.6,
              0.35,
              0.6,
              true,
              'assets/slide2Images/11.jpeg',
              BoxFit.fill,
              seconds,
              HomePageDHState.returnAppBar[1],
              circlesOpacity[11],
            ),
          ),

          // 12
          Visibility(
            visible: circleVisibility,
            child: MyPositioned(
              false,
              true,
              false,
              false,
              0.1,
              0.0,
              0.0,
              0.6,
              0.35,
              0.6,
              true,
              'assets/slide2Images/12.jpeg',
              BoxFit.fill,
              seconds,
              HomePageDHState.returnAppBar[1],
              circlesOpacity[12],
            ),
          ),

          // 13
          Visibility(
            visible: circleVisibility,
            child: MyPositioned(
              false,
              true,
              false,
              false,
              0.1,
              0.0,
              0.0,
              0.6,
              0.35,
              0.6,
              true,
              'assets/slide2Images/13.jpeg',
              BoxFit.fill,
              seconds,
              HomePageDHState.returnAppBar[1],
              circlesOpacity[13],
            ),
          ),

          // 14
          Visibility(
            visible: circleVisibility,
            child: MyPositioned(
              false,
              true,
              false,
              false,
              0.1,
              0.0,
              0.0,
              0.6,
              0.35,
              0.6,
              true,
              'assets/slide2Images/14.jpeg',
              BoxFit.fill,
              seconds,
              HomePageDHState.returnAppBar[1],
              circlesOpacity[14],
            ),
          ),

          // 15
          Visibility(
            visible: circleVisibility,
            child: MyPositioned(
              false,
              true,
              false,
              false,
              0.1,
              0.0,
              0.0,
              0.6,
              0.35,
              0.6,
              true,
              'assets/slide2Images/15.jpeg',
              BoxFit.fill,
              seconds,
              HomePageDHState.returnAppBar[1],
              circlesOpacity[15],
            ),
          ),

          // 16
          Visibility(
            visible: circleVisibility,
            child: MyPositioned(
              false,
              true,
              false,
              false,
              0.1,
              0.0,
              0.0,
              0.6,
              0.35,
              0.6,
              true,
              'assets/slide2Images/16.jpeg',
              BoxFit.fill,
              seconds,
              HomePageDHState.returnAppBar[1],
              circlesOpacity[16],
            ),
          ),

          // 17
          Visibility(
            visible: circleVisibility,
            child: MyPositioned(
              false,
              true,
              false,
              false,
              0.1,
              0.0,
              0.0,
              0.6,
              0.35,
              0.6,
              true,
              'assets/slide2Images/17.jpeg',
              BoxFit.fill,
              seconds,
              HomePageDHState.returnAppBar[1],
              circlesOpacity[17],
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

          // // description
          // Description(desc, text, descVisbility, containerSeconds,
          //     HomePageDHState.returnAppBar[1]),

          // Upper Text
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
                  Languages.selectedLanguage
                      ? DescListDeutchDH.text2
                      : DescListEnglishDH.text2,
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * modWidth,
                  ),
                ),
              ),
            ),
          ),

          Positioned(
            top: (MediaQuery.of(context).size.height -
                    HomePageDHState.returnAppBar[1]) *
                0.2,
            left: MediaQuery.of(context).size.width * 0.065,
            width: MediaQuery.of(context).size.width * 0.15,
            height: MediaQuery.of(context).size.height * 0.15,
            child: Align(
              alignment: Alignment.topLeft,
              child: FittedBox(
                child: Text(
                  'r = 3, n = 17',
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * middleWidth,
                  ),
                ),
              ),
            ),
          ),

          Positioned(
            top: (MediaQuery.of(context).size.height -
                    HomePageDHState.returnAppBar[1]) *
                0.4,
            left: MediaQuery.of(context).size.width * 0.065,
            width: MediaQuery.of(context).size.width * 0.25,
            height: (MediaQuery.of(context).size.height -
                    HomePageDHState.returnAppBar[1]) *
                0.1,
            child: AnimatedOpacity(
              opacity: resultOpacity,
              duration: Duration(seconds: seconds),
              child: Align(
                alignment: Alignment.topLeft,
                child: FittedBox(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: Text(
                          '3',
                          style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.width * modWidth,
                          ),
                        ),
                      ),
                      Text(
                        power[indexVisibilitySlide2DH == -1
                            ? 0
                            : indexVisibilitySlide2DH],
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width *
                              modWidth /
                              1.5,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: Text(
                          ' mod 17 = $result',
                          style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.width * modWidth,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

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
                  seconds = Languages.slider;

                  if (indexVisibilitySlide2DH < 16 && delay) {
                    // Languages.player.play("assets/steps.mp3");
                    indexVisibilitySlide2DH++;
                    stepsVisibility[0] = !stepsVisibility[0];
                    stepsVisibility[1] = !stepsVisibility[1];
                    result = (pow(3, indexVisibilitySlide2DH).toInt()) % 17;
                  }
                  if (indexVisibilitySlide2DH == 0) {
                    circlesOpacity[0] = 0.0;
                    circlesOpacity[1] = 1.0;
                    resultOpacity = 1.0;
                  } else if (indexVisibilitySlide2DH == 1 && delay) {
                    circlesOpacity[1] = 0.0;
                    circlesOpacity[2] = 1.0;
                  } else if (indexVisibilitySlide2DH == 2 && delay) {
                    circlesOpacity[2] = 0.0;
                    circlesOpacity[3] = 1.0;
                  } else if (indexVisibilitySlide2DH == 3 && delay) {
                    circlesOpacity[3] = 0.0;
                    circlesOpacity[4] = 1.0;
                  } else if (indexVisibilitySlide2DH == 4 && delay) {
                    circlesOpacity[4] = 0.0;
                    circlesOpacity[5] = 1.0;
                  } else if (indexVisibilitySlide2DH == 5 && delay) {
                    circlesOpacity[5] = 0.0;
                    circlesOpacity[6] = 1.0;
                  } else if (indexVisibilitySlide2DH == 6 && delay) {
                    circlesOpacity[6] = 0.0;
                    circlesOpacity[7] = 1.0;
                  } else if (indexVisibilitySlide2DH == 7 && delay) {
                    circlesOpacity[7] = 0.0;
                    circlesOpacity[8] = 1.0;
                  } else if (indexVisibilitySlide2DH == 8 && delay) {
                    circlesOpacity[8] = 0.0;
                    circlesOpacity[9] = 1.0;
                  } else if (indexVisibilitySlide2DH == 9 && delay) {
                    circlesOpacity[9] = 0.0;
                    circlesOpacity[10] = 1.0;
                  } else if (indexVisibilitySlide2DH == 10 && delay) {
                    circlesOpacity[10] = 0.0;
                    circlesOpacity[11] = 1.0;
                  } else if (indexVisibilitySlide2DH == 11 && delay) {
                    circlesOpacity[11] = 0.0;
                    circlesOpacity[12] = 1.0;
                  } else if (indexVisibilitySlide2DH == 12 && delay) {
                    circlesOpacity[12] = 0.0;
                    circlesOpacity[13] = 1.0;
                  } else if (indexVisibilitySlide2DH == 13 && delay) {
                    circlesOpacity[13] = 0.0;
                    circlesOpacity[14] = 1.0;
                  } else if (indexVisibilitySlide2DH == 14 && delay) {
                    circlesOpacity[14] = 0.0;
                    circlesOpacity[15] = 1.0;
                  } else if (indexVisibilitySlide2DH == 15 && delay) {
                    circlesOpacity[15] = 0.0;
                    circlesOpacity[16] = 1.0;
                  } else if (indexVisibilitySlide2DH == 16 && delay) {
                    circlesOpacity[16] = 0.0;
                    circlesOpacity[17] = 1.0;
                  }
                  if (Languages.selectedLanguage) {
                    text = DescListDeutchDH.slide2Desc[indexVisibilitySlide2DH];
                  } else {
                    text =
                        DescListEnglishDH.slide2Desc[indexVisibilitySlide2DH];
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

                  seconds = Languages.slider;
                  if (indexVisibilitySlide2DH == 0) {
                    // Languages.player.play("assets/steps.mp3");
                    indexVisibilitySlide2DH--;
                    circlesOpacity[0] = 1.0;
                    circlesOpacity[1] = 0.0;
                    resultOpacity = 0.0;
                  } else if (indexVisibilitySlide2DH == 1 && delay) {
                    circlesOpacity[1] = 1.0;
                    circlesOpacity[2] = 0.0;
                  } else if (indexVisibilitySlide2DH == 2 && delay) {
                    circlesOpacity[2] = 1.0;
                    circlesOpacity[3] = 0.0;
                  } else if (indexVisibilitySlide2DH == 3 && delay) {
                    circlesOpacity[3] = 1.0;
                    circlesOpacity[4] = 0.0;
                  } else if (indexVisibilitySlide2DH == 4 && delay) {
                    circlesOpacity[4] = 1.0;
                    circlesOpacity[5] = 0.0;
                  } else if (indexVisibilitySlide2DH == 5 && delay) {
                    circlesOpacity[5] = 1.0;
                    circlesOpacity[6] = 0.0;
                  } else if (indexVisibilitySlide2DH == 6 && delay) {
                    circlesOpacity[6] = 1.0;
                    circlesOpacity[7] = 0.0;
                  } else if (indexVisibilitySlide2DH == 7 && delay) {
                    circlesOpacity[7] = 1.0;
                    circlesOpacity[8] = 0.0;
                  } else if (indexVisibilitySlide2DH == 8 && delay) {
                    circlesOpacity[8] = 1.0;
                    circlesOpacity[9] = 0.0;
                  } else if (indexVisibilitySlide2DH == 9 && delay) {
                    circlesOpacity[9] = 1.0;
                    circlesOpacity[10] = 0.0;
                  } else if (indexVisibilitySlide2DH == 10 && delay) {
                    circlesOpacity[10] = 1.0;
                    circlesOpacity[11] = 0.0;
                  } else if (indexVisibilitySlide2DH == 11 && delay) {
                    circlesOpacity[11] = 1.0;
                    circlesOpacity[12] = 0.0;
                  } else if (indexVisibilitySlide2DH == 12 && delay) {
                    circlesOpacity[12] = 1.0;
                    circlesOpacity[13] = 0.0;
                  } else if (indexVisibilitySlide2DH == 13 && delay) {
                    circlesOpacity[13] = 1.0;
                    circlesOpacity[14] = 0.0;
                  } else if (indexVisibilitySlide2DH == 14 && delay) {
                    circlesOpacity[14] = 1.0;
                    circlesOpacity[15] = 0.0;
                  } else if (indexVisibilitySlide2DH == 15 && delay) {
                    circlesOpacity[15] = 1.0;
                    circlesOpacity[16] = 0.0;
                  } else if (indexVisibilitySlide2DH == 16 && delay) {
                    circlesOpacity[16] = 1.0;
                    circlesOpacity[17] = 0.0;
                  }
                  if (indexVisibilitySlide2DH > 0 && delay) {
                    // Languages.player.play("assets/steps.mp3");
                    if (indexVisibilitySlide2DH == 0) {
                      delay = false;
                    }
                    indexVisibilitySlide2DH--;
                    stepsVisibility[0] = !stepsVisibility[0];
                    stepsVisibility[1] = !stepsVisibility[1];
                    if (Languages.selectedLanguage) {
                      text =
                          DescListDeutchDH.slide2Desc[indexVisibilitySlide2DH];
                    } else {
                      text =
                          DescListEnglishDH.slide2Desc[indexVisibilitySlide2DH];
                    }
                  }
                  if (indexVisibilitySlide2DH >= 0) {
                    result = (pow(3, indexVisibilitySlide2DH).toInt()) % 17;
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
          // Positioned(
          //   left: MediaQuery.of(context).size.width * 0.458,
          //   bottom: MediaQuery.of(context).size.height * 0.001,
          //   width: MediaQuery.of(context).size.width * 0.08,
          //   height: MediaQuery.of(context).size.height * 0.08,
          //   child: FloatingActionButton(
          //     heroTag: "middle9",
          //     onPressed: () => setState(
          //       () {
          //         isPressedUp = 1;
          //         isPressedDown = 2;

          //         dropButton = !dropButton;
          //         containerSeconds = 2;
          //         desc = !desc;
          //         timerSlide1DH = Timer(
          //           const Duration(seconds: 2),
          //           () {
          //             setState(
          //               () {
          //                 descVisbility = desc;
          //                 checkVisibility = 1;
          //               },
          //             );
          //           },
          //         );
          //       },
          //     ),
          //     child: dropButton
          //         ? Icon(
          //             Icons.arrow_drop_up,
          //             size: MediaQuery.of(context).size.height * 0.04,
          //           )
          //         : Icon(
          //             Icons.arrow_drop_down,
          //             size: MediaQuery.of(context).size.height * 0.04,
          //           ),
          //   ),
          // ),

          // Advanced-Setting-Button

          AnimatedPositioned(
            right: MediaQuery.of(context).size.width * 0.01,
            bottom: MediaQuery.of(context).size.height *
                advancedSettingsButton, // 0.46
            width: MediaQuery.of(context).size.width * 0.1,
            height: MediaQuery.of(context).size.height * 0.1,
            duration: Duration(
                milliseconds: settingsButtonDuration + 200 * backToZero),
            child: FloatingActionButton(
              heroTag: "settings9",
              backgroundColor: Colors.orange,
              onPressed: () {
                locale = Languages.locale;
                sliderOldValue = Languages.slider;
                valOldValue = Languages.val;
                languageOldValue = Languages.selectedLanguage;
                showDialog<String>(
                  barrierDismissible: false,
                  context: context,
                  builder: (BuildContext context) => SingleChildScrollView(
                    child: AlertDialog(
                      title: Text(
                        // 'Settings',
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
                                  AppLocalizations.of(context)!.animationSpeed,
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
                                      void Function(void Function()) setState) {
                                    return Slider(
                                      value: Languages.val.toDouble(),
                                      min: 1.0,
                                      max: 3.0,
                                      divisions: 2,
                                      label: Languages.val.toString(),
                                      onChanged: (double newValue) {
                                        setState(
                                          () {
                                            Languages.val = newValue.round();

                                            if (Languages.val == 1) {
                                              Languages.slider =
                                                  Languages.val + 2;
                                              if (!videoButton) {
                                                videoTimerSlide1DH.cancel();
                                                videoTimerSlide1DH =
                                                    videoTimerProblem();
                                              }
                                            } else if (Languages.val == 3) {
                                              Languages.slider =
                                                  Languages.val - 2;
                                              if (!videoButton) {
                                                videoTimerSlide1DH.cancel();
                                                videoTimerSlide1DH =
                                                    videoTimerProblem();
                                              }
                                            } else {
                                              Languages.slider = Languages.val;
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
                                  child: StatefulBuilder(builder: (BuildContext
                                          context,
                                      void Function(void Function()) setState) {
                                    return DropdownButton<String>(
                                      value: Languages.selectedLanguage == true
                                          ? Languages.languages[0]
                                          : Languages.languages[1],
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
                                                Languages.languages[1]) {
                                              Languages.selectedLanguage =
                                                  false;
                                              MyApp.of(context)!.setLocale(
                                                  const Locale.fromSubtags(
                                                      languageCode: 'en'));
                                              Languages.locale = 'en';
                                            } else {
                                              Languages.selectedLanguage = true;
                                              MyApp.of(context)!.setLocale(
                                                  const Locale.fromSubtags(
                                                      languageCode: 'de'));
                                              Languages.locale = 'de';
                                            }
                                          },
                                        );
                                        Provider.of<LanguageProvider>(context,
                                                listen: false)
                                            .changeLanguage(1);
                                        // }
                                      },
                                      items: Languages.languages
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
                      // content: SingleChildScrollView(
                      //   child: Column(
                      //     crossAxisAlignment: CrossAxisAlignment.stretch,
                      //     children: [
                      //       SingleChildScrollView(
                      //         scrollDirection: Axis.horizontal,
                      //         child: Row(
                      //           children: [
                      //             Text(
                      //               // 'Animation-Geschwindigkeit:',
                      //               AppLocalizations.of(context)!.animationSpeed,
                      //             ),
                      //             const SizedBox(
                      //               width: 50,
                      //             ),
                      //             StatefulBuilder(
                      //               builder: (BuildContext context,
                      //                   void Function(void Function()) setState) {
                      //                 return Slider(
                      //                   value: Languages.val.toDouble(),
                      //                   min: 1.0,
                      //                   max: 3.0,
                      //                   divisions: 2,
                      //                   label: Languages.val.toString(),
                      //                   onChanged: (double newValue) {
                      //                     setState(
                      //                       () {
                      //                         Languages.val = newValue.round();

                      //                         if (Languages.val == 1) {
                      //                           Languages.slider =
                      //                               Languages.val + 2;
                      //                           if (!videoButton) {
                      //                             videoTimerSlide1DH.cancel();
                      //                             videoTimerSlide1DH =
                      //                                 videoTimerProblem();
                      //                           }
                      //                         } else if (Languages.val == 3) {
                      //                           Languages.slider =
                      //                               Languages.val - 2;
                      //                           if (!videoButton) {
                      //                             videoTimerSlide1DH.cancel();
                      //                             videoTimerSlide1DH =
                      //                                 videoTimerProblem();
                      //                           }
                      //                         } else {
                      //                           Languages.slider = Languages.val;
                      //                           if (!videoButton) {
                      //                             videoTimerSlide1DH.cancel();
                      //                             videoTimerSlide1DH =
                      //                                 videoTimerProblem();
                      //                           }
                      //                         }
                      //                       },
                      //                     );
                      //                   },
                      //                 );
                      //               },
                      //             ),
                      //           ],
                      //         ),
                      //       ),
                      //       Row(
                      //         children: [
                      //           Text(
                      //             // 'Sprache:',
                      //             AppLocalizations.of(context)!.appLanguage,
                      //           ),
                      //           const SizedBox(
                      //             width: 205,
                      //           ),
                      //           StatefulBuilder(builder: (BuildContext context,
                      //               void Function(void Function()) setState) {
                      //             return DropdownButton<String>(
                      //               value: Languages.selectedLanguage == true
                      //                   ? Languages.languages[0]
                      //                   : Languages.languages[1],
                      //               elevation: 16,
                      //               style:
                      //                   const TextStyle(color: Colors.deepPurple),
                      //               underline: Container(
                      //                 height: 2,
                      //                 color: Colors.deepPurpleAccent,
                      //               ),
                      //               onChanged: (newValue) {
                      //                 setState(
                      //                   () {
                      //                     dropdownValue = newValue!;
                      //                     if (dropdownValue ==
                      //                         Languages.languages[1]) {
                      //                       Languages.selectedLanguage = false;
                      //                     } else {
                      //                       Languages.selectedLanguage = true;
                      //                     }
                      //                   },
                      //                 );
                      //               },
                      //               items: Languages.languages
                      //                   .map<DropdownMenuItem<String>>(
                      //                 (String value) {
                      //                   return DropdownMenuItem<String>(
                      //                     value: value,
                      //                     child: Text(value),
                      //                   );
                      //                 },
                      //               ).toList(),
                      //             );
                      //           }),
                      //         ],
                      //       ),
                      //     ],
                      //   ),
                      // ),
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
                              Languages.slider = sliderOldValue;
                              Languages.val = valOldValue;
                              Languages.selectedLanguage = languageOldValue;
                              Languages.locale = locale;
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
                  Languages.slider = 3;
                  Languages.val = 1;
                  Languages.replacedSliderValue = Languages.slider;
                  videoTimerVariable.cancel();
                  timerSlide1DH.cancel();
                  videoTimerSlide1DH.cancel();
                  indexVisibilitySlide2DH = -1;
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
                  seconds = Languages.slider;
                  dropButton = false;
                  desc = true;
                  descVisbility = desc;
                  text = '';
                  videoButton = true;
                  timerSeconds = 3;
                  circleVisibility = false;
                  resultOpacity = 0.0;
                  circlesOpacity = [
                    1.0,
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
                    0.0,
                    0.0,
                  ];
                  resultVisibility = false;
                  delayTimer = Timer(const Duration(milliseconds: 50), () {
                    setState(() {
                      resultVisibility = true;
                      circleVisibility = true;
                      Languages.slider = Languages.replacedSliderValue;
                      seconds = Languages.slider;
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
                  '2: ${indexVisibilitySlide2DH + 1} / 17',
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
    );
  }
}
