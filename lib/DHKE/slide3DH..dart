// ignore_for_file: file_names

import 'dart:async';
import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

import '../Painters/arrow-painter.dart';
import '../Painters/circle-container.dart';
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
import 'package:another_flushbar/flushbar.dart';

class Slide3DH extends StatefulWidget {
  const Slide3DH({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  Slide3DHState createState() => Slide3DHState();
}

bool isTextFieldFocused = false;
final scrollController = ScrollController();
List isLastIndex = [false, true];
bool scaleEnabledOldVal = false;
bool switchOldValue = false;
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
Timer pageNumberTimer = Timer(Duration(seconds: seconds), () {});
Timer timerSlide3DH = Timer(const Duration(seconds: 1), () {});
Timer videoTimerSlide3DH =
    Timer.periodic(Duration(seconds: Global.slider), (videoTimer) {});

TextEditingController pageController3 = TextEditingController()
  ..text = (indexVisibilitySlide3DH + 1).toString();

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
double verticalTopOpacity = 0.0;
double verticalBottomOpacity = 0.0;

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

class Slide3DHState extends State<Slide3DH>
    with SingleTickerProviderStateMixin {
  FocusNode focus = FocusNode();
  @override
  void initState() {
    super.initState();
    focus.addListener(onFocusChange);
    textVisibility = true;
  }

  bool onFocusChange() {
    // isTextFieldFocused = focus.hasFocus;
    debugPrint("Focus: ${focus.hasFocus.toString()}");
    return focus.hasFocus;
  }

  @override
  // ignore: must_call_super
  void dispose() {
    focus.removeListener(onFocusChange);
    focus.dispose();
    Global.replacedSliderValue = Global.slider;
    isLastIndex = [false, true];
    indexVisibilitySlide3DH = -1;
    pageController3 = TextEditingController()..text = (0).toString();
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
    ];
    verticalTopOpacity = 0.0;
    verticalBottomOpacity = 0.0;
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
      duration: const Duration(seconds: 1),
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

  Positioned bulletPosition(
      double top, double left, double opacity, Color color, bool vis) {
    return Positioned(
      top: (MediaQuery.of(context).size.height -
              HomePageDHState.returnAppBar[1]) *
          top,
      left: MediaQuery.of(context).size.width * left,
      // duration: Duration(seconds: seconds),
      child: Visibility(
        visible: vis,
        child: AnimatedOpacity(
          duration: const Duration(seconds: 1),
          opacity: opacity,
          child: CustomPaint(
            size: Size(MediaQuery.of(context).size.width * 0.01,
                MediaQuery.of(context).size.height * 0.02),
            painter: CirclePainter(color, PaintingStyle.fill),
          ),
        ),
      ),
    );
  }

  Timer selectPageNumber(int a) {
    // stopFunction();
    pageNumberTimer = Timer.periodic(
      const Duration(seconds: 0),
      (Timer pageNumberTimer) {
        setState(
          () {
            delay = true;
            seconds = 0;
            if (indexVisibilitySlide3DH == a) {
              // openDialog(false);
              pageNumberTimer.cancel();
            }
            if (indexVisibilitySlide3DH < a && delay) {
              // Languages.player.play("assets/steps.mp3");
              indexVisibilitySlide3DH++;
              pageController3 = TextEditingController()
                ..text = (indexVisibilitySlide3DH + 1).toString();
              stepsVisibility[0] = !stepsVisibility[0];
              stepsVisibility[1] = !stepsVisibility[1];
            }
            if (indexVisibilitySlide3DH == 0) {
              contentOpacity[0] = 1.0;
              isLastIndex[1] = false;
            } else if (indexVisibilitySlide3DH == 1 && delay) {
              contentOpacity[0] = 0.0;
              contentOpacity[1] = 1.0;
              contentOpacity[2] = 1.0;
              verticalTopOpacity = 1.0;
              contentOpacity[8] = 1.0;
            } else if (indexVisibilitySlide3DH == 2 && delay) {
              contentOpacity[2] = 0.0;
              verticalTopOpacity = 0.0;
              contentOpacity[8] = 0.0;
              contentOpacity[3] = 1.0;
            } else if (indexVisibilitySlide3DH == 3 && delay) {
              contentOpacity[4] = 1.0;
            } else if (indexVisibilitySlide3DH == 4 && delay) {
              contentOpacity[2] = 1.0;
              verticalBottomOpacity = 1.0;
              contentOpacity[4] = 0.0;
              contentOpacity[5] = 1.0;
              contentOpacity[7] = 1.0;
            } else if (indexVisibilitySlide3DH == 5 && delay) {
              contentOpacity[2] = 0.0;
              verticalTopOpacity = 0.0;
              verticalBottomOpacity = 0.0;
              contentOpacity[5] = 0.0;
              contentOpacity[7] = 0.0;
              contentOpacity[6] = 1.0;
              isLastIndex[0] = true;
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
            seconds = Global.slider;
            if (indexVisibilitySlide3DH == 5) {
              openDialog(false);
              videoTimerVariable.cancel();
            }
            if (indexVisibilitySlide3DH < 5 && delay) {
              // Languages.player.play("assets/steps.mp3");
              indexVisibilitySlide3DH++;
              pageController3 = TextEditingController()
                ..text = (indexVisibilitySlide3DH + 1).toString();
              stepsVisibility[0] = !stepsVisibility[0];
              stepsVisibility[1] = !stepsVisibility[1];
            }
            if (indexVisibilitySlide3DH == 0) {
              contentOpacity[0] = 1.0;
              isLastIndex[1] = false;
            } else if (indexVisibilitySlide3DH == 1 && delay) {
              contentOpacity[0] = 0.0;
              contentOpacity[1] = 1.0;
              contentOpacity[2] = 1.0;
              verticalTopOpacity = 1.0;
              contentOpacity[8] = 1.0;
            } else if (indexVisibilitySlide3DH == 2 && delay) {
              contentOpacity[2] = 0.0;
              verticalTopOpacity = 0.0;
              contentOpacity[8] = 0.0;
              contentOpacity[3] = 1.0;
            } else if (indexVisibilitySlide3DH == 3 && delay) {
              contentOpacity[4] = 1.0;
            } else if (indexVisibilitySlide3DH == 4 && delay) {
              contentOpacity[2] = 1.0;
              verticalBottomOpacity = 1.0;
              contentOpacity[4] = 0.0;
              contentOpacity[5] = 1.0;
              contentOpacity[7] = 1.0;
            } else if (indexVisibilitySlide3DH == 5 && delay) {
              contentOpacity[2] = 0.0;
              verticalTopOpacity = 0.0;
              verticalBottomOpacity = 0.0;
              contentOpacity[5] = 0.0;
              contentOpacity[7] = 0.0;
              contentOpacity[6] = 1.0;
              isLastIndex[0] = true;
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

  Positioned arrowPosition(
      {required double p1x,
      required double p1y,
      required double p2x,
      required double p2y,
      required double opacity}) {
    return Positioned(
      top: (MediaQuery.of(context).size.height -
              HomePageDHState.returnAppBar[1]) *
          0.1,
      left: MediaQuery.of(context).size.width * 0.535,
      // duration: Duration(seconds: seconds),
      child: AnimatedOpacity(
        opacity: opacity,
        duration: Duration(seconds: seconds),
        child: CustomPaint(
          size: Size(
              MediaQuery.of(context).size.width * 0.28,
              (MediaQuery.of(context).size.height -
                      HomePageDHState.returnAppBar[1]) *
                  0.47),
          painter: ArrowPainter(
            p1x: MediaQuery.of(context).size.width * p1x,
            p1y: (MediaQuery.of(context).size.height -
                    HomePageDHState.returnAppBar[1]) *
                p1y,
            p2x: MediaQuery.of(context).size.width * p2x,
            p2y: (MediaQuery.of(context).size.height -
                    HomePageDHState.returnAppBar[1]) *
                p2y,
            arrowSizeVal: MediaQuery.of(context).size.width * 0.015,
            arrowColor: Colors.black,
          ),
        ),
      ),
    );
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
              0.2,
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
              0.5,
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
            // Visibility(
            //   visible: textVisibility,
            //   child: MyPositioned(
            //     true,
            //     false,
            //     false,
            //     false,
            //     0.2,
            //     0.25,
            //     0.0,
            //     0.0,
            //     0.5,
            //     0.3,
            //     true,
            //     'assets/arrow-horizontal.jpeg',
            //     BoxFit.fill,
            //     seconds,
            //     HomePageDHState.returnAppBar[1],
            //     contentOpacity[2],
            //   ),
            // ),

            arrowPosition(
                p1x: -0.34,
                p1y: 0.08,
                p2x: 0.18,
                p2y: 0.08,
                opacity: contentOpacity[2]),

            // Arrow-vertical-Image Position
            // Visibility(
            //   visible: textVisibility,
            //   child: MyPositioned(
            //     true,
            //     false,
            //     false,
            //     false,
            //     0.205,
            //     0.195,
            //     0.0,
            //     0.0,
            //     0.5,
            //     0.2,
            //     true,
            //     'assets/arrow-vertical.jpeg',
            //     BoxFit.fill,
            //     seconds,
            //     HomePageDHState.returnAppBar[1],
            //     contentOpacity[2],
            //   ),
            // ),
            arrowPosition(
              p1x: -0.075,
              p1y: 0.08,
              p2x: -0.075,
              p2y: 0.36,
              // opacity: contentOpacity[2],
              opacity: verticalTopOpacity,
            ),
            arrowPosition(
              p1x: -0.075,
              p1y: 0.14,
              p2x: -0.075,
              p2y: 0.36,
              // opacity: contentOpacity[4],
              opacity: verticalBottomOpacity,
            ),

            bulletPosition(0.25, 0.457, 1.0, Colors.white,
                indexVisibilitySlide3DH < 4 ? true : true),
            bulletPosition(0.32, 0.457, 1.0, Colors.white, true),
            bulletPosition(0.39, 0.457, 1.0, Colors.white, true),
            // Left-Arrow-horizontal-Image Position
            // Visibility(
            //   visible: textVisibility,
            //   child: MyPositioned(
            //     true,
            //     false,
            //     false,
            //     false,
            //     0.23,
            //     0.25,
            //     0.0,
            //     0.0,
            //     0.5,
            //     0.02,
            //     true,
            //     'assets/left-arrow-horizontal.jpeg',
            //     BoxFit.fill,
            //     seconds,
            //     HomePageDHState.returnAppBar[1],
            //     contentOpacity[7],
            //   ),
            // ),
            arrowPosition(
              p1x: 0.18,
              p1y: 0.14,
              p2x: -0.34,
              p2y: 0.14,
              opacity: contentOpacity[7],
            ),
            // Upper-Text
            Positioned(
              top: (MediaQuery.of(context).size.height -
                      HomePageDHState.returnAppBar[1]) *
                  0.03,
              left: MediaQuery.of(context).size.width * 0.05,
              width: MediaQuery.of(context).size.width * 0.9,
              height: (MediaQuery.of(context).size.height -
                      HomePageDHState.returnAppBar[1]) *
                  0.06,
              child: Align(
                alignment: Alignment.topLeft,
                child: FittedBox(
                  child: Text(
                    AppLocalizations.of(context)!.text31,
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width *
                          0.016, //longWidth,
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
                left: MediaQuery.of(context).size.width * 0.05,
                width: MediaQuery.of(context).size.width * 0.4,
                height: (MediaQuery.of(context).size.height -
                        HomePageDHState.returnAppBar[1]) *
                    0.1,
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
                left: MediaQuery.of(context).size.width * 0.05,
                width: MediaQuery.of(context).size.width * 0.1,
                height: (MediaQuery.of(context).size.height -
                        HomePageDHState.returnAppBar[1]) *
                    0.1,
                child: AnimatedOpacity(
                  opacity: contentOpacity[1],
                  duration: Duration(seconds: seconds),
                  child: FittedBox(
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'n = $n; r = $r',
                        // style: TextStyle(
                        //   fontSize: MediaQuery.of(context).size.width *
                        //       0.02, //shortWidth,
                        // ),
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
                left: MediaQuery.of(context).size.width * 0.05,
                width: MediaQuery.of(context).size.width * 0.12,
                height: (MediaQuery.of(context).size.height -
                        HomePageDHState.returnAppBar[1]) *
                    0.1,
                child: AnimatedOpacity(
                  opacity: contentOpacity[3],
                  duration: Duration(seconds: seconds),
                  // child: Text(
                  //   'Secret s_A = $secretAlice',
                  //   style: TextStyle(
                  //     fontSize: MediaQuery.of(context).size.width * 0.02,
                  //   ),
                  // ),
                  child: FittedBox(
                    child: Wrap(
                      children: [
                        const Text(
                          'Secret ',
                          // style: TextStyle(
                          //   fontSize: MediaQuery.of(context).size.width *
                          //       0.02, //middleWidth,
                          // ),
                          textAlign: TextAlign.left,
                        ),
                        // const Text(
                        //   's_A ',
                        //   style: TextStyle(
                        //     color: Colors.red,
                        //     // fontSize: MediaQuery.of(context).size.width *
                        //     //     0.02, //middleWidth,
                        //   ),
                        //   textAlign: TextAlign.left,
                        // ),
                        RichText(
                          text: TextSpan(
                            style: const TextStyle(
                              color: Colors.black,
                            ),
                            children: [
                              const TextSpan(
                                text: 'S',
                                style: TextStyle(
                                  color: Colors.red,
                                ),
                              ),
                              WidgetSpan(
                                child: Transform.translate(
                                  offset: const Offset(0, 6),
                                  child: const Text(
                                    'A',
                                    //superscript is usually smaller in size
                                    textScaleFactor: 0.8,
                                    style: TextStyle(color: Colors.red),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        // Container(
                        //   padding: EdgeInsets.only(top: marginValue),
                        //   child: Text(
                        //     '(Alice)',
                        //     style: TextStyle(
                        //       // fontSize: MediaQuery.of(context).size.width * 0.015,
                        //       fontSize: (MediaQuery.of(context).size.width *
                        //               shortWidth) /
                        //           2,
                        //       color: Colors.red[800],
                        //     ),
                        //     textAlign: TextAlign.left,
                        //   ),
                        // ),
                        Text(
                          ' = $secretAlice',
                          // style: TextStyle(
                          //   fontSize: MediaQuery.of(context).size.width *
                          //       0.02, //middleWidth,
                          // ),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
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
                left: MediaQuery.of(context).size.width * 0.05,
                width: MediaQuery.of(context).size.width * 0.24,
                height: (MediaQuery.of(context).size.height -
                        HomePageDHState.returnAppBar[1]) *
                    0.1,
                child: AnimatedOpacity(
                  opacity: contentOpacity[4],
                  duration: Duration(seconds: seconds),
                  child: FittedBox(
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: RichText(
                        text: TextSpan(
                          style: const TextStyle(
                            color: Colors.black,
                          ),
                          children: [
                            const TextSpan(
                              text: 'a = r',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            WidgetSpan(
                              child: Transform.translate(
                                offset: const Offset(2, -10),
                                // child: const Text(
                                //   's_A',
                                //   //superscript is usually smaller in size
                                //   textScaleFactor: 0.8,
                                //   style: TextStyle(color: Colors.red),
                                // ),
                                child: RichText(
                                  text: TextSpan(
                                    style: const TextStyle(
                                      color: Colors.black,
                                    ),
                                    children: [
                                      const TextSpan(
                                        text: 'S',
                                        style: TextStyle(
                                          color: Colors.red,
                                        ),
                                      ),
                                      WidgetSpan(
                                        child: Transform.translate(
                                          offset: const Offset(0, 4),
                                          child: const Text(
                                            'A',
                                            //superscript is usually smaller in size
                                            textScaleFactor: 0.8,
                                            style: TextStyle(color: Colors.red),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            TextSpan(
                              text: ' mod n = $r',
                              style: const TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            WidgetSpan(
                              child: Transform.translate(
                                offset: const Offset(2, -8),
                                child: Text(
                                  '$secretAlice',
                                  //superscript is usually smaller in size
                                  textScaleFactor: 0.8,
                                  // style: TextStyle(color: Colors.red),
                                ),
                              ),
                            ),
                            TextSpan(
                              text: ' mod $n = ${pow(r, secretAlice) % n}',
                              style: const TextStyle(
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

            // Left-Text5
            Visibility(
              visible: textVisibility,
              child: Positioned(
                top: (MediaQuery.of(context).size.height -
                        HomePageDHState.returnAppBar[1]) *
                    0.55,
                left: MediaQuery.of(context).size.width * 0.05,
                width: MediaQuery.of(context).size.width * 0.12,
                height: (MediaQuery.of(context).size.height -
                        HomePageDHState.returnAppBar[1]) *
                    0.1,
                child: AnimatedOpacity(
                  opacity: contentOpacity[5],
                  duration: Duration(seconds: seconds),
                  child: FittedBox(
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'a = ${pow(r, secretAlice) % n}; b = ${pow(r, secretBob) % n}',
                        // style: TextStyle(
                        //   fontSize: MediaQuery.of(context).size.width *
                        //       0.02, //shortWidth,
                        // ),
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
                right: MediaQuery.of(context).size.width * 0.24, //-0.01
                width: MediaQuery.of(context).size.width * 0.1,
                height: (MediaQuery.of(context).size.height -
                        HomePageDHState.returnAppBar[1]) *
                    0.1,
                child: AnimatedOpacity(
                  opacity: contentOpacity[1],
                  duration: Duration(seconds: seconds),
                  child: FittedBox(
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'n = $n; r = $r',
                        // style: TextStyle(
                        //     // fontSize: MediaQuery.of(context).size.width *
                        //     //     0.02, //shortWidth,
                        //     ),
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
                right: MediaQuery.of(context).size.width * 0.22, //-0.01
                width: MediaQuery.of(context).size.width * 0.12,
                height: (MediaQuery.of(context).size.height -
                        HomePageDHState.returnAppBar[1]) *
                    0.1,
                child: AnimatedOpacity(
                  opacity: contentOpacity[3],
                  duration: Duration(seconds: seconds),
                  child: FittedBox(
                    child: Wrap(
                      children: [
                        const Text(
                          'Secret ',
                          // style: TextStyle(
                          //     // fontSize: MediaQuery.of(context).size.width *
                          //     //     0.015, //middleWidth,
                          //     ),
                          textAlign: TextAlign.left,
                        ),
                        // const Text(
                        //   's_B ',
                        //   style: TextStyle(
                        //     color: Colors.red,
                        //     // fontSize: MediaQuery.of(context).size.width *
                        //     //     0.015, //middleWidth,
                        //   ),
                        //   textAlign: TextAlign.left,
                        // ),
                        RichText(
                          text: TextSpan(
                            style: const TextStyle(
                              color: Colors.black,
                            ),
                            children: [
                              const TextSpan(
                                text: 'S',
                                style: TextStyle(
                                  color: Colors.red,
                                ),
                              ),
                              WidgetSpan(
                                child: Transform.translate(
                                  offset: const Offset(0, 6),
                                  child: const Text(
                                    'B',
                                    //superscript is usually smaller in size
                                    textScaleFactor: 0.8,
                                    style: TextStyle(color: Colors.red),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        // Container(
                        //   padding: EdgeInsets.only(top: marginValue),
                        //   child: Text(
                        //     '(Bob)',
                        //     style: TextStyle(
                        //       // fontSize: MediaQuery.of(context).size.width * 0.015,
                        //       fontSize: (MediaQuery.of(context).size.width *
                        //               shortWidth) /
                        //           2,
                        //       color: Colors.red[800],
                        //     ),
                        //     textAlign: TextAlign.left,
                        //   ),
                        // ),
                        Text(
                          ' = $secretBob',
                          // style: TextStyle(
                          //     // fontSize: MediaQuery.of(context).size.width *
                          //     //     0.015, //middleWidth,
                          //     ),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
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
                    0.55, //0.55
                right: MediaQuery.of(context).size.width * 0.1, //-0.01
                width: MediaQuery.of(context).size.width * 0.24,
                height: (MediaQuery.of(context).size.height -
                        HomePageDHState.returnAppBar[1]) *
                    0.1,
                child: AnimatedOpacity(
                  opacity: contentOpacity[4],
                  duration: Duration(seconds: seconds),
                  child: FittedBox(
                    child: RichText(
                      text: TextSpan(
                        style: const TextStyle(
                          color: Colors.black,
                        ),
                        children: [
                          const TextSpan(
                            text: 'b = r',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          WidgetSpan(
                            child: Transform.translate(
                              offset: const Offset(2, -10),
                              // child: const Text(
                              //   's_B',
                              //   //superscript is usually smaller in size
                              //   textScaleFactor: 0.8,
                              //   style: TextStyle(color: Colors.red),
                              // ),
                              child: RichText(
                                text: TextSpan(
                                  style: const TextStyle(
                                    color: Colors.black,
                                  ),
                                  children: [
                                    const TextSpan(
                                      text: 'S',
                                      style: TextStyle(
                                        color: Colors.red,
                                      ),
                                    ),
                                    WidgetSpan(
                                      child: Transform.translate(
                                        offset: const Offset(0, 4),
                                        child: const Text(
                                          'B',
                                          //superscript is usually smaller in size
                                          textScaleFactor: 0.8,
                                          style: TextStyle(color: Colors.red),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          TextSpan(
                            text: ' mod n = $r',
                            style: const TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          WidgetSpan(
                            child: Transform.translate(
                              offset: const Offset(2, -8),
                              child: Text(
                                '$secretBob',
                                //superscript is usually smaller in size
                                textScaleFactor: 0.8,
                                // style: TextStyle(color: Colors.red),
                              ),
                            ),
                          ),
                          TextSpan(
                            text: ' mod $n = ${pow(r, secretBob) % n}',
                            style: const TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    // child: Align(
                    //   alignment: Alignment.topLeft,
                    //   child: Row(
                    //     children: const [
                    //       Padding(
                    //         padding: const EdgeInsets.only(top: 15.0),
                    //         child: Text(
                    //           'b = r',
                    //           // style: TextStyle(
                    //           //     // fontSize: MediaQuery.of(context).size.width *
                    //           //     //     0.02, //shortWidth,
                    //           //     ),
                    //         ),
                    //       ),
                    //       Text(
                    //         's_B',
                    //         style: TextStyle(
                    //           color: Colors.red,
                    //           // fontSize:
                    //           //     MediaQuery.of(context).size.width * 0.015,
                    //           // fontSize: MediaQuery.of(context).size.width *
                    //           //     shortWidth /
                    //           //     1.5,
                    //         ),
                    //       ),
                    //       // Text(
                    //       //   '(Bob)',
                    //       //   style: TextStyle(
                    //       //     // fontSize:
                    //       //     //     MediaQuery.of(context).size.width * 0.015,
                    //       //     fontSize: MediaQuery.of(context).size.width *
                    //       //         shortWidth /
                    //       //         1.5,
                    //       //     color: Colors.red,
                    //       //   ),
                    //       // ),
                    //       Padding(
                    //         padding: const EdgeInsets.only(top: 15.0),
                    //         child: Text(
                    //           'mod n ',
                    //           // style: TextStyle(
                    //           //     // fontSize: MediaQuery.of(context).size.width *
                    //           //     //     0.02, //shortWidth,
                    //           //     ),
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                  ),
                ),
              ),
            ),

            // Right-Text4_2
            // Visibility(
            //   visible: textVisibility,
            //   child: Positioned(
            //     top: (MediaQuery.of(context).size.height -
            //             HomePageDHState.returnAppBar[1]) *
            //         0.61,
            //     right: MediaQuery.of(context).size.width * 0.02, //0.01
            //     width: MediaQuery.of(context).size.width * 0.12,
            //     height: (MediaQuery.of(context).size.height -
            //             HomePageDHState.returnAppBar[1]) *
            //         0.1,
            //     child: AnimatedOpacity(
            //       opacity: contentOpacity[4],
            //       duration: Duration(seconds: seconds),
            //       child: FittedBox(
            //         child: Align(
            //           alignment: Alignment.topLeft,
            //           child: Row(
            //             children: [
            //               Padding(
            //                 padding: const EdgeInsets.only(top: 15.0),
            //                 child: Text(
            //                   '= $r',
            //                   // style: TextStyle(
            //                   //     // fontSize: MediaQuery.of(context).size.width *
            //                   //     //     0.02, //shortWidth,
            //                   //     ),
            //                 ),
            //               ),
            //               Text(
            //                 '$secretBob',
            //                 // style: TextStyle(
            //                 //     // fontSize:
            //                 //     //     MediaQuery.of(context).size.width * 0.015,
            //                 //     // fontSize: MediaQuery.of(context).size.width *
            //                 //     //     shortWidth /
            //                 //     //     1.5,
            //                 //     ),
            //               ),
            //               Padding(
            //                 padding: const EdgeInsets.only(top: 15.0),
            //                 child: Text(
            //                   ' mod $n = ${pow(r, secretBob) % n}',
            //                   // style: TextStyle(
            //                   //     // fontSize: MediaQuery.of(context).size.width *
            //                   //     //     0.02, //shortWidth,
            //                   //     ),
            //                 ),
            //               ),
            //             ],
            //           ),
            //         ),
            //       ),
            //     ),
            //   ),
            // ),

            // Right-Text 3
            Visibility(
              visible: textVisibility,
              child: Positioned(
                top: (MediaQuery.of(context).size.height -
                        HomePageDHState.returnAppBar[1]) *
                    0.55,
                right: MediaQuery.of(context).size.width * 0.22, //-0.01
                width: MediaQuery.of(context).size.width * 0.12,
                height: (MediaQuery.of(context).size.height -
                        HomePageDHState.returnAppBar[1]) *
                    0.1,
                child: AnimatedOpacity(
                  opacity: contentOpacity[5],
                  duration: Duration(seconds: seconds),
                  child: FittedBox(
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'b = ${pow(r, secretBob) % n}; a = ${pow(r, secretAlice) % n}',
                        // style: TextStyle(
                        //   fontSize: MediaQuery.of(context).size.width *
                        //       0.02, //shortWidth,
                        // ),
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
                    0.37,
                left: MediaQuery.of(context).size.width * 0.35,
                width: MediaQuery.of(context).size.width * 0.1,
                height: (MediaQuery.of(context).size.height -
                        HomePageDHState.returnAppBar[1]) *
                    0.1,
                child: AnimatedOpacity(
                  opacity: contentOpacity[1],
                  duration: Duration(seconds: seconds),
                  child: FittedBox(
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'n = $n; r = $r',
                        // style: TextStyle(
                        //   fontSize: MediaQuery.of(context).size.width *
                        //       0.02, //shortWidth,
                        // ),
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
                    0.47,
                left: MediaQuery.of(context).size.width * 0.35,
                width: MediaQuery.of(context).size.width * 0.05,
                height: (MediaQuery.of(context).size.height -
                        HomePageDHState.returnAppBar[1]) *
                    0.1,
                child: AnimatedOpacity(
                  opacity: contentOpacity[6],
                  duration: Duration(seconds: seconds),
                  child: FittedBox(
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'a = ${pow(r, secretAlice) % n}',
                        // style: TextStyle(
                        //   fontSize: MediaQuery.of(context).size.width *
                        //       0.02, //shortWidth,
                        // ),
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
                    0.57,
                left: MediaQuery.of(context).size.width * 0.35,
                width: MediaQuery.of(context).size.width * 0.05,
                height: (MediaQuery.of(context).size.height -
                        HomePageDHState.returnAppBar[1]) *
                    0.1,
                child: AnimatedOpacity(
                  opacity: contentOpacity[6],
                  duration: Duration(seconds: seconds),
                  child: FittedBox(
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'b = ${pow(r, secretBob) % n}',
                        // style: TextStyle(
                        //   fontSize: MediaQuery.of(context).size.width *
                        //       0.02, //shortWidth,
                        // ),
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
                    0.28,
                left: MediaQuery.of(context).size.width * 0.48,
                width: MediaQuery.of(context).size.width * 0.05,
                height: (MediaQuery.of(context).size.height -
                        HomePageDHState.returnAppBar[1]) *
                    0.1,
                child: AnimatedOpacity(
                  opacity: contentOpacity[7],
                  duration: Duration(seconds: seconds),
                  child: FittedBox(
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'b = ${pow(r, secretBob) % n}',
                        // style: TextStyle(
                        //   fontSize: MediaQuery.of(context).size.width *
                        //       0.02, //shortWidth,
                        // ),
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
                    0.08,
                //fromTop,
                left: MediaQuery.of(context).size.width * 0.48,
                width: MediaQuery.of(context).size.width * 0.05,
                height: (MediaQuery.of(context).size.height -
                        HomePageDHState.returnAppBar[1]) *
                    0.1,
                child: AnimatedOpacity(
                  opacity: contentOpacity[7],
                  duration: Duration(seconds: seconds),
                  child: FittedBox(
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'a = ${pow(r, secretAlice) % n}',
                        // style: TextStyle(
                        //   fontSize: MediaQuery.of(context).size.width *
                        //       0.02, //shortWidth,
                        // ),
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
                    0.08,
                //fromTop,
                left: MediaQuery.of(context).size.width * 0.45,
                width: MediaQuery.of(context).size.width * 0.1,
                height: (MediaQuery.of(context).size.height -
                        HomePageDHState.returnAppBar[1]) *
                    0.1,
                child: AnimatedOpacity(
                  opacity: contentOpacity[8],
                  duration: Duration(seconds: seconds),
                  child: FittedBox(
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'n = $n; r = $r',
                        // style: TextStyle(
                        //   fontSize: MediaQuery.of(context).size.width *
                        //       0.02, //middleWidth,
                        // ),
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
                left: MediaQuery.of(context).size.width * 0.05,
                width: MediaQuery.of(context).size.width * 0.15,
                height: (MediaQuery.of(context).size.height -
                        HomePageDHState.returnAppBar[1]) *
                    0.1,
                child: AnimatedOpacity(
                  opacity: contentOpacity[6],
                  duration: Duration(seconds: seconds),
                  child: FittedBox(
                    child: RichText(
                      text: TextSpan(
                        style: const TextStyle(
                          color: Colors.black,
                        ),
                        children: [
                          TextSpan(
                            text: 'S = ${pow(r, secretBob) % n}',
                            style: const TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          WidgetSpan(
                            child: Transform.translate(
                              offset: const Offset(2, -8),
                              child: Text(
                                '$secretAlice',
                                //superscript is usually smaller in size
                                textScaleFactor: 0.8,
                                // style: TextStyle(color: Colors.red),
                              ),
                            ),
                          ),
                          TextSpan(
                            text:
                                ' mod $n = ${pow(pow(r, secretBob) % n, secretAlice) % n} ',
                            style: const TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // child: Wrap(
                  //   children: [
                  //     Padding(
                  //       padding: const EdgeInsets.only(top: 1.0),
                  //       child: Text(
                  //         'S = ${pow(r, secretBob) % n}',
                  //         style: TextStyle(
                  //           fontSize: MediaQuery.of(context).size.width *
                  //               0.02, //middleWidth,
                  //         ),
                  //         textAlign: TextAlign.left,
                  //       ),
                  //     ),
                  //     Text(
                  //       '$secretAlice',
                  //       style: TextStyle(
                  //         fontSize: MediaQuery.of(context).size.width * 0.015,
                  //         // fontSize: (MediaQuery.of(context).size.width *
                  //         //         middleWidth) /
                  //         //     1.5,
                  //       ),
                  //       textAlign: TextAlign.left,
                  //     ),
                  //     Text(
                  //       ' mod $n = ${pow(pow(r, secretBob) % n, secretAlice) % n} ',
                  //       style: TextStyle(
                  //         fontSize: MediaQuery.of(context).size.width *
                  //             0.02, //middleWidth,
                  //       ),
                  //       textAlign: TextAlign.left,
                  //     ),
                  //   ],
                  // ),
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
                left: MediaQuery.of(context).size.width * 0.66, //-0.09
                width: MediaQuery.of(context).size.width * 0.22,
                height: (MediaQuery.of(context).size.height -
                        HomePageDHState.returnAppBar[1]) *
                    0.1,
                child: AnimatedOpacity(
                  opacity: contentOpacity[6],
                  duration: Duration(seconds: seconds),
                  child: FittedBox(
                    child: RichText(
                      text: TextSpan(
                        style: const TextStyle(
                          color: Colors.black,
                        ),
                        children: [
                          TextSpan(
                            text: 'S = ${pow(r, secretAlice) % n}',
                            style: const TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          WidgetSpan(
                            child: Transform.translate(
                              offset: const Offset(2, -8),
                              child: Text(
                                '$secretBob',
                                //superscript is usually smaller in size
                                textScaleFactor: 0.8,
                                // style: TextStyle(color: Colors.red),
                              ),
                            ),
                          ),
                          TextSpan(
                            text: ' mod $n = $r',
                            style: const TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          WidgetSpan(
                            child: Transform.translate(
                              offset: const Offset(2, -8),
                              child: Text(
                                '$secretBob',
                                //superscript is usually smaller in size
                                textScaleFactor: 0.8,
                                // style: const TextStyle(color: Colors.red),
                              ),
                            ),
                          ),
                          TextSpan(
                            text:
                                ' mod $n = ${pow(pow(r, secretAlice) % n, secretBob) % n}',
                            style: const TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // child: Wrap(
                  //   children: [
                  //     Padding(
                  //       padding: const EdgeInsets.only(top: 1.0),
                  //       child: Text(
                  //         'S = ${pow(r, secretAlice) % n}',
                  //         style: TextStyle(
                  //           fontSize: MediaQuery.of(context).size.width *
                  //               0.02, //middleWidth,
                  //         ),
                  //         textAlign: TextAlign.left,
                  //       ),
                  //     ),
                  //     Text(
                  //       '$secretBob',
                  //       style: TextStyle(
                  //         fontSize: MediaQuery.of(context).size.width * 0.015,
                  //         // fontSize: (MediaQuery.of(context).size.width *
                  //         //         middleWidth) /
                  //         //     1.5,
                  //       ),
                  //       textAlign: TextAlign.left,
                  //     ),
                  //     Text(
                  //       ' mod $n',
                  //       style: TextStyle(
                  //         fontSize: MediaQuery.of(context).size.width *
                  //             0.02, //middleWidth,
                  //       ),
                  //       textAlign: TextAlign.left,
                  //     ),
                  //   ],
                  // ),
                ),
              ),
            ),

            // Right Modulo Result_2
            // Visibility(
            //   visible: textVisibility,
            //   child: Positioned(
            //     top: (MediaQuery.of(context).size.height -
            //             HomePageDHState.returnAppBar[1]) *
            //         0.72,
            //     right: MediaQuery.of(context).size.width * 0.078,
            //     width: MediaQuery.of(context).size.width * 0.1,
            //     height: (MediaQuery.of(context).size.height -
            //             HomePageDHState.returnAppBar[1]) *
            //         0.1,
            //     child: AnimatedOpacity(
            //       opacity: contentOpacity[6],
            //       duration: Duration(seconds: seconds),
            //       child: Align(
            //         alignment: Alignment.topLeft,
            //         child: FittedBox(
            //           child: Text(
            //             ' = ${pow(pow(r, secretAlice) % n, secretBob) % n}',
            //             style: TextStyle(
            //               fontSize: MediaQuery.of(context).size.width *
            //                   0.02, //middleWidth,
            //             ),
            //           ),
            //         ),
            //       ),
            //     ),
            //   ),
            // ),

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
            Description(
              desc,
              text,
              descVisbility,
              containerSeconds,
              HomePageDHState.returnAppBar[1],
              false,
            ),

            // Right-Button
            Positioned(
              right: MediaQuery.of(context).size.width * 0.01,
              bottom: MediaQuery.of(context).size.height * 0.02,
              width: MediaQuery.of(context).size.width * 0.1,
              height: MediaQuery.of(context).size.height * 0.1,
              child: FloatingActionButton(
                backgroundColor: isLastIndex[0] ? Colors.grey : Colors.blue,
                heroTag: "right9",
                onPressed:
                    // isLastIndex[0]
                    //     ? null
                    //     :
                    () {
                  setState(
                    () {
                      if (videoButton == false) {
                        videoTimerSlide3DH.cancel();
                      }
                      videoButton = true;
                      seconds = Global.slider;

                      if (indexVisibilitySlide3DH == 5) {
                        openDialog(false);
                      }

                      if (indexVisibilitySlide3DH < 5 && delay) {
                        indexVisibilitySlide3DH++;
                        pageController3 = TextEditingController()
                          ..text = (indexVisibilitySlide3DH + 1).toString();
                        // Languages.player.play("assets/steps.mp3");
                        stepsVisibility[0] = !stepsVisibility[0];
                        stepsVisibility[1] = !stepsVisibility[1];
                      }
                      if (indexVisibilitySlide3DH == 0) {
                        contentOpacity[0] = 1.0;
                        isLastIndex[1] = false;
                      } else if (indexVisibilitySlide3DH == 1 && delay) {
                        contentOpacity[0] = 0.0;
                        contentOpacity[1] = 1.0;
                        contentOpacity[2] = 1.0;
                        verticalTopOpacity = 1.0;
                        contentOpacity[8] = 1.0;
                      } else if (indexVisibilitySlide3DH == 2 && delay) {
                        contentOpacity[2] = 0.0;
                        verticalTopOpacity = 0.0;
                        contentOpacity[8] = 0.0;
                        contentOpacity[3] = 1.0;
                      } else if (indexVisibilitySlide3DH == 3 && delay) {
                        contentOpacity[4] = 1.0;
                      } else if (indexVisibilitySlide3DH == 4 && delay) {
                        contentOpacity[2] = 1.0;
                        verticalBottomOpacity = 1.0;
                        contentOpacity[4] = 0.0;
                        contentOpacity[5] = 1.0;
                        contentOpacity[7] = 1.0;
                      } else if (indexVisibilitySlide3DH == 5 && delay) {
                        contentOpacity[2] = 0.0;
                        verticalTopOpacity = 0.0;
                        verticalBottomOpacity = 0.0;
                        contentOpacity[5] = 0.0;
                        contentOpacity[7] = 0.0;
                        contentOpacity[6] = 1.0;
                        isLastIndex[0] = true;
                      }
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
                backgroundColor: isLastIndex[1] ? Colors.grey : Colors.blue,
                heroTag: "left9",
                onPressed:
                    // isLastIndex[1]
                    //     ? null
                    //     :
                    () {
                  setState(
                    () {
                      if (videoButton == false) {
                        videoTimerSlide3DH.cancel();
                      }
                      videoButton = true;

                      seconds = Global.slider;
                      if (indexVisibilitySlide3DH == 0) text = '';

                      if (indexVisibilitySlide3DH == -1) {
                        openDialog(true);
                      }

                      if (indexVisibilitySlide3DH == 0) {
                        // Languages.player.play("assets/steps.mp3");
                        indexVisibilitySlide3DH--;
                        contentOpacity[0] = 0.0;
                        isLastIndex[1] = true;
                      } else if (indexVisibilitySlide3DH == 1 && delay) {
                        contentOpacity[0] = 1.0;
                        contentOpacity[1] = 0.0;
                        contentOpacity[2] = 0.0;
                        verticalTopOpacity = 0.0;
                        verticalBottomOpacity = 0.0;
                        contentOpacity[8] = 0.0;
                      } else if (indexVisibilitySlide3DH == 2 && delay) {
                        contentOpacity[2] = 1.0;
                        verticalTopOpacity = 1.0;
                        contentOpacity[8] = 1.0;
                        contentOpacity[3] = 0.0;
                      } else if (indexVisibilitySlide3DH == 3 && delay) {
                        contentOpacity[4] = 0.0;
                      } else if (indexVisibilitySlide3DH == 4 && delay) {
                        contentOpacity[2] = 0.0;
                        verticalTopOpacity = 0.0;
                        verticalBottomOpacity = 0.0;
                        contentOpacity[4] = 1.0;
                        contentOpacity[5] = 0.0;
                        contentOpacity[7] = 0.0;
                      } else if (indexVisibilitySlide3DH == 5 && delay) {
                        contentOpacity[2] = 1.0;
                        verticalBottomOpacity = 1.0;
                        contentOpacity[5] = 1.0;
                        contentOpacity[7] = 1.0;
                        contentOpacity[6] = 0.0;
                        isLastIndex[0] = false;
                      }
                      if (indexVisibilitySlide3DH > 0 && delay) {
                        if (indexVisibilitySlide3DH == 0) {
                          delay = false;
                        }
                        indexVisibilitySlide3DH--;
                        pageController3 = TextEditingController()
                          ..text = (indexVisibilitySlide3DH + 1).toString();
                        stepsVisibility[0] = !stepsVisibility[0];
                        stepsVisibility[1] = !stepsVisibility[1];
                      }
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
                  switchOldValue = Global.switchValue;
                  scaleEnabledOldVal = Global.scaleEnabled;
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
                    builder: (BuildContext context) => AlertDialog(
                      scrollable: true,
                      shape: const RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(32.0))),
                      title: Text(
                        // 'Settings',
                        AppLocalizations.of(context)!.settings,
                        textAlign: TextAlign.center,
                      ),
                      content: SizedBox(
                        height: 300.0, // Change as per your requirement
                        width: 500.0, // Change as per your requirement
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
                              _buildRow(
                                'n = ',
                                Container(
                                  margin: const EdgeInsets.only(left: 18.0),
                                  child: StatefulBuilder(
                                    builder: (BuildContext context,
                                        void Function(void Function())
                                            setState) {
                                      return SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.1,
                                        height: 30,
                                        child: TextField(
                                          focusNode: focus,
                                          keyboardType: TextInputType.number,
                                          controller: nController,
                                          inputFormatters: <TextInputFormatter>[
                                            LengthLimitingTextInputFormatter(3),
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
                                false,
                              ),
                              _buildRow(
                                'r = ',
                                Container(
                                  margin: const EdgeInsets.only(left: 18.0),
                                  child: StatefulBuilder(
                                    builder: (BuildContext context,
                                        void Function(void Function())
                                            setState) {
                                      return SizedBox(
                                        // width: 100,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.1,
                                        height: 30,
                                        child: TextField(
                                          keyboardType: TextInputType.number,
                                          controller: rController,
                                          inputFormatters: <TextInputFormatter>[
                                            LengthLimitingTextInputFormatter(3),
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
                                false,
                              ),
                              _buildRow(
                                AppLocalizations.of(context)!.secretBob,
                                Container(
                                  margin: const EdgeInsets.only(left: 18.0),
                                  child: StatefulBuilder(
                                    builder: (BuildContext context,
                                        void Function(void Function())
                                            setState) {
                                      return SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.1,
                                        height: 30,
                                        child: TextField(
                                          keyboardType: TextInputType.number,
                                          controller: secretBobController,
                                          inputFormatters: <TextInputFormatter>[
                                            LengthLimitingTextInputFormatter(3),
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
                                false,
                              ),
                              _buildRow(
                                AppLocalizations.of(context)!.secretAlice,
                                Container(
                                  margin: const EdgeInsets.only(left: 18.0),
                                  child: StatefulBuilder(
                                    builder: (BuildContext context,
                                        void Function(void Function())
                                            setState) {
                                      return SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.1,
                                        height: 30,
                                        child: TextField(
                                          keyboardType: TextInputType.number,
                                          controller: secretAliceController,
                                          inputFormatters: <TextInputFormatter>[
                                            LengthLimitingTextInputFormatter(3),
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
                                false,
                              ),
                            ],
                          ),
                        ),
                      ),
                      // content: Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //   crossAxisAlignment: CrossAxisAlignment.start,
                      //   children: [
                      //     Column(
                      //       crossAxisAlignment: CrossAxisAlignment.start,
                      //       children: [
                      //         SizedBox(
                      //           // height: 10,
                      //           height: MediaQuery.of(context).size.height *
                      //               0.02,
                      //         ),
                      //         // 'Animation-Geschwindigkeit',
                      //         Text(
                      //           AppLocalizations.of(context)!
                      //               .animationSpeed,
                      //         ),
                      //         SizedBox(
                      //           // height: 60,
                      //           height: MediaQuery.of(context).size.height *
                      //               0.09,
                      //         ),
                      //         Text(
                      //           // 'Sprache'
                      //           AppLocalizations.of(context)!.appLanguage,
                      //         ),
                      //         SizedBox(
                      //           // height: 60,
                      //           height: MediaQuery.of(context).size.height *
                      //               0.09,
                      //         ),
                      //         Text(
                      //           // 'Zoom Enable'
                      //           AppLocalizations.of(context)!.zoomEnable,
                      //         ),
                      //         SizedBox(
                      //           // height: 50,
                      //           height: MediaQuery.of(context).size.height *
                      //               0.08,
                      //         ),
                      //         const Text(
                      //           'n = ',
                      //           textAlign: TextAlign.center,
                      //         ),
                      //         SizedBox(
                      //           // height: 40,
                      //           height: MediaQuery.of(context).size.height *
                      //               0.07,
                      //         ),
                      //         const Text(
                      //           'r = ',
                      //           textAlign: TextAlign.center,
                      //         ),
                      //         SizedBox(
                      //           // height: 30,
                      //           height: MediaQuery.of(context).size.height *
                      //               0.06,
                      //         ),
                      //         Text(
                      //           // 'Secret (Bob) = ',
                      //           AppLocalizations.of(context)!.secretBob,
                      //           textAlign: TextAlign.center,
                      //         ),
                      //         SizedBox(
                      //           // height: 40,
                      //           height: MediaQuery.of(context).size.height *
                      //               0.07,
                      //         ),
                      //         Text(
                      //           // 'Secret (Alice) = ',
                      //           AppLocalizations.of(context)!.secretAlice,
                      //           textAlign: TextAlign.center,
                      //         ),
                      //       ],
                      //     ),
                      //     const SizedBox(
                      //       width: 50,
                      //     ),
                      //     Column(
                      //       crossAxisAlignment: CrossAxisAlignment.start,
                      //       children: [
                      //         StatefulBuilder(
                      //           builder: (BuildContext context,
                      //               void Function(void Function())
                      //                   setState) {
                      //             return Slider(
                      //               value: Global.val.toDouble(),
                      //               min: 1.0,
                      //               max: 3.0,
                      //               divisions: 2,
                      //               label: Global.val.toString(),
                      //               onChanged: (double newValue) {
                      //                 setState(
                      //                   () {
                      //                     Global.val = newValue.round();

                      //                     if (Global.val == 1) {
                      //                       Global.slider = Global.val + 2;
                      //                       if (!videoButton) {
                      //                         videoTimerSlide3DH.cancel();
                      //                         videoTimerSlide3DH =
                      //                             videoTimerProblem();
                      //                       }
                      //                     } else if (Global.val == 3) {
                      //                       Global.slider = Global.val - 2;
                      //                       if (!videoButton) {
                      //                         videoTimerSlide3DH.cancel();
                      //                         videoTimerSlide3DH =
                      //                             videoTimerProblem();
                      //                       }
                      //                     } else {
                      //                       Global.slider = Global.val;
                      //                       if (!videoButton) {
                      //                         videoTimerSlide3DH.cancel();
                      //                         videoTimerSlide3DH =
                      //                             videoTimerProblem();
                      //                       }
                      //                     }
                      //                   },
                      //                 );
                      //               },
                      //             );
                      //           },
                      //         ),
                      //         SizedBox(
                      //           // height: 25,
                      //           height: MediaQuery.of(context).size.height *
                      //               0.04,
                      //         ),
                      //         Container(
                      //           margin: const EdgeInsets.only(left: 18.0),
                      //           child: StatefulBuilder(
                      //             builder: (BuildContext context,
                      //                 void Function(void Function())
                      //                     setState) {
                      //               return DropdownButton<String>(
                      //                 value: Global.selectedLanguage == true
                      //                     ? Global.languages[0]
                      //                     : Global.languages[1],
                      //                 elevation: 16,
                      //                 style: const TextStyle(
                      //                   color: Colors.blue,
                      //                 ),
                      //                 underline: Container(
                      //                   height: 2,
                      //                   color: Colors.blueAccent,
                      //                 ),
                      //                 onChanged: (newValue) {
                      //                   setState(
                      //                     () {
                      //                       dropdownValue = newValue!;
                      //                       if (dropdownValue ==
                      //                           Global.languages[1]) {
                      //                         Global.selectedLanguage =
                      //                             false;
                      //                         MyApp.of(context)!.setLocale(
                      //                             const Locale.fromSubtags(
                      //                                 languageCode: 'en'));
                      //                         Global.locale = 'en';
                      //                       } else {
                      //                         Global.selectedLanguage =
                      //                             true;
                      //                         MyApp.of(context)!.setLocale(
                      //                             const Locale.fromSubtags(
                      //                                 languageCode: 'de'));
                      //                         Global.locale = 'de';
                      //                       }
                      //                     },
                      //                   );
                      //                   Provider.of<LanguageProvider>(
                      //                           context,
                      //                           listen: false)
                      //                       .changeLanguage(1);
                      //                 },
                      //                 items: Global.languages
                      //                     .map<DropdownMenuItem<String>>(
                      //                   (String value) {
                      //                     return DropdownMenuItem<String>(
                      //                       value: value,
                      //                       child: Text(value),
                      //                     );
                      //                   },
                      //                 ).toList(),
                      //               );
                      //             },
                      //           ),
                      //         ),
                      //         SizedBox(
                      //           // height: 25,
                      //           height: MediaQuery.of(context).size.height *
                      //               0.04,
                      //         ),
                      //         Padding(
                      //           padding: const EdgeInsets.all(10.0),
                      //           child: StatefulBuilder(
                      //             builder: (BuildContext context,
                      //                 void Function(void Function())
                      //                     setState) {
                      //               return CupertinoSwitch(
                      //                 value: Global.switchValue,
                      //                 onChanged: (value) {
                      //                   setState(() {
                      //                     Global.switchValue = value;
                      //                     Global.scaleEnabled =
                      //                         Global.switchValue;
                      //                   });
                      //                 },
                      //               );
                      //             },
                      //           ),
                      //         ),
                      //         SizedBox(
                      //           // height: 25,
                      //           height: MediaQuery.of(context).size.height *
                      //               0.04,
                      //         ),
                      //         Container(
                      //           margin: const EdgeInsets.only(left: 18.0),
                      //           child: StatefulBuilder(
                      //             builder: (BuildContext context,
                      //                 void Function(void Function())
                      //                     setState) {
                      //               return SizedBox(
                      //                 width: MediaQuery.of(context)
                      //                         .size
                      //                         .width *
                      //                     0.1,
                      //                 height: 30,
                      //                 child: TextField(
                      //                   keyboardType: TextInputType.number,
                      //                   controller: nController,
                      //                   inputFormatters: <
                      //                       TextInputFormatter>[
                      //                     LengthLimitingTextInputFormatter(
                      //                         3),
                      //                     FilteringTextInputFormatter
                      //                         .digitsOnly
                      //                   ],
                      //                   decoration: const InputDecoration(
                      //                     contentPadding:
                      //                         EdgeInsets.only(left: 10),
                      //                     border: OutlineInputBorder(),
                      //                   ),
                      //                 ),
                      //               );
                      //             },
                      //           ),
                      //         ),
                      //         SizedBox(
                      //           // height: 25,
                      //           height: MediaQuery.of(context).size.height *
                      //               0.055,
                      //         ),
                      //         Container(
                      //           margin: const EdgeInsets.only(left: 18.0),
                      //           child: StatefulBuilder(
                      //             builder: (BuildContext context,
                      //                 void Function(void Function())
                      //                     setState) {
                      //               return SizedBox(
                      //                 // width: 100,
                      //                 width: MediaQuery.of(context)
                      //                         .size
                      //                         .width *
                      //                     0.1,
                      //                 height: 30,
                      //                 child: TextField(
                      //                   keyboardType: TextInputType.number,
                      //                   controller: rController,
                      //                   inputFormatters: <
                      //                       TextInputFormatter>[
                      //                     LengthLimitingTextInputFormatter(
                      //                         3),
                      //                     FilteringTextInputFormatter
                      //                         .digitsOnly
                      //                   ],
                      //                   decoration: const InputDecoration(
                      //                     contentPadding:
                      //                         EdgeInsets.only(left: 10),
                      //                     border: OutlineInputBorder(),
                      //                   ),
                      //                 ),
                      //               );
                      //             },
                      //           ),
                      //         ),
                      //         SizedBox(
                      //           // height: 25,
                      //           height: MediaQuery.of(context).size.height *
                      //               0.05,
                      //         ),
                      //         Container(
                      //           margin: const EdgeInsets.only(left: 18.0),
                      //           child: StatefulBuilder(
                      //             builder: (BuildContext context,
                      //                 void Function(void Function())
                      //                     setState) {
                      //               return SizedBox(
                      //                 width: MediaQuery.of(context)
                      //                         .size
                      //                         .width *
                      //                     0.1,
                      //                 height: 30,
                      //                 child: TextField(
                      //                   keyboardType: TextInputType.number,
                      //                   controller: secretBobController,
                      //                   inputFormatters: <
                      //                       TextInputFormatter>[
                      //                     LengthLimitingTextInputFormatter(
                      //                         3),
                      //                     FilteringTextInputFormatter
                      //                         .digitsOnly
                      //                   ],
                      //                   decoration: const InputDecoration(
                      //                     contentPadding:
                      //                         EdgeInsets.only(left: 10),
                      //                     border: OutlineInputBorder(),
                      //                   ),
                      //                 ),
                      //               );
                      //             },
                      //           ),
                      //         ),
                      //         SizedBox(
                      //           // height: 25,
                      //           height: MediaQuery.of(context).size.height *
                      //               0.05,
                      //         ),
                      //         Container(
                      //           margin: const EdgeInsets.only(left: 18.0),
                      //           child: StatefulBuilder(
                      //             builder: (BuildContext context,
                      //                 void Function(void Function())
                      //                     setState) {
                      //               return SizedBox(
                      //                 width: MediaQuery.of(context)
                      //                         .size
                      //                         .width *
                      //                     0.1,
                      //                 height: 30,
                      //                 child: TextField(
                      //                   keyboardType: TextInputType.number,
                      //                   controller: secretAliceController,
                      //                   inputFormatters: <
                      //                       TextInputFormatter>[
                      //                     LengthLimitingTextInputFormatter(
                      //                         3),
                      //                     FilteringTextInputFormatter
                      //                         .digitsOnly
                      //                   ],
                      //                   decoration: const InputDecoration(
                      //                     contentPadding:
                      //                         EdgeInsets.only(left: 10),
                      //                     border: OutlineInputBorder(),
                      //                   ),
                      //                 ),
                      //               );
                      //             },
                      //           ),
                      //         ),
                      //       ],
                      //     ),
                      //   ],
                      // ),
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
                                secretBob = int.parse(secretBobController.text);
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
                              Global.switchValue = switchOldValue;
                              Global.scaleEnabled = scaleEnabledOldVal;
                              Global.slider = sliderOldValue;
                              Global.val = valOldValue;
                              Global.selectedLanguage = languageOldValue;
                              Global.locale = locale;
                              DHKEVis.of(context)!.setLocale(
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
                    isLastIndex = [false, true];
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
                    pageController3 = TextEditingController()
                      ..text = (0).toString();
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
                    verticalTopOpacity = 0.0;
                    verticalBottomOpacity = 0.0;
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
                  child: TextButton(
                    onPressed: () {
                      numberPageDialog();
                    },
                    child: Text(
                      '3: ${indexVisibilitySlide3DH + 1} / 6',
                      style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
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

  Widget _buildRow(String text, Widget widget, bool isSwitch) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: <Widget>[
          const SizedBox(height: 12),
          const SizedBox(height: 12),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(child: Text(text)),
                // VerticalDivider(color: Colors.red, width: 4.0),
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
                controller: pageController3,
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
        content: Container(
          height: 5.0,
          width: 300.0,
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              setState(() {
                if (videoButton == false) {
                  videoTimerSlide3DH.cancel();
                }
                videoButton = true;
                seconds = Global.slider;
              });
              if ((int.parse(pageController3.text) > 6) ||
                  (int.parse(pageController3.text) < 0)) {
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
                pageController3 = TextEditingController()
                  ..text = (indexVisibilitySlide3DH + 1).toString();
              });
              Navigator.pop(context, 'No');
            },
            child: Text(AppLocalizations.of(context)!.cancel),
          ),
        ],
      ),
    );
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
                    : AppLocalizations.of(context)!.lastRight,
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
              HomePageDHState.controller.animateTo(isLeft ? 1 : 3);
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

  stepNumber() {
    setState(() {
      //videoTimerVariable.cancel();
      // indexVisibilitySlide1DH = (int.parse(pageController1.text));

      stopFunction();

      selectPageNumber(int.parse(pageController3.text) - 1);

      // if (controllerIndex > a) {
      //   videoTimerProblem(int.parse(pageController1.text) - 1, 0);
      // } else {
      //   videoTimerProblemBack(int.parse(pageController1.text) - 1);
      // }
    });
  }

  stopFunction() {
    setState(
      () {
        isLastIndex = [false, true];
        isCanceled = false;
        // nOldVal = 0;
        // rOldVal = 0;
        // secretBobOldVal = 0;
        // scretAliceOldVal = 0;
        // sliderOldValue = 0;
        // valOldValue = 0;
        // n = 17;
        // r = 3;
        // secretAlice = 9;
        // secretBob = 7;
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

        contentOpacity = [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0];
        verticalTopOpacity = 0.0;
        verticalBottomOpacity = 0.0;
        textVisibility = false;

        nController = TextEditingController()..text = n.toString();
        rController = TextEditingController()..text = r.toString();
        secretBobController = TextEditingController()
          ..text = secretBob.toString();
        secretAliceController = TextEditingController()
          ..text = secretAlice.toString();

        nControllerOldVal = TextEditingController()..text = n.toString();
        rControllerOldVal = TextEditingController()..text = r.toString();
        secretBobControllerOldVal = TextEditingController()
          ..text = secretBob.toString();
        secretAliceControllerOldVal = TextEditingController()
          ..text = secretAlice.toString();
        delayTimer = Timer(const Duration(milliseconds: 50), () {
          setState(() {
            textVisibility = true;
            // Global.slider = Global.replacedSliderValue;
            // seconds = Global.slider;
            delayTimer.cancel();
          });
        });
      },
    );
  }
}