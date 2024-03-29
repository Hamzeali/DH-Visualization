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

int p = 17;
int g = 3;
int secretAlice = 9;
int secretBob = 7;
TextEditingController pController = TextEditingController()
  ..text = p.toString();
TextEditingController gController = TextEditingController()
  ..text = g.toString();
TextEditingController secretBobController = TextEditingController()
  ..text = secretBob.toString();
TextEditingController secretAliceController = TextEditingController()
  ..text = secretAlice.toString();

TextEditingController nControllerOldVal = TextEditingController()
  ..text = p.toString();
TextEditingController rControllerOldVal = TextEditingController()
  ..text = g.toString();
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
    textVisibility = true;
  }

  @override
  // ignore: must_call_super
  void dispose() {
    focus.dispose();
    Global.replacedSliderValue = Global.slider;
    isLastIndex = [false, true];
    indexVisibilitySlide3DH = -1;
    pageController3 = TextEditingController()..text = (0).toString();
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

  bool isPrime(int p) {
    if (p <= 1) return false;
    if (p <= 3) return true;
    for (var i = 2; i <= sqrt(p); i++) {
      if (p % i == 0) return false;
    }
    return true;
  }

  bool isPrimitvRoot(int g, int p) {
    List results = [];
    for (int i = 1; i < p; i++) {
      num res = (pow(g, i) % p);
      if (results.contains(res)) {
        return false;
      } else {
        results.add(res);
      }
    }
    return true;
  }

  int pow2(int base, int exponent, int modulus) {
    var result = 1;
    base %= modulus;
    while (exponent > 0) {
      if (exponent % 2 == 1) result = (result * base) % modulus;
      base = (base * base) % modulus;
      exponent ~/= 2;
    }
    return result;
  }

  List<int> allroots(int p) {
    if (p == 2) return [1];

    var phi = p - 1;
    var factors = <int>{};
    for (var i = 2; i * i <= phi; i++) {
      if (phi % i == 0) {
        factors.add(i);
        if (i * i != phi) factors.add(phi ~/ i);
      }
    }

    var roots = <int>[];
    for (var i = 2; i < p; i++) {
      var isRoot = true;
      for (var f in factors) {
        if (pow2(i, phi ~/ f, p) == 1) {
          isRoot = false;
          break;
        }
      }
      if (isRoot) roots.add(i);
    }

    return roots;
  }

  Positioned bulletPosition(
      double top, double left, double opacity, Color color, bool vis) {
    return Positioned(
      top: (MediaQuery.of(context).size.height -
              HomePageDHState.returnAppBar[1]) *
          top,
      left: MediaQuery.of(context).size.width * left,
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
    pageNumberTimer = Timer.periodic(
      const Duration(seconds: 0),
      (Timer pageNumberTimer) {
        setState(
          () {
            delay = true;
            seconds = 0;
            if (indexVisibilitySlide3DH == a) {
              pageNumberTimer.cancel();
            }
            if (indexVisibilitySlide3DH < a && delay) {
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

            arrowPosition(
                p1x: -0.34,
                p1y: 0.08,
                p2x: 0.18,
                p2y: 0.08,
                opacity: contentOpacity[2]),
            arrowPosition(
              p1x: -0.075,
              p1y: 0.08,
              p2x: -0.075,
              p2y: 0.36,
              opacity: verticalTopOpacity,
            ),
            arrowPosition(
              p1x: -0.075,
              p1y: 0.14,
              p2x: -0.075,
              p2y: 0.36,
              opacity: verticalBottomOpacity,
            ),

            bulletPosition(0.25, 0.457, 1.0, Colors.white,
                indexVisibilitySlide3DH < 4 ? true : true),
            bulletPosition(0.32, 0.457, 1.0, Colors.white, true),
            bulletPosition(0.39, 0.457, 1.0, Colors.white, true),
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
                      fontSize: MediaQuery.of(context).size.width * 0.016,
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
                        '${AppLocalizations.of(context)!.text321}$p\n${AppLocalizations.of(context)!.text322}$g',
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
                        'p = $p; g = $g',
                        style: const TextStyle(
                          fontStyle: FontStyle.italic,
                          color: Colors.black,
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
                left: MediaQuery.of(context).size.width * 0.05,
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
                              fontStyle: FontStyle.italic,
                            ),
                            children: [
                              TextSpan(
                                text: 'a',
                                style: TextStyle(
                                  color: Colors.red,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          ' = $secretAlice',
                          style: const TextStyle(
                            fontStyle: FontStyle.italic,
                            color: Colors.black,
                          ),
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
                            fontStyle: FontStyle.italic,
                          ),
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
                                      fontStyle: FontStyle.italic,
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
                            TextSpan(
                              text: ' mod p = $g',
                              style: const TextStyle(
                                fontStyle: FontStyle.italic,
                                color: Colors.black,
                              ),
                            ),
                            WidgetSpan(
                              child: Transform.translate(
                                offset: const Offset(0, -6),
                                child: Text(
                                  '$secretAlice',
                                  textScaleFactor: 0.8,
                                  style: const TextStyle(
                                    fontStyle: FontStyle.italic,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                            TextSpan(
                              text: ' mod $p = ${pow(g, secretAlice) % p}',
                              style: const TextStyle(
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
                        'A = ${pow(g, secretAlice) % p}; B = ${pow(g, secretBob) % p}',
                        style: const TextStyle(
                          fontStyle: FontStyle.italic,
                          color: Colors.black,
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
                right: MediaQuery.of(context).size.width * 0.24,
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
                        'p = $p; g = $g',
                        style: const TextStyle(
                          fontStyle: FontStyle.italic,
                          color: Colors.black,
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
                right: MediaQuery.of(context).size.width * 0.22,
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
                                  color: Colors.red,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          ' = $secretBob',
                          style: const TextStyle(
                            fontStyle: FontStyle.italic,
                            color: Colors.black,
                          ),
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
                    0.55,
                right: MediaQuery.of(context).size.width * 0.1,
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
                          fontStyle: FontStyle.italic,
                        ),
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
                                    fontStyle: FontStyle.italic,
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
                          TextSpan(
                            text: ' mod p = $g',
                            style: const TextStyle(
                              fontStyle: FontStyle.italic,
                              color: Colors.black,
                            ),
                          ),
                          WidgetSpan(
                            child: Transform.translate(
                              offset: const Offset(0, -6),
                              child: Text(
                                '$secretBob',
                                textScaleFactor: 0.8,
                                style: const TextStyle(
                                  fontStyle: FontStyle.italic,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                          TextSpan(
                            text: ' mod $p = ${pow(g, secretBob) % p}',
                            style: const TextStyle(
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

            // Right-Text 3
            Visibility(
              visible: textVisibility,
              child: Positioned(
                top: (MediaQuery.of(context).size.height -
                        HomePageDHState.returnAppBar[1]) *
                    0.55,
                right: MediaQuery.of(context).size.width * 0.22,
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
                        'B = ${pow(g, secretBob) % p}; A = ${pow(g, secretAlice) % p}',
                        style: const TextStyle(
                          fontStyle: FontStyle.italic,
                          color: Colors.black,
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
                        'p = $p; g = $g',
                        style: const TextStyle(
                          fontStyle: FontStyle.italic,
                          color: Colors.black,
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
                        'A = ${pow(g, secretAlice) % p}',
                        style: const TextStyle(
                          fontStyle: FontStyle.italic,
                          color: Colors.black,
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
                        'B = ${pow(g, secretBob) % p}',
                        style: const TextStyle(
                          fontStyle: FontStyle.italic,
                          color: Colors.black,
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
                        'B = ${pow(g, secretBob) % p}',
                        style: const TextStyle(
                          fontStyle: FontStyle.italic,
                          color: Colors.black,
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
                    0.08,
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
                        'A = ${pow(g, secretAlice) % p}',
                        style: const TextStyle(
                          fontStyle: FontStyle.italic,
                          color: Colors.black,
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
                    0.08,
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
                        'p = $p; g = $g',
                        style: const TextStyle(
                          fontStyle: FontStyle.italic,
                          color: Colors.black,
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
                // top: (MediaQuery.of(context).size.height -
                //         HomePageDHState.returnAppBar[1]) *
                //     0.6,
                top: (MediaQuery.of(context).size.height -
                        HomePageDHState.returnAppBar[1]) *
                    0.55,
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
                          fontStyle: FontStyle.italic,
                        ),
                        children: [
                          TextSpan(
                            text: 'S = ${pow(g, secretBob) % p}',
                            style: const TextStyle(
                              fontStyle: FontStyle.italic,
                              color: Colors.black,
                            ),
                          ),
                          WidgetSpan(
                            child: Transform.translate(
                              offset: const Offset(0, -6),
                              child: Text(
                                '$secretAlice',
                                textScaleFactor: 0.8,
                                style: const TextStyle(
                                  fontStyle: FontStyle.italic,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                          TextSpan(
                            text:
                                ' mod $p = ${pow(pow(g, secretBob) % p, secretAlice) % p} ',
                            style: const TextStyle(
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

            // Right Modulo Result_1
            Visibility(
              visible: textVisibility,
              child: Positioned(
                // top: (MediaQuery.of(context).size.height -
                //         HomePageDHState.returnAppBar[1]) *
                //     0.6,
                top: (MediaQuery.of(context).size.height -
                        HomePageDHState.returnAppBar[1]) *
                    0.55,
                left: MediaQuery.of(context).size.width * 0.66,
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
                          fontStyle: FontStyle.italic,
                        ),
                        children: [
                          TextSpan(
                            text: 'S = ${pow(g, secretAlice) % p}',
                            style: const TextStyle(
                              fontStyle: FontStyle.italic,
                              color: Colors.black,
                            ),
                          ),
                          WidgetSpan(
                            child: Transform.translate(
                              offset: const Offset(0, -6),
                              child: Text(
                                '$secretBob',
                                textScaleFactor: 0.8,
                                style: const TextStyle(
                                  fontStyle: FontStyle.italic,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                          TextSpan(
                            text: ' mod $p = $g',
                            style: const TextStyle(
                              color: Colors.black,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                          WidgetSpan(
                            child: Transform.translate(
                              offset: const Offset(0, -6),
                              child: Text(
                                '$secretBob',
                                textScaleFactor: 0.8,
                                style: const TextStyle(
                                  fontStyle: FontStyle.italic,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                          TextSpan(
                            text:
                                ' mod $p = ${pow(pow(g, secretAlice) % p, secretBob) % p}',
                            style: const TextStyle(
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
                tooltip: AppLocalizations.of(context)!.toolTipRightBtn,
                backgroundColor: isLastIndex[0] ? Colors.grey : Colors.blue,
                heroTag: "right9",
                onPressed: () {
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
                tooltip: AppLocalizations.of(context)!.toolTipLeftBtn,
                backgroundColor: isLastIndex[1] ? Colors.grey : Colors.blue,
                heroTag: "left9",
                onPressed: () {
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
                tooltip: AppLocalizations.of(context)!.toolTipDescBtn,
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
                tooltip: AppLocalizations.of(context)!.toolTipSettingsBtn,
                heroTag: "settings9",
                backgroundColor: Colors.orange,
                onPressed: () {
                  switchOldValue = Global.switchValue;
                  scaleEnabledOldVal = Global.scaleEnabled;
                  nControllerOldVal.text = pController.text;
                  rControllerOldVal.text = gController.text;
                  secretBobControllerOldVal.text = secretBobController.text;
                  secretAliceControllerOldVal.text = secretAliceController.text;
                  nOldVal = p;
                  rOldVal = g;
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
                                'p = ',
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
                                          controller: pController,
                                          inputFormatters: <TextInputFormatter>[
                                            LengthLimitingTextInputFormatter(3),
                                            FilteringTextInputFormatter
                                                .digitsOnly
                                          ],
                                          decoration: const InputDecoration(
                                            hintText: 'max (999)',
                                            hintStyle:
                                                TextStyle(color: Colors.grey),
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
                                'g = ',
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
                                          controller: gController,
                                          inputFormatters: <TextInputFormatter>[
                                            LengthLimitingTextInputFormatter(3),
                                            FilteringTextInputFormatter
                                                .digitsOnly
                                          ],
                                          decoration: const InputDecoration(
                                            hintText: 'max (999)',
                                            hintStyle:
                                                TextStyle(color: Colors.grey),
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
                                "b =",
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
                                            hintText: 'max (999)',
                                            hintStyle:
                                                TextStyle(color: Colors.grey),
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
                                "a =",
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
                                            hintText: 'max (999)',
                                            hintStyle:
                                                TextStyle(color: Colors.grey),
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
                      actions: <Widget>[
                        TextButton(
                          onPressed: () {
                            if (isPrime(int.parse(pController.text))) {
                              List roots =
                                  allroots(int.parse(pController.text));
                              showDialog<String>(
                                barrierDismissible: false,
                                context: context,
                                builder: (BuildContext context) => AlertDialog(
                                  scrollable: true,
                                  shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(32.0))),
                                  title: Text(
                                    AppLocalizations.of(context)!
                                        .possibleRoots, //'Possible roots',
                                    textAlign: TextAlign.center,
                                  ),
                                  content: Center(child: Text('$roots')),
                                  actions: <Widget>[
                                    TextButton(
                                        onPressed: () {
                                          Navigator.pop(context, 'OK');
                                        },
                                        child: const Text('Ok')),
                                  ],
                                ),
                              );
                            } else {
                              showFlushBarMessage(
                                  const Icon(
                                    Icons.error,
                                    size: 32,
                                    color: Colors.white,
                                  ),
                                  AppLocalizations.of(context)!.errorTitel,
                                  AppLocalizations.of(context)!
                                      .primeNumberErrorMessage,
                                  Colors.red);
                            }
                          },
                          child:
                              Text(AppLocalizations.of(context)!.suggestRoot),
                        ),
                        TextButton(
                          onPressed: () {
                            if (pController.text.isNotEmpty &&
                                gController.text.isNotEmpty &&
                                secretBobController.text.isNotEmpty &&
                                secretAliceController.text.isNotEmpty) {
                              if (isPrime(int.parse(pController.text)) &&
                                  isPrimitvRoot(int.parse(gController.text),
                                      int.parse(pController.text)) &&
                                  int.parse(pController.text) >
                                      int.parse(gController.text)) {
                                p = int.parse(pController.text);
                                g = int.parse(gController.text);
                                secretAlice =
                                    int.parse(secretAliceController.text);
                                secretBob = int.parse(secretBobController.text);
                                Navigator.pop(context, 'OK');
                              }
                              setState(
                                () {
                                  isCanceled = false;
                                  if (!isPrime(int.parse(pController.text))) {
                                    showFlushBarMessage(
                                        const Icon(
                                          Icons.error,
                                          size: 32,
                                          color: Colors.white,
                                        ),
                                        AppLocalizations.of(context)!
                                            .errorTitel,
                                        AppLocalizations.of(context)!
                                            .primeNumberErrorMessage,
                                        Colors.red);
                                  } else if (!isPrimitvRoot(
                                          int.parse(gController.text),
                                          int.parse(pController.text)) ||
                                      int.parse(pController.text) <
                                          int.parse(gController.text)) {
                                    showFlushBarMessage(
                                        const Icon(
                                          Icons.error,
                                          size: 32,
                                          color: Colors.white,
                                        ),
                                        AppLocalizations.of(context)!
                                            .errorTitel,
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
                                  AppLocalizations.of(context)!.errorTitel,
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
                              p = nOldVal;
                              g = rOldVal;
                              secretBob = secretBobOldVal;
                              secretAlice = scretAliceOldVal;
                              pController.text = nControllerOldVal.text;
                              gController.text = rControllerOldVal.text;
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
                          AppLocalizations.of(context)!.doneTitel,
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
                tooltip: AppLocalizations.of(context)!.toolTipResetBtn,
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
                    p = 17;
                    g = 3;
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

                    pController = TextEditingController()..text = p.toString();
                    gController = TextEditingController()..text = g.toString();
                    secretBobController = TextEditingController()
                      ..text = secretBob.toString();
                    secretAliceController = TextEditingController()
                      ..text = secretAlice.toString();

                    nControllerOldVal = TextEditingController()
                      ..text = p.toString();
                    rControllerOldVal = TextEditingController()
                      ..text = g.toString();
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
                tooltip: AppLocalizations.of(context)!.toolTipMoreBtn,
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
                      '${indexVisibilitySlide3DH + 1} / 6',
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
        content: const SizedBox(
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
                    AppLocalizations.of(context)!.errorTitel,
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
      stopFunction();
      selectPageNumber(int.parse(pageController3.text) - 1);
    });
  }

  stopFunction() {
    setState(
      () {
        isLastIndex = [false, true];
        isCanceled = false;
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

        pController = TextEditingController()..text = p.toString();
        gController = TextEditingController()..text = g.toString();
        secretBobController = TextEditingController()
          ..text = secretBob.toString();
        secretAliceController = TextEditingController()
          ..text = secretAlice.toString();

        nControllerOldVal = TextEditingController()..text = p.toString();
        rControllerOldVal = TextEditingController()..text = g.toString();
        secretBobControllerOldVal = TextEditingController()
          ..text = secretBob.toString();
        secretAliceControllerOldVal = TextEditingController()
          ..text = secretAlice.toString();
        delayTimer = Timer(const Duration(milliseconds: 50), () {
          setState(() {
            textVisibility = true;
            delayTimer.cancel();
          });
        });
      },
    );
  }
}
