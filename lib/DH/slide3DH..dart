// ignore_for_file: file_names

import 'dart:async';
import 'dart:math';
import 'package:flutter/services.dart';

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
import 'package:another_flushbar/flushbar.dart';

class Slide3DH extends StatefulWidget {
  const Slide3DH({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _Slide3DHState createState() => _Slide3DHState();
}

bool isCanceled = false;
int nOldVal = 0;
int rOldVal = 0;
int secretBobOldVal = 0;
int scretAliceOldVal = 0;
var sliderOldValue = 0;
var valOldValue = 0;
String locale = 'de';
bool languageOldValue = true;
bool textVisibility = true;
var indexVisibilitySlide3DH = -1;
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
Timer timerSlide3DH = Timer(const Duration(seconds: 1), () {});
Timer videoTimerSlide3DH =
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
];

int n = 17;
int r = 3;
int secretAlice = 9;
int secretBob = 7;
TextEditingController nController = TextEditingController()
  ..text = n.toString();
TextEditingController rController = TextEditingController()
  ..text = r.toString();
TextEditingController secretBobController = TextEditingController()
  ..text = secretBob.toString();
TextEditingController secretAliceController = TextEditingController()
  ..text = secretAlice.toString();

TextEditingController nControllerOldVal = TextEditingController()
  ..text = n.toString();
TextEditingController rControllerOldVal = TextEditingController()
  ..text = r.toString();
TextEditingController secretBobControllerOldVal = TextEditingController()
  ..text = secretBob.toString();
TextEditingController secretAliceControllerOldVal = TextEditingController()
  ..text = secretAlice.toString();

class _Slide3DHState extends State<Slide3DH>
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
    indexVisibilitySlide3DH = -1;
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
    timerSlide3DH.cancel();
    videoTimerSlide3DH.cancel();
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
    ];
    textVisibility = false;
    delayTimer.cancel();

    super.dispose();
  }

  void showFlushBarMessage(
      Icon icon, String title, String message, Color backgroundColor) {
    Flushbar(
      icon: icon,
      title: title,
      titleSize: 20,
      message: message,
      duration: const Duration(seconds: 3),
      borderRadius: const BorderRadius.all(Radius.circular(20)),
      maxWidth: MediaQuery.of(context).size.width * 0.4,
      backgroundColor: backgroundColor,
      flushbarPosition: FlushbarPosition.TOP,
    ).show(context);
  }

  String translate(BuildContext ctx, indexVisibility) {
    switch (indexVisibility) {
      case 0:
        return AppLocalizations.of(ctx)!.slide3Item0;
      case 1:
        return AppLocalizations.of(ctx)!.slide3Item1;
      case 2:
        return AppLocalizations.of(ctx)!.slide3Item2;
      case 3:
        return AppLocalizations.of(ctx)!.slide3Item3;
      case 4:
        return AppLocalizations.of(ctx)!.slide3Item4;
      case 5:
        return AppLocalizations.of(ctx)!.slide3Item5;
      default:
        return "";
    }
  }

  bool isPrime(int number) {
    if (number <= 1) {
      return false;
    }
    for (int i = 2; i < number; i++) {
      if (number % i == 0) {
        return false;
      }
    }
    return true;
  }

  bool isPrimitiveRoot(int root, int prime) {
    List results = [];
    for (int i = 1; i < prime; i++) {
      num res = (pow(root, i) % prime);
      if (results.contains(res)) {
        return false;
      } else {
        results.add(res);
      }
    }
    return true;
  }

  Timer videoTimerProblem() {
    videoTimerVariable = Timer.periodic(
      Duration(seconds: Global.slider),
      (Timer videoTimerVariable) {
        setState(
          () {
            seconds = Global.slider;
            if (indexVisibilitySlide3DH < 5 && delay) {
              // Languages.player.play("assets/steps.mp3");
              indexVisibilitySlide3DH++;
              stepsVisibility[0] = !stepsVisibility[0];
              stepsVisibility[1] = !stepsVisibility[1];
            }
            if (indexVisibilitySlide3DH == 0) {
              contentOpacity[0] = 1.0;
            } else if (indexVisibilitySlide3DH == 1 && delay) {
              contentOpacity[0] = 0.0;
              contentOpacity[1] = 1.0;
              contentOpacity[2] = 1.0;
              contentOpacity[8] = 1.0;
            } else if (indexVisibilitySlide3DH == 2 && delay) {
              contentOpacity[2] = 0.0;
              contentOpacity[8] = 0.0;
              contentOpacity[3] = 1.0;
            } else if (indexVisibilitySlide3DH == 3 && delay) {
              contentOpacity[4] = 1.0;
            } else if (indexVisibilitySlide3DH == 4 && delay) {
              contentOpacity[2] = 1.0;
              contentOpacity[4] = 0.0;
              contentOpacity[5] = 1.0;
              contentOpacity[7] = 1.0;
            } else if (indexVisibilitySlide3DH == 5 && delay) {
              contentOpacity[2] = 0.0;
              contentOpacity[5] = 0.0;
              contentOpacity[7] = 0.0;
              contentOpacity[6] = 1.0;
            }
            // if (Languages.selectedLanguage) {
            //   text = DescListDeutchDH.slide3Desc[indexVisibilitySlide3DH];
            // } else {
            //   text = DescListEnglishDH.slide3Desc[indexVisibilitySlide3DH];
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
    text = translate(context, indexVisibilitySlide3DH);
    double longWidth = 0.0;
    double shortWidth = 0.0;
    double middleWidth = 0.0;
    double fromTop = 0.0;
    double marginValue = 0.0;

    if (MediaQuery.of(context).size.width < 1000) {
      longWidth = 0.1;
      shortWidth = 0.025;
      middleWidth = 0.015;
    } else {
      longWidth = 0.02;
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
    if (MediaQuery.of(context).size.width > 1000 &&
        MediaQuery.of(context).size.height < 400) {
      fromTop = 0.1;
    } else if (MediaQuery.of(context).size.width > 1000 &&
        MediaQuery.of(context).size.height < 600) {
      fromTop = 0.1;
    } else if (MediaQuery.of(context).size.height > 400 &&
        MediaQuery.of(context).size.width < 1000) {
      fromTop = 0.12;
    } else if (MediaQuery.of(context).size.width < 1000 &&
        MediaQuery.of(context).size.height < 400) {
      fromTop = 0.13;
    } else if (MediaQuery.of(context).size.height < 400 &&
        MediaQuery.of(context).size.width < 800) {
      fromTop = 0.08;
    } else if (MediaQuery.of(context).size.height > 400 &&
        MediaQuery.of(context).size.width > 1000) {
      fromTop = 0.15;
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
              0.1,
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
              0.4,
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
              visible: textVisibility,
              child: MyPositioned(
                true,
                false,
                false,
                false,
                0.2,
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
              visible: textVisibility,
              child: MyPositioned(
                true,
                false,
                false,
                false,
                0.205,
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
              visible: textVisibility,
              child: MyPositioned(
                true,
                false,
                false,
                false,
                0.23,
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
                contentOpacity[7],
              ),
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
                    AppLocalizations.of(context)!.text31,
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * longWidth,
                    ),
                  ),
                ),
              ),
            ),

            // Left-Text1
            Visibility(
              visible: textVisibility,
              child: Positioned(
                top: (MediaQuery.of(context).size.height -
                        HomePageDHState.returnAppBar[1]) *
                    0.35,
                left: MediaQuery.of(context).size.width * 0.06,
                width: MediaQuery.of(context).size.width * 0.4,
                height: MediaQuery.of(context).size.height * 0.1,
                child: AnimatedOpacity(
                  opacity: contentOpacity[0],
                  duration: Duration(seconds: seconds),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: FittedBox(
                      child: Text(
                        '${AppLocalizations.of(context)!.text321}$n\n${AppLocalizations.of(context)!.text322}$r',
                        style: const TextStyle(
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            // Left-Text2
            Visibility(
              visible: textVisibility,
              child: Positioned(
                top: (MediaQuery.of(context).size.height -
                        HomePageDHState.returnAppBar[1]) *
                    0.35,
                left: MediaQuery.of(context).size.width * 0.09,
                width: MediaQuery.of(context).size.width * 0.2,
                height: MediaQuery.of(context).size.height * 0.1,
                child: AnimatedOpacity(
                  opacity: contentOpacity[1],
                  duration: Duration(seconds: seconds),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: FittedBox(
                      child: Text(
                        'n = $n; r = $r',
                        style: TextStyle(
                          fontSize:
                              MediaQuery.of(context).size.width * shortWidth,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            // Left-Text3
            Visibility(
              visible: textVisibility,
              child: Positioned(
                top: (MediaQuery.of(context).size.height -
                        HomePageDHState.returnAppBar[1]) *
                    0.45,
                left: MediaQuery.of(context).size.width * 0.09,
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
                      Text(
                        ' = $secretAlice',
                        style: TextStyle(
                          fontSize:
                              MediaQuery.of(context).size.width * middleWidth,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // Left-Text4
            Visibility(
              visible: textVisibility,
              child: Positioned(
                top: (MediaQuery.of(context).size.height -
                        HomePageDHState.returnAppBar[1]) *
                    0.55,
                left: MediaQuery.of(context).size.width * 0.09,
                width: MediaQuery.of(context).size.width * 0.28,
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
                              'a = r',
                              style: TextStyle(
                                fontSize: MediaQuery.of(context).size.width *
                                    longWidth,
                              ),
                            ),
                          ),
                          Text(
                            'S',
                            style: TextStyle(
                              fontSize: MediaQuery.of(context).size.width *
                                  longWidth /
                                  1.5,
                            ),
                          ),
                          Text(
                            '(Alice)',
                            style: TextStyle(
                              fontSize: MediaQuery.of(context).size.width *
                                  longWidth /
                                  1.5,
                              color: Colors.red,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15.0),
                            child: Text(
                              ' mod n = $r',
                              style: TextStyle(
                                fontSize: MediaQuery.of(context).size.width *
                                    longWidth,
                              ),
                            ),
                          ),
                          Text(
                            '$secretAlice',
                            style: TextStyle(
                              fontSize: MediaQuery.of(context).size.width *
                                  longWidth /
                                  1.5,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15.0),
                            child: Text(
                              ' mod $n = ${pow(r, secretAlice) % n}',
                              style: TextStyle(
                                fontSize: MediaQuery.of(context).size.width *
                                    longWidth,
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

            // Left-Text5
            Visibility(
              visible: textVisibility,
              child: Positioned(
                top: (MediaQuery.of(context).size.height -
                        HomePageDHState.returnAppBar[1]) *
                    0.55,
                left: MediaQuery.of(context).size.width * 0.09,
                width: MediaQuery.of(context).size.width * 0.28,
                height: MediaQuery.of(context).size.height * 0.1,
                child: AnimatedOpacity(
                  opacity: contentOpacity[5],
                  duration: Duration(seconds: seconds),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: FittedBox(
                      child: Text(
                        'a = ${pow(r, secretAlice) % n}; b = ${pow(r, secretBob) % n}',
                        style: TextStyle(
                          fontSize:
                              MediaQuery.of(context).size.width * shortWidth,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            // Right-Text2
            Visibility(
              visible: textVisibility,
              child: Positioned(
                top: (MediaQuery.of(context).size.height -
                        HomePageDHState.returnAppBar[1]) *
                    0.35,
                right: MediaQuery.of(context).size.width * 0.02, //-0.01
                width: MediaQuery.of(context).size.width * 0.2,
                height: MediaQuery.of(context).size.height * 0.1,
                child: AnimatedOpacity(
                  opacity: contentOpacity[1],
                  duration: Duration(seconds: seconds),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: FittedBox(
                      child: Text(
                        'n = $n; r = $r',
                        style: TextStyle(
                          fontSize:
                              MediaQuery.of(context).size.width * shortWidth,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            // Right-Text3
            Visibility(
              visible: textVisibility,
              child: Positioned(
                top: (MediaQuery.of(context).size.height -
                        HomePageDHState.returnAppBar[1]) *
                    0.45,
                right: MediaQuery.of(context).size.width * 0.02, //-0.01
                width: MediaQuery.of(context).size.width * 0.2,
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
                      Text(
                        ' = $secretBob',
                        style: TextStyle(
                          fontSize:
                              MediaQuery.of(context).size.width * middleWidth,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // Right-Text4_1
            Visibility(
              visible: textVisibility,
              child: Positioned(
                top: (MediaQuery.of(context).size.height -
                        HomePageDHState.returnAppBar[1]) *
                    0.51, //0.55
                right: MediaQuery.of(context).size.width * 0.02, //-0.01
                width: MediaQuery.of(context).size.width * 0.2,
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
                              'b = r',
                              style: TextStyle(
                                fontSize: MediaQuery.of(context).size.width *
                                    shortWidth,
                              ),
                            ),
                          ),
                          Text(
                            'S',
                            style: TextStyle(
                              fontSize: MediaQuery.of(context).size.width *
                                  shortWidth /
                                  1.5,
                            ),
                          ),
                          Text(
                            '(Bob)',
                            style: TextStyle(
                              fontSize: MediaQuery.of(context).size.width *
                                  shortWidth /
                                  1.5,
                              color: Colors.red,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15.0),
                            child: Text(
                              'mod n ',
                              style: TextStyle(
                                fontSize: MediaQuery.of(context).size.width *
                                    shortWidth,
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

            // Right-Text4_2
            Visibility(
              visible: textVisibility,
              child: Positioned(
                top: (MediaQuery.of(context).size.height -
                        HomePageDHState.returnAppBar[1]) *
                    0.61,
                right: MediaQuery.of(context).size.width * 0.02, //0.01
                width: MediaQuery.of(context).size.width * 0.2,
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
                              '= $r',
                              style: TextStyle(
                                fontSize: MediaQuery.of(context).size.width *
                                    shortWidth,
                              ),
                            ),
                          ),
                          Text(
                            '$secretBob',
                            style: TextStyle(
                              fontSize: MediaQuery.of(context).size.width *
                                  shortWidth /
                                  1.5,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15.0),
                            child: Text(
                              ' mod $n = ${pow(r, secretBob) % n}',
                              style: TextStyle(
                                fontSize: MediaQuery.of(context).size.width *
                                    shortWidth,
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

            // Right-Text 3
            Visibility(
              visible: textVisibility,
              child: Positioned(
                top: (MediaQuery.of(context).size.height -
                        HomePageDHState.returnAppBar[1]) *
                    0.55,
                right: MediaQuery.of(context).size.width * 0.02, //-0.01
                width: MediaQuery.of(context).size.width * 0.2,
                height: MediaQuery.of(context).size.height * 0.1,
                child: AnimatedOpacity(
                  opacity: contentOpacity[5],
                  duration: Duration(seconds: seconds),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: FittedBox(
                      child: Text(
                        'b = ${pow(r, secretBob) % n}; a = ${pow(r, secretAlice) % n}',
                        style: TextStyle(
                          fontSize:
                              MediaQuery.of(context).size.width * shortWidth,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            // Bottom-Text2
            Visibility(
              visible: textVisibility,
              child: Positioned(
                top: (MediaQuery.of(context).size.height -
                        HomePageDHState.returnAppBar[1]) *
                    0.33,
                left: MediaQuery.of(context).size.width * 0.56,
                width: MediaQuery.of(context).size.width * 0.2,
                height: MediaQuery.of(context).size.height * 0.1,
                child: AnimatedOpacity(
                  opacity: contentOpacity[1],
                  duration: Duration(seconds: seconds),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: FittedBox(
                      child: Text(
                        'n = $n; r = $r',
                        style: TextStyle(
                          fontSize:
                              MediaQuery.of(context).size.width * shortWidth,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            // Bottom-Text3
            Visibility(
              visible: textVisibility,
              child: Positioned(
                top: (MediaQuery.of(context).size.height -
                        HomePageDHState.returnAppBar[1]) *
                    0.41,
                left: MediaQuery.of(context).size.width * 0.56,
                width: MediaQuery.of(context).size.width * 2,
                height: MediaQuery.of(context).size.height * 0.1,
                child: AnimatedOpacity(
                  opacity: contentOpacity[6],
                  duration: Duration(seconds: seconds),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: FittedBox(
                      child: Text(
                        'a = ${pow(r, secretAlice) % n}',
                        style: TextStyle(
                          fontSize:
                              MediaQuery.of(context).size.width * shortWidth,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            // Bottom-Text4
            Visibility(
              visible: textVisibility,
              child: Positioned(
                top: (MediaQuery.of(context).size.height -
                        HomePageDHState.returnAppBar[1]) *
                    0.51,
                left: MediaQuery.of(context).size.width * 0.56,
                width: MediaQuery.of(context).size.width * 0.28,
                height: MediaQuery.of(context).size.height * 0.1,
                child: AnimatedOpacity(
                  opacity: contentOpacity[6],
                  duration: Duration(seconds: seconds),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: FittedBox(
                      child: Text(
                        'b = ${pow(r, secretBob) % n}',
                        style: TextStyle(
                          fontSize:
                              MediaQuery.of(context).size.width * shortWidth,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            // Top-Text3
            Visibility(
              visible: textVisibility,
              child: Positioned(
                top: (MediaQuery.of(context).size.height -
                        HomePageDHState.returnAppBar[1]) *
                    0.24,
                left: MediaQuery.of(context).size.width * 0.515,
                width: MediaQuery.of(context).size.width * 0.2,
                height: MediaQuery.of(context).size.height * 0.1,
                child: AnimatedOpacity(
                  opacity: contentOpacity[7],
                  duration: Duration(seconds: seconds),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: FittedBox(
                      child: Text(
                        'b = ${pow(r, secretBob) % n}',
                        style: TextStyle(
                          fontSize:
                              MediaQuery.of(context).size.width * shortWidth,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            // Top-Text2
            Visibility(
              visible: textVisibility,
              child: Positioned(
                top: (MediaQuery.of(context).size.height -
                        HomePageDHState.returnAppBar[1]) *
                    fromTop,
                left: MediaQuery.of(context).size.width * 0.515,
                width: MediaQuery.of(context).size.width * 0.2,
                height: MediaQuery.of(context).size.height * 0.1,
                child: AnimatedOpacity(
                  opacity: contentOpacity[7],
                  duration: Duration(seconds: seconds),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: FittedBox(
                      child: Text(
                        'a = ${pow(r, secretAlice) % n}',
                        style: TextStyle(
                          fontSize:
                              MediaQuery.of(context).size.width * shortWidth,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            // Top-Text1
            Visibility(
              visible: textVisibility,
              child: Positioned(
                top: (MediaQuery.of(context).size.height -
                        HomePageDHState.returnAppBar[1]) *
                    fromTop,
                left: MediaQuery.of(context).size.width * 0.45,
                width: MediaQuery.of(context).size.width * 0.2,
                height: MediaQuery.of(context).size.height * 0.1,
                child: AnimatedOpacity(
                  opacity: contentOpacity[8],
                  duration: Duration(seconds: seconds),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: FittedBox(
                      child: Text(
                        'n = $n; r = $r',
                        style: TextStyle(
                          fontSize:
                              MediaQuery.of(context).size.width * middleWidth,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            // Left Modulo Result
            Visibility(
              visible: textVisibility,
              child: Positioned(
                top: (MediaQuery.of(context).size.height -
                        HomePageDHState.returnAppBar[1]) *
                    0.6,
                left: MediaQuery.of(context).size.width * 0.09,
                width: MediaQuery.of(context).size.width * 0.28,
                height: (MediaQuery.of(context).size.height -
                        HomePageDHState.returnAppBar[1]) *
                    0.1,
                child: AnimatedOpacity(
                  opacity: contentOpacity[6],
                  duration: Duration(seconds: seconds),
                  child: Wrap(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 1.0),
                        child: Text(
                          'S = ${pow(r, secretBob) % n}',
                          style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.width * middleWidth,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Text(
                        '$secretAlice',
                        style: TextStyle(
                          fontSize: (MediaQuery.of(context).size.width *
                                  middleWidth) /
                              1.5,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        ' mod $n = ${pow(pow(r, secretBob) % n, secretAlice) % n} ',
                        style: TextStyle(
                          fontSize:
                              MediaQuery.of(context).size.width * middleWidth,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // Right Modulo Result_1
            Visibility(
              visible: textVisibility,
              child: Positioned(
                top: (MediaQuery.of(context).size.height -
                        HomePageDHState.returnAppBar[1]) *
                    0.6,
                right: MediaQuery.of(context).size.width * -0.06, //-0.09
                width: MediaQuery.of(context).size.width * 0.28,
                height: (MediaQuery.of(context).size.height -
                        HomePageDHState.returnAppBar[1]) *
                    0.1,
                child: AnimatedOpacity(
                  opacity: contentOpacity[6],
                  duration: Duration(seconds: seconds),
                  child: Wrap(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 1.0),
                        child: Text(
                          'S = ${pow(r, secretAlice) % n}',
                          style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.width * middleWidth,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Text(
                        '$secretBob',
                        style: TextStyle(
                          fontSize: (MediaQuery.of(context).size.width *
                                  middleWidth) /
                              1.5,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        ' mod $n',
                        style: TextStyle(
                          fontSize:
                              MediaQuery.of(context).size.width * middleWidth,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // Right Modulo Result_2
            Visibility(
              visible: textVisibility,
              child: Positioned(
                top: (MediaQuery.of(context).size.height -
                        HomePageDHState.returnAppBar[1]) *
                    0.72,
                right: MediaQuery.of(context).size.width * 0.078,
                width: MediaQuery.of(context).size.width * 0.1,
                height: MediaQuery.of(context).size.height * 0.1,
                child: AnimatedOpacity(
                  opacity: contentOpacity[6],
                  duration: Duration(seconds: seconds),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: FittedBox(
                      child: Text(
                        ' = ${pow(pow(r, secretAlice) % n, secretBob) % n}',
                        style: TextStyle(
                          fontSize:
                              MediaQuery.of(context).size.width * middleWidth,
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
                      videoTimerSlide3DH.cancel();
                    }
                    videoButton = true;
                    seconds = Global.slider;

                    if (indexVisibilitySlide3DH < 5 && delay) {
                      indexVisibilitySlide3DH++;
                      // Languages.player.play("assets/steps.mp3");
                      stepsVisibility[0] = !stepsVisibility[0];
                      stepsVisibility[1] = !stepsVisibility[1];
                    }
                    if (indexVisibilitySlide3DH == 0) {
                      contentOpacity[0] = 1.0;
                    } else if (indexVisibilitySlide3DH == 1 && delay) {
                      contentOpacity[0] = 0.0;
                      contentOpacity[1] = 1.0;
                      contentOpacity[2] = 1.0;
                      contentOpacity[8] = 1.0;
                    } else if (indexVisibilitySlide3DH == 2 && delay) {
                      contentOpacity[2] = 0.0;
                      contentOpacity[8] = 0.0;
                      contentOpacity[3] = 1.0;
                    } else if (indexVisibilitySlide3DH == 3 && delay) {
                      contentOpacity[4] = 1.0;
                    } else if (indexVisibilitySlide3DH == 4 && delay) {
                      contentOpacity[2] = 1.0;
                      contentOpacity[4] = 0.0;
                      contentOpacity[5] = 1.0;
                      contentOpacity[7] = 1.0;
                    } else if (indexVisibilitySlide3DH == 5 && delay) {
                      contentOpacity[2] = 0.0;
                      contentOpacity[5] = 0.0;
                      contentOpacity[7] = 0.0;
                      contentOpacity[6] = 1.0;
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
                      videoTimerSlide3DH.cancel();
                    }
                    videoButton = true;

                    seconds = Global.slider;
                    if (indexVisibilitySlide3DH == 0) text = '';

                    if (indexVisibilitySlide3DH == 0) {
                      // Languages.player.play("assets/steps.mp3");
                      indexVisibilitySlide3DH--;
                      contentOpacity[0] = 0.0;
                    } else if (indexVisibilitySlide3DH == 1 && delay) {
                      contentOpacity[0] = 1.0;
                      contentOpacity[1] = 0.0;
                      contentOpacity[2] = 0.0;
                      contentOpacity[8] = 0.0;
                    } else if (indexVisibilitySlide3DH == 2 && delay) {
                      contentOpacity[2] = 1.0;
                      contentOpacity[8] = 1.0;
                      contentOpacity[3] = 0.0;
                    } else if (indexVisibilitySlide3DH == 3 && delay) {
                      contentOpacity[4] = 0.0;
                    } else if (indexVisibilitySlide3DH == 4 && delay) {
                      contentOpacity[2] = 0.0;
                      contentOpacity[4] = 1.0;
                      contentOpacity[5] = 0.0;
                      contentOpacity[7] = 0.0;
                    } else if (indexVisibilitySlide3DH == 5 && delay) {
                      contentOpacity[2] = 1.0;
                      contentOpacity[5] = 1.0;
                      contentOpacity[7] = 1.0;
                      contentOpacity[6] = 0.0;
                    }
                    if (indexVisibilitySlide3DH > 0 && delay) {
                      if (indexVisibilitySlide3DH == 0) {
                        delay = false;
                      }
                      indexVisibilitySlide3DH--;
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
                    timerSlide3DH = Timer(
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
                  nControllerOldVal.text = nController.text;
                  rControllerOldVal.text = rController.text;
                  secretBobControllerOldVal.text = secretBobController.text;
                  secretAliceControllerOldVal.text = secretAliceController.text;
                  nOldVal = n;
                  rOldVal = r;
                  secretBobOldVal = secretBob;
                  scretAliceOldVal = secretAlice;
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
                                    AppLocalizations.of(context)!
                                        .animationSpeed,
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    // 'Sprache'
                                    AppLocalizations.of(context)!.appLanguage,
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  const Text(
                                    'n = ',
                                    textAlign: TextAlign.center,
                                  ),
                                  const SizedBox(height: 30),
                                  const Text(
                                    'r = ',
                                    textAlign: TextAlign.center,
                                  ),
                                  const SizedBox(height: 30),
                                  Text(
                                    // 'Secret (Bob) = ',
                                    AppLocalizations.of(context)!.secretBob,
                                    textAlign: TextAlign.center,
                                  ),
                                  const SizedBox(height: 30),
                                  Text(
                                    // 'Secret (Alice) = ',
                                    AppLocalizations.of(context)!.secretAlice,
                                    textAlign: TextAlign.center,
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
                                                  videoTimerSlide3DH.cancel();
                                                  videoTimerSlide3DH =
                                                      videoTimerProblem();
                                                }
                                              } else if (Global.val == 3) {
                                                Global.slider = Global.val - 2;
                                                if (!videoButton) {
                                                  videoTimerSlide3DH.cancel();
                                                  videoTimerSlide3DH =
                                                      videoTimerProblem();
                                                }
                                              } else {
                                                Global.slider = Global.val;
                                                if (!videoButton) {
                                                  videoTimerSlide3DH.cancel();
                                                  videoTimerSlide3DH =
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
                                                  Global.selectedLanguage =
                                                      false;
                                                  MyApp.of(context)!.setLocale(
                                                      const Locale.fromSubtags(
                                                          languageCode: 'en'));
                                                  Global.locale = 'en';
                                                } else {
                                                  Global.selectedLanguage =
                                                      true;
                                                  MyApp.of(context)!.setLocale(
                                                      const Locale.fromSubtags(
                                                          languageCode: 'de'));
                                                  Global.locale = 'de';
                                                }
                                              },
                                            );
                                            Provider.of<LanguageProvider>(
                                                    context,
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
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(left: 18.0),
                                    child: StatefulBuilder(
                                      builder: (BuildContext context,
                                          void Function(void Function())
                                              setState) {
                                        return SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.1,
                                          height: 30,
                                          child: TextField(
                                            keyboardType: TextInputType.number,
                                            controller: nController,
                                            inputFormatters: <
                                                TextInputFormatter>[
                                              LengthLimitingTextInputFormatter(
                                                  3),
                                              FilteringTextInputFormatter
                                                  .digitsOnly
                                            ],
                                            decoration: const InputDecoration(
                                              contentPadding:
                                                  EdgeInsets.only(left: 10),
                                              border: OutlineInputBorder(),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  Container(
                                    margin: const EdgeInsets.only(left: 18.0),
                                    child: StatefulBuilder(
                                      builder: (BuildContext context,
                                          void Function(void Function())
                                              setState) {
                                        return SizedBox(
                                          // width: 100,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.1,
                                          height: 30,
                                          child: TextField(
                                            keyboardType: TextInputType.number,
                                            controller: rController,
                                            inputFormatters: <
                                                TextInputFormatter>[
                                              LengthLimitingTextInputFormatter(
                                                  3),
                                              FilteringTextInputFormatter
                                                  .digitsOnly
                                            ],
                                            decoration: const InputDecoration(
                                              contentPadding:
                                                  EdgeInsets.only(left: 10),
                                              border: OutlineInputBorder(),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  Container(
                                    margin: const EdgeInsets.only(left: 18.0),
                                    child: StatefulBuilder(
                                      builder: (BuildContext context,
                                          void Function(void Function())
                                              setState) {
                                        return SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.1,
                                          height: 30,
                                          child: TextField(
                                            keyboardType: TextInputType.number,
                                            controller: secretBobController,
                                            inputFormatters: <
                                                TextInputFormatter>[
                                              LengthLimitingTextInputFormatter(
                                                  3),
                                              FilteringTextInputFormatter
                                                  .digitsOnly
                                            ],
                                            decoration: const InputDecoration(
                                              contentPadding:
                                                  EdgeInsets.only(left: 10),
                                              border: OutlineInputBorder(),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  Container(
                                    margin: const EdgeInsets.only(left: 18.0),
                                    child: StatefulBuilder(
                                      builder: (BuildContext context,
                                          void Function(void Function())
                                              setState) {
                                        return SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.1,
                                          height: 30,
                                          child: TextField(
                                            keyboardType: TextInputType.number,
                                            controller: secretAliceController,
                                            inputFormatters: <
                                                TextInputFormatter>[
                                              LengthLimitingTextInputFormatter(
                                                  3),
                                              FilteringTextInputFormatter
                                                  .digitsOnly
                                            ],
                                            decoration: const InputDecoration(
                                              contentPadding:
                                                  EdgeInsets.only(left: 10),
                                              border: OutlineInputBorder(),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () {
                              if (nController.text.isNotEmpty &&
                                  rController.text.isNotEmpty &&
                                  secretBobController.text.isNotEmpty &&
                                  secretAliceController.text.isNotEmpty) {
                                if (isPrime(int.parse(nController.text)) &&
                                    isPrimitiveRoot(int.parse(rController.text),
                                        int.parse(nController.text))) {
                                  n = int.parse(nController.text);
                                  r = int.parse(rController.text);
                                  secretAlice =
                                      int.parse(secretAliceController.text);
                                  secretBob =
                                      int.parse(secretBobController.text);
                                  Navigator.pop(context, 'OK');
                                }
                                setState(
                                  () {
                                    isCanceled = false;
                                    if (!isPrime(int.parse(nController.text))) {
                                      showFlushBarMessage(
                                          const Icon(
                                            Icons.error,
                                            size: 32,
                                            color: Colors.white,
                                          ),
                                          // 'Error',
                                          AppLocalizations.of(context)!
                                              .errorTitel,
                                          // 'n must be prime number',
                                          AppLocalizations.of(context)!
                                              .primeNumberErrorMessage,
                                          Colors.red);
                                    } else if (!isPrimitiveRoot(
                                        int.parse(rController.text),
                                        int.parse(nController.text))) {
                                      showFlushBarMessage(
                                          const Icon(
                                            Icons.error,
                                            size: 32,
                                            color: Colors.white,
                                          ),
                                          // 'Error',
                                          AppLocalizations.of(context)!
                                              .errorTitel,
                                          // 'n must be prime number',
                                          AppLocalizations.of(context)!
                                              .primitiveRootErrorMessage,
                                          Colors.red);
                                    }
                                  },
                                );
                              } else {
                                showFlushBarMessage(
                                    const Icon(
                                      Icons.error,
                                      size: 32,
                                      color: Colors.white,
                                    ),
                                    // 'Error',
                                    AppLocalizations.of(context)!.errorTitel,
                                    // 'Empty values are not accepted!',
                                    AppLocalizations.of(context)!
                                        .emptyErrorMessage,
                                    Colors.red);
                              }
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
                                n = nOldVal;
                                r = rOldVal;
                                secretBob = secretBobOldVal;
                                secretAlice = scretAliceOldVal;
                                nController.text = nControllerOldVal.text;
                                rController.text = rControllerOldVal.text;
                                secretBobController.text =
                                    secretBobControllerOldVal.text;
                                secretAliceController.text =
                                    secretAliceControllerOldVal.text;
                                isCanceled = true;
                              });
                            },
                            child: Text(AppLocalizations.of(context)!.cancel),
                          ),
                        ],
                      ),
                    ),
                  ).then(
                    (value) {
                      if (!isCanceled) {
                        showFlushBarMessage(
                          const Icon(
                            Icons.check,
                            size: 32,
                            color: Colors.white,
                          ),
                          // 'Done',
                          AppLocalizations.of(context)!.doneTitel,
                          // 'Your values have been set',
                          AppLocalizations.of(context)!.correctMessage,
                          Colors.green,
                        );
                      }
                    },
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
                    nOldVal = 0;
                    rOldVal = 0;
                    secretBobOldVal = 0;
                    scretAliceOldVal = 0;
                    sliderOldValue = 0;
                    valOldValue = 0;
                    n = 17;
                    r = 3;
                    secretAlice = 9;
                    secretBob = 7;
                    Global.slider = 3;
                    Global.val = 1;
                    Global.replacedSliderValue = Global.slider;
                    indexVisibilitySlide3DH = -1;
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
                    seconds = Global.slider;
                    dropButton = false;
                    desc = true;
                    descVisbility = desc;
                    text = '';
                    videoButton = true;
                    delayTimer.cancel();
                    videoTimerVariable.cancel();
                    timerSlide3DH.cancel();
                    videoTimerSlide3DH.cancel();

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
                      0.0
                    ];
                    textVisibility = false;

                    nController = TextEditingController()..text = n.toString();
                    rController = TextEditingController()..text = r.toString();
                    secretBobController = TextEditingController()
                      ..text = secretBob.toString();
                    secretAliceController = TextEditingController()
                      ..text = secretAlice.toString();

                    nControllerOldVal = TextEditingController()
                      ..text = n.toString();
                    rControllerOldVal = TextEditingController()
                      ..text = r.toString();
                    secretBobControllerOldVal = TextEditingController()
                      ..text = secretBob.toString();
                    secretAliceControllerOldVal = TextEditingController()
                      ..text = secretAlice.toString();
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
                      videoTimerSlide3DH = videoTimerProblem();
                    } else {
                      videoTimerSlide3DH.cancel();
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

                    timerSlide3DH = Timer(
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
                    '3: ${indexVisibilitySlide3DH + 1} / 6',
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
