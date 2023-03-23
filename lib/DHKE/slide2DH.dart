// ignore_for_file: file_names

import 'dart:async';
import 'dart:math';
import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:key_exchange_visualization/Painters/arrow-painter.dart';

import '../Painters/circle-container.dart';
import '../main.dart';
// ignore: implementation_imports
import 'package:provider/src/provider.dart';
import 'home-page-DH.dart';
import 'positioned-widget.dart';
import 'package:flutter/material.dart';
import '../Main/language-provider.dart';
import '../Main/global.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Slide2DH extends StatefulWidget {
  const Slide2DH({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  Slide2DHState createState() => Slide2DHState();
}

double x1 = 0.3;
double x2 = 0.3;
double x3 = 0.3;
double x4 = 0.3;
double x5 = 0.3;
double x6 = 0.3;
double x7 = 0.3;
double x8 = 0.3;
double x9 = 0.3;
double x10 = 0.3;
double x11 = 0.3;
double x12 = 0.3;
double x13 = 0.3;
double x14 = 0.3;
double x15 = 0.3;
double x16 = 0.3;
double y1 = 0.478;
double y2 = 0.478;
double y3 = 0.478;
double y4 = 0.478;
double y5 = 0.478;
double y6 = 0.478;
double y7 = 0.478;
double y8 = 0.478;
double y9 = 0.478;
double y10 = 0.478;
double y11 = 0.478;
double y12 = 0.478;
double y13 = 0.478;
double y14 = 0.478;
double y15 = 0.478;
double y16 = 0.478;

bool isShown = true;
final scrollController = ScrollController();
bool scaleEnabledOldVal = false;
bool switchOldValue = false;
List isLastIndex = [false, true];
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
var seconds = Global.slider;
bool dropButton = true;
bool desc = true;
bool descVisbility = desc;
String text = '';
bool videoButton = true;
bool settingButton = true;
var timerSeconds = 3;
int result = 1;
int prevResult = 0;
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
double prevResultOpacity = 0.0;
TextEditingController pageController2 = TextEditingController()
  ..text = (indexVisibilitySlide2DH + 1).toString();

Timer delayTimer = Timer(const Duration(seconds: 1), () {});
Timer videoTimerVariable = Timer(const Duration(seconds: 1), () {});
Timer pageNumberTimer = Timer(Duration(seconds: seconds), () {});
Timer timerSlide2DH = Timer(const Duration(seconds: 1), () {});
Timer videoTimerSlide2DH =
    Timer.periodic(Duration(seconds: Global.slider), (videoTimer) {});
Timer opacityTimer =
    Timer.periodic(Duration(seconds: Global.slider), (opacityTimer) {});

List circlesOpacity = [
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

List numberOpacity = [
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

List lineOpacity = [
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

List linesColor = [
  Colors.red,
  Colors.red,
  Colors.red,
  Colors.red,
  Colors.red,
  Colors.red,
  Colors.red,
  Colors.red,
  Colors.red,
  Colors.red,
  Colors.red,
  Colors.red,
  Colors.red,
  Colors.red,
  Colors.red,
  Colors.red,
];

List numberColor = [
  Colors.red,
  Colors.red,
  Colors.red,
  Colors.red,
  Colors.red,
  Colors.red,
  Colors.red,
  Colors.red,
  Colors.red,
  Colors.red,
  Colors.red,
  Colors.red,
  Colors.red,
  Colors.red,
  Colors.red,
  Colors.red,
];

List redBulletOpacity = [
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

List blackBulletOpacity = [
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

class Slide2DHState extends State<Slide2DH>
    with SingleTickerProviderStateMixin, WidgetsBindingObserver {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback(
      (introDuration) async {
        openIntroDialog();
      },
    );

    super.initState();
  }

  @override
  // ignore: must_call_super
  void dispose() {
    videoTimerVariable.cancel();
    videoTimerProblem().cancel();
    timerSlide2DH.cancel();
    delayTimer.cancel();
    videoTimerSlide2DH.cancel();
    opacityTimer.cancel();
    videoTimerVariable.cancel;
    pageNumberTimer.cancel();
    selectPageNumber(0, 0).cancel();

    isLastIndex = [false, true];
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
    seconds = Global.slider;
    dropButton = true;
    desc = true;
    descVisbility = desc;
    text = '';
    videoButton = true;
    settingButton = true;
    timerSeconds = 3;
    resultVisibility = true;
    resultOpacity = 0.0;
    isShown = true;
    x1 = 0.16;
    x2 = 0.16;
    x3 = 0.16;
    x4 = 0.16;
    x5 = 0.16;
    x6 = 0.16;
    x7 = 0.16;
    x8 = 0.16;
    x9 = 0.16;
    x10 = 0.16;
    x11 = 0.16;
    x12 = 0.16;
    x13 = 0.16;
    x14 = 0.16;
    x15 = 0.16;
    x16 = 0.16;
    y1 = 0.355;
    y2 = 0.355;
    y3 = 0.355;
    y4 = 0.355;
    y5 = 0.355;
    y6 = 0.355;
    y7 = 0.355;
    y8 = 0.355;
    y9 = 0.355;
    y10 = 0.355;
    y11 = 0.355;
    y12 = 0.355;
    y13 = 0.355;
    y14 = 0.355;
    y15 = 0.355;
    y16 = 0.355;
    circlesOpacity = [
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
    numberOpacity = [
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

    lineOpacity = [
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

    linesColor = [
      Colors.red,
      Colors.red,
      Colors.red,
      Colors.red,
      Colors.red,
      Colors.red,
      Colors.red,
      Colors.red,
      Colors.red,
      Colors.red,
      Colors.red,
      Colors.red,
      Colors.red,
      Colors.red,
      Colors.red,
      Colors.red,
    ];

    numberColor = [
      Colors.red,
      Colors.red,
      Colors.red,
      Colors.red,
      Colors.red,
      Colors.red,
      Colors.red,
      Colors.red,
      Colors.red,
      Colors.red,
      Colors.red,
      Colors.red,
      Colors.red,
      Colors.red,
      Colors.red,
      Colors.red,
    ];

    redBulletOpacity = [
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

    blackBulletOpacity = [
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

  Positioned bulletPosition(
      double top, double left, double opacity, Color color) {
    return Positioned(
      top: (MediaQuery.of(context).size.height -
              HomePageDHState.returnAppBar[1]) *
          top,
      left: MediaQuery.of(context).size.width * left,
      child: AnimatedOpacity(
        duration: const Duration(seconds: 1),
        opacity: opacity,
        child: CustomPaint(
          size: Size(MediaQuery.of(context).size.width * 0.01,
              MediaQuery.of(context).size.height * 0.02),
          painter: CirclePainter(color, PaintingStyle.fill),
        ),
      ),
    );
  }

  AnimatedPositioned numberPosition(
      double top, double left, String num, double opacity, Color color) {
    return AnimatedPositioned(
      top: (MediaQuery.of(context).size.height -
              HomePageDHState.returnAppBar[1]) *
          top,
      left: MediaQuery.of(context).size.width * left,
      width: MediaQuery.of(context).size.width * 0.05,
      height: (MediaQuery.of(context).size.height -
              HomePageDHState.returnAppBar[1]) *
          0.05,
      duration: Duration(seconds: seconds),
      child: AnimatedOpacity(
        duration: const Duration(seconds: 1),
        opacity: opacity,
        child: FittedBox(
          child: Text(
            num,
            style: TextStyle(fontSize: 20, color: color),
          ),
        ),
      ),
    );
  }

  Positioned arrowPosition(
      {required double p1x,
      required double p1y,
      required double p2x,
      required double p2y,
      required double opacity,
      required Color color}) {
    return Positioned(
      top: (MediaQuery.of(context).size.height -
              HomePageDHState.returnAppBar[1]) *
          0.1,
      left: MediaQuery.of(context).size.width * 0.535,
      child: AnimatedOpacity(
        duration: const Duration(seconds: 1),
        opacity: opacity,
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
            arrowColor: color,
          ),
        ),
      ),
    );
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    setState(() {
      videoTimerProblem().cancel();
    });
  }

  Timer selectPageNumber(int a, int sec) {
    pageNumberTimer = Timer.periodic(
      Duration(seconds: sec),
      (Timer pageNumberTimer) {
        setState(
          () {
            if (sec == 0) {
              delay = true;
            }
            seconds = 0;
            if (indexVisibilitySlide2DH == a) {
              pageNumberTimer.cancel();
            }
            if (indexVisibilitySlide2DH < a && delay) {
              indexVisibilitySlide2DH++;
              pageController2 = TextEditingController()
                ..text = (indexVisibilitySlide2DH + 1).toString();

              stepsVisibility[0] = !stepsVisibility[0];
              stepsVisibility[1] = !stepsVisibility[1];
              if (indexVisibilitySlide2DH > 0) {
                prevResult = (pow(3, indexVisibilitySlide2DH - 1).toInt()) % 17;
              }
              result = (pow(3, indexVisibilitySlide2DH).toInt()) % 17;
            }
            if (indexVisibilitySlide2DH == 0) {
              numberOpacity[0] = 1.0;
              x1 = 0.728;
              y1 = 0.06;
              redBulletOpacity[0] = 1.0;
              numberOpacity[0] = 1.0;
              resultOpacity = 1.0;
              isLastIndex[1] = false;
            } else if (indexVisibilitySlide2DH == 1 && delay) {
              prevResultOpacity = 1.0;
              numberColor[0] = Colors.black;
              numberOpacity[1] = 1.0;
              x2 = 0.812;
              y2 = 0.2;
              opTimer(0, false, 0);
              redBulletOpacity[0] = 0.0;
              blackBulletOpacity[0] = 1.0;
              redBulletOpacity[2] = 1.0;
            } else if (indexVisibilitySlide2DH == 2 && delay) {
              numberColor[1] = Colors.black;
              numberOpacity[2] = 1.0;
              x3 = 0.58;
              y3 = 0.57;
              circlesOpacity[0] = 0.0;
              lineOpacity[0] = 1.0;
              opacityTimer.cancel();
              opTimer(1, false, 0);
              redBulletOpacity[2] = 0.0;
              blackBulletOpacity[2] = 1.0;
              redBulletOpacity[8] = 1.0;
            } else if (indexVisibilitySlide2DH == 3 && delay) {
              numberColor[2] = Colors.black;
              numberOpacity[3] = 1.0;
              x4 = 0.52;
              y4 = 0.5;
              circlesOpacity[1] = 0.0;
              lineOpacity[1] = 1.0;
              opacityTimer.cancel();
              opTimer(2, false, 0);
              redBulletOpacity[8] = 0.0;
              blackBulletOpacity[8] = 1.0;
              redBulletOpacity[9] = 1.0;
            } else if (indexVisibilitySlide2DH == 4 && delay) {
              numberColor[3] = Colors.black;
              numberOpacity[4] = 1.0;
              x5 = 0.49;
              y5 = 0.2;
              circlesOpacity[2] = 0.0;
              lineOpacity[2] = 1.0;
              opacityTimer.cancel();
              opTimer(3, false, 0);
              redBulletOpacity[9] = 0.0;
              blackBulletOpacity[9] = 1.0;
              redBulletOpacity[12] = 1.0;
            } else if (indexVisibilitySlide2DH == 5 && delay) {
              numberColor[4] = Colors.black;
              numberOpacity[5] = 1.0;
              x6 = 0.815;
              y6 = 0.42;
              circlesOpacity[3] = 0.0;
              lineOpacity[3] = 1.0;
              opacityTimer.cancel();
              opTimer(4, false, 0);
              redBulletOpacity[12] = 0.0;
              blackBulletOpacity[12] = 1.0;
              redBulletOpacity[4] = 1.0;
            } else if (indexVisibilitySlide2DH == 6 && delay) {
              numberColor[5] = Colors.black;
              numberOpacity[6] = 1.0;
              x7 = 0.585;
              y7 = 0.052;
              circlesOpacity[4] = 0.0;
              lineOpacity[4] = 1.0;
              opacityTimer.cancel();
              opTimer(5, false, 0);
              redBulletOpacity[4] = 0.0;
              blackBulletOpacity[4] = 1.0;
              redBulletOpacity[14] = 1.0;
            } else if (indexVisibilitySlide2DH == 7 && delay) {
              numberColor[6] = Colors.black;
              numberOpacity[7] = 1.0;
              x8 = 0.49;
              y8 = 0.42;
              circlesOpacity[5] = 0.0;
              lineOpacity[5] = 1.0;
              opacityTimer.cancel();
              opTimer(6, false, 0);
              redBulletOpacity[14] = 0.0;
              blackBulletOpacity[14] = 1.0;
              redBulletOpacity[10] = 1.0;
            } else if (indexVisibilitySlide2DH == 8 && delay) {
              numberColor[7] = Colors.black;
              numberOpacity[8] = 1.0;
              x9 = 0.65;
              y9 = 0.035;
              circlesOpacity[6] = 0.0;
              lineOpacity[6] = 1.0;
              opacityTimer.cancel();
              opTimer(7, false, 0);
              redBulletOpacity[10] = 0.0;
              blackBulletOpacity[10] = 1.0;
              redBulletOpacity[15] = 1.0;
            } else if (indexVisibilitySlide2DH == 9 && delay) {
              numberColor[8] = Colors.black;
              numberOpacity[9] = 1.0;
              x10 = 0.52;
              y10 = 0.11;
              circlesOpacity[7] = 0.0;
              lineOpacity[7] = 1.0;
              opacityTimer.cancel();
              opTimer(8, false, 0);
              redBulletOpacity[15] = 0.0;
              blackBulletOpacity[15] = 1.0;
              redBulletOpacity[13] = 1.0;
            } else if (indexVisibilitySlide2DH == 10 && delay) {
              numberColor[9] = Colors.black;
              numberOpacity[10] = 1.0;
              x11 = 0.65;
              y11 = 0.59;
              circlesOpacity[8] = 0.0;
              lineOpacity[8] = 1.0;
              opacityTimer.cancel();
              opTimer(9, false, 0);
              redBulletOpacity[13] = 0.0;
              blackBulletOpacity[13] = 1.0;
              redBulletOpacity[7] = 1.0;
            } else if (indexVisibilitySlide2DH == 11 && delay) {
              numberColor[10] = Colors.black;
              numberOpacity[11] = 1.0;
              x12 = 0.723;
              y12 = 0.57;
              circlesOpacity[9] = 0.0;
              lineOpacity[9] = 1.0;
              opacityTimer.cancel();
              opTimer(10, false, 0);
              redBulletOpacity[7] = 0.0;
              blackBulletOpacity[7] = 1.0;
              redBulletOpacity[6] = 1.0;
            } else if (indexVisibilitySlide2DH == 12 && delay) {
              numberColor[11] = Colors.black;
              numberOpacity[12] = 1.0;
              x13 = 0.825;
              y13 = 0.31;
              circlesOpacity[10] = 0.0;
              lineOpacity[10] = 1.0;
              opacityTimer.cancel();
              opTimer(11, false, 0);
              redBulletOpacity[6] = 0.0;
              blackBulletOpacity[6] = 1.0;
              redBulletOpacity[3] = 1.0;
            } else if (indexVisibilitySlide2DH == 13 && delay) {
              numberColor[12] = Colors.black;
              numberOpacity[13] = 1.0;
              x14 = 0.475;
              y14 = 0.311;
              circlesOpacity[11] = 0.0;
              lineOpacity[11] = 1.0;
              opacityTimer.cancel();
              opTimer(12, false, 0);
              redBulletOpacity[3] = 0.0;
              blackBulletOpacity[3] = 1.0;
              redBulletOpacity[11] = 1.0;
            } else if (indexVisibilitySlide2DH == 14 && delay) {
              numberColor[13] = Colors.black;
              numberOpacity[14] = 1.0;
              x15 = 0.78;
              y15 = 0.115;
              circlesOpacity[12] = 0.0;
              lineOpacity[12] = 1.0;
              opacityTimer.cancel();
              opTimer(13, false, 0);
              redBulletOpacity[11] = 0.0;
              blackBulletOpacity[11] = 1.0;
              redBulletOpacity[1] = 1.0;
            } else if (indexVisibilitySlide2DH == 15 && delay) {
              numberColor[14] = Colors.black;
              numberOpacity[15] = 1.0;
              x16 = 0.78;
              y16 = 0.52;
              circlesOpacity[13] = 0.0;
              lineOpacity[13] = 1.0;
              opacityTimer.cancel();
              opTimer(14, false, 0);
              redBulletOpacity[1] = 0.0;
              blackBulletOpacity[1] = 1.0;
              redBulletOpacity[5] = 1.0;
            } else if (indexVisibilitySlide2DH == 16 && delay) {
              numberColor[15] = Colors.black;
              circlesOpacity[14] = 0.0;
              lineOpacity[14] = 1.0;
              opacityTimer.cancel();
              opTimer(15, false, 0);
              blackBulletOpacity[0] = 0.0;
              redBulletOpacity[5] = 0.0;
              blackBulletOpacity[5] = 1.0;
              redBulletOpacity[0] = 1.0;
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

            if (indexVisibilitySlide2DH == 16) {
              openDialog(false);
              videoTimerVariable.cancel();
            }
            if (indexVisibilitySlide2DH < 16 && delay) {
              indexVisibilitySlide2DH++;
              pageController2 = TextEditingController()
                ..text = (indexVisibilitySlide2DH + 1).toString();

              stepsVisibility[0] = !stepsVisibility[0];
              stepsVisibility[1] = !stepsVisibility[1];
              if (indexVisibilitySlide2DH > 0) {
                prevResult = (pow(3, indexVisibilitySlide2DH - 1).toInt()) % 17;
              }
              result = (pow(3, indexVisibilitySlide2DH).toInt()) % 17;
            }
            if (indexVisibilitySlide2DH == 0) {
              numberOpacity[0] = 1.0;
              x1 = 0.728;
              y1 = 0.06;
              redBulletOpacity[0] = 1.0;
              numberOpacity[0] = 1.0;
              resultOpacity = 1.0;
              isLastIndex[1] = false;
            } else if (indexVisibilitySlide2DH == 1 && delay) {
              prevResultOpacity = 1.0;
              numberColor[0] = Colors.black;
              numberOpacity[1] = 1.0;
              x2 = 0.812;
              y2 = 0.2;
              opTimer(0, false, 1);
              redBulletOpacity[0] = 0.0;
              blackBulletOpacity[0] = 1.0;
              redBulletOpacity[2] = 1.0;
            } else if (indexVisibilitySlide2DH == 2 && delay) {
              numberColor[1] = Colors.black;
              numberOpacity[2] = 1.0;
              x3 = 0.58;
              y3 = 0.57;
              circlesOpacity[0] = 0.0;
              lineOpacity[0] = 1.0;
              opacityTimer.cancel();
              opTimer(1, false, 1);
              redBulletOpacity[2] = 0.0;
              blackBulletOpacity[2] = 1.0;
              redBulletOpacity[8] = 1.0;
            } else if (indexVisibilitySlide2DH == 3 && delay) {
              numberColor[2] = Colors.black;
              numberOpacity[3] = 1.0;
              x4 = 0.52;
              y4 = 0.5;
              circlesOpacity[1] = 0.0;
              lineOpacity[1] = 1.0;
              opacityTimer.cancel();
              opTimer(2, false, 1);
              redBulletOpacity[8] = 0.0;
              blackBulletOpacity[8] = 1.0;
              redBulletOpacity[9] = 1.0;
            } else if (indexVisibilitySlide2DH == 4 && delay) {
              numberColor[3] = Colors.black;
              numberOpacity[4] = 1.0;
              x5 = 0.49;
              y5 = 0.2;
              circlesOpacity[2] = 0.0;
              lineOpacity[2] = 1.0;
              opacityTimer.cancel();
              opTimer(3, false, 1);
              redBulletOpacity[9] = 0.0;
              blackBulletOpacity[9] = 1.0;
              redBulletOpacity[12] = 1.0;
            } else if (indexVisibilitySlide2DH == 5 && delay) {
              numberColor[4] = Colors.black;
              numberOpacity[5] = 1.0;
              x6 = 0.815;
              y6 = 0.42;
              circlesOpacity[3] = 0.0;
              lineOpacity[3] = 1.0;
              opacityTimer.cancel();
              opTimer(4, false, 1);
              redBulletOpacity[12] = 0.0;
              blackBulletOpacity[12] = 1.0;
              redBulletOpacity[4] = 1.0;
            } else if (indexVisibilitySlide2DH == 6 && delay) {
              numberColor[5] = Colors.black;
              numberOpacity[6] = 1.0;
              x7 = 0.585;
              y7 = 0.052;
              circlesOpacity[4] = 0.0;
              lineOpacity[4] = 1.0;
              opacityTimer.cancel();
              opTimer(5, false, 1);
              redBulletOpacity[4] = 0.0;
              blackBulletOpacity[4] = 1.0;
              redBulletOpacity[14] = 1.0;
            } else if (indexVisibilitySlide2DH == 7 && delay) {
              numberColor[6] = Colors.black;
              numberOpacity[7] = 1.0;
              x8 = 0.49;
              y8 = 0.42;
              circlesOpacity[5] = 0.0;
              lineOpacity[5] = 1.0;
              opacityTimer.cancel();
              opTimer(6, false, 1);
              redBulletOpacity[14] = 0.0;
              blackBulletOpacity[14] = 1.0;
              redBulletOpacity[10] = 1.0;
            } else if (indexVisibilitySlide2DH == 8 && delay) {
              numberColor[7] = Colors.black;
              numberOpacity[8] = 1.0;
              x9 = 0.65;
              y9 = 0.035;
              circlesOpacity[6] = 0.0;
              lineOpacity[6] = 1.0;
              opacityTimer.cancel();
              opTimer(7, false, 1);
              redBulletOpacity[10] = 0.0;
              blackBulletOpacity[10] = 1.0;
              redBulletOpacity[15] = 1.0;
            } else if (indexVisibilitySlide2DH == 9 && delay) {
              numberColor[8] = Colors.black;
              numberOpacity[9] = 1.0;
              x10 = 0.52;
              y10 = 0.11;
              circlesOpacity[7] = 0.0;
              lineOpacity[7] = 1.0;
              opacityTimer.cancel();
              opTimer(8, false, 1);
              redBulletOpacity[15] = 0.0;
              blackBulletOpacity[15] = 1.0;
              redBulletOpacity[13] = 1.0;
            } else if (indexVisibilitySlide2DH == 10 && delay) {
              numberColor[9] = Colors.black;
              numberOpacity[10] = 1.0;
              x11 = 0.65;
              y11 = 0.59;
              circlesOpacity[8] = 0.0;
              lineOpacity[8] = 1.0;
              opacityTimer.cancel();
              opTimer(9, false, 1);
              redBulletOpacity[13] = 0.0;
              blackBulletOpacity[13] = 1.0;
              redBulletOpacity[7] = 1.0;
            } else if (indexVisibilitySlide2DH == 11 && delay) {
              numberColor[10] = Colors.black;
              numberOpacity[11] = 1.0;
              x12 = 0.723;
              y12 = 0.57;
              circlesOpacity[9] = 0.0;
              lineOpacity[9] = 1.0;
              opacityTimer.cancel();
              opTimer(10, false, 1);
              redBulletOpacity[7] = 0.0;
              blackBulletOpacity[7] = 1.0;
              redBulletOpacity[6] = 1.0;
            } else if (indexVisibilitySlide2DH == 12 && delay) {
              numberColor[11] = Colors.black;
              numberOpacity[12] = 1.0;
              x13 = 0.825;
              y13 = 0.31;
              circlesOpacity[10] = 0.0;
              lineOpacity[10] = 1.0;
              opacityTimer.cancel();
              opTimer(11, false, 1);
              redBulletOpacity[6] = 0.0;
              blackBulletOpacity[6] = 1.0;
              redBulletOpacity[3] = 1.0;
            } else if (indexVisibilitySlide2DH == 13 && delay) {
              numberColor[12] = Colors.black;
              numberOpacity[13] = 1.0;
              x14 = 0.475;
              y14 = 0.311;
              circlesOpacity[11] = 0.0;
              lineOpacity[11] = 1.0;
              opacityTimer.cancel();
              opTimer(12, false, 1);
              redBulletOpacity[3] = 0.0;
              blackBulletOpacity[3] = 1.0;
              redBulletOpacity[11] = 1.0;
            } else if (indexVisibilitySlide2DH == 14 && delay) {
              numberColor[13] = Colors.black;
              numberOpacity[14] = 1.0;
              x15 = 0.78;
              y15 = 0.115;
              circlesOpacity[12] = 0.0;
              lineOpacity[12] = 1.0;
              opacityTimer.cancel();
              opTimer(13, false, 1);
              redBulletOpacity[11] = 0.0;
              blackBulletOpacity[11] = 1.0;
              redBulletOpacity[1] = 1.0;
            } else if (indexVisibilitySlide2DH == 15 && delay) {
              numberColor[14] = Colors.black;
              numberOpacity[15] = 1.0;
              x16 = 0.78;
              y16 = 0.52;
              circlesOpacity[13] = 0.0;
              lineOpacity[13] = 1.0;
              opacityTimer.cancel();
              opTimer(14, false, 1);
              redBulletOpacity[1] = 0.0;
              blackBulletOpacity[1] = 1.0;
              redBulletOpacity[5] = 1.0;
            } else if (indexVisibilitySlide2DH == 16 && delay) {
              numberColor[15] = Colors.black;
              circlesOpacity[14] = 0.0;
              lineOpacity[14] = 1.0;
              opacityTimer.cancel();
              opTimer(15, false, 1);
              blackBulletOpacity[0] = 0.0;
              redBulletOpacity[5] = 0.0;
              blackBulletOpacity[5] = 1.0;
              redBulletOpacity[0] = 1.0;
              isLastIndex[0] = true;
            }
          },
        );
      },
    );
    return videoTimerVariable;
  }

  bool stop = true;
  double h = 0;
  double w = 0;

  @override
  Widget build(BuildContext context) {
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
      child: Stack(
        children: [
          Positioned(
            top: (MediaQuery.of(context).size.height -
                    HomePageDHState.returnAppBar[1]) *
                0.1,
            left: MediaQuery.of(context).size.width * 0.535,
            child: CustomPaint(
              size: Size(
                  MediaQuery.of(context).size.width * 0.28,
                  (MediaQuery.of(context).size.height -
                          HomePageDHState.returnAppBar[1]) *
                      0.47),
              painter: CirclePainter(Colors.blue, PaintingStyle.stroke),
            ),
          ),

          bulletPosition(0.11, 0.725, redBulletOpacity[0], Colors.red),
          bulletPosition(0.11, 0.725, blackBulletOpacity[0], Colors.black),

          // numberPosition(0.06, 0.728, '1', numberOpacity[0]),

          bulletPosition(0.16, 0.77, redBulletOpacity[1], Colors.red),
          bulletPosition(0.16, 0.77, blackBulletOpacity[1], Colors.black),

          // numberPosition(0.115, 0.78, '2', numberOpacity[1]),

          bulletPosition(0.23, 0.798, redBulletOpacity[2], Colors.red),
          bulletPosition(0.23, 0.798, blackBulletOpacity[2], Colors.black),

          // numberPosition(0.2, 0.815, '3', numberOpacity[2]),

          bulletPosition(0.33, 0.81, redBulletOpacity[3], Colors.red),
          bulletPosition(0.33, 0.81, blackBulletOpacity[3], Colors.black),

          // numberPosition(0.31, 0.825, '4', numberOpacity[3]),

          bulletPosition(0.42, 0.798, redBulletOpacity[4], Colors.red),
          bulletPosition(0.42, 0.798, blackBulletOpacity[4], Colors.black),

          // numberPosition(0.42, 0.815, '5', numberOpacity[4]),

          bulletPosition(0.49, 0.77, redBulletOpacity[5], Colors.red),
          bulletPosition(0.49, 0.77, blackBulletOpacity[5], Colors.black),

          // numberPosition(0.52, 0.78, '6', numberOpacity[5]),

          bulletPosition(0.54, 0.725, redBulletOpacity[6], Colors.red),
          bulletPosition(0.54, 0.725, blackBulletOpacity[6], Colors.black),

          // numberPosition(0.57, 0.723, '7', numberOpacity[6]),

          bulletPosition(0.56, 0.67, redBulletOpacity[7], Colors.red),
          bulletPosition(0.56, 0.67, blackBulletOpacity[7], Colors.black),

          // numberPosition(0.59, 0.65, '8', numberOpacity[7]),

          bulletPosition(0.54, 0.615, redBulletOpacity[8], Colors.red),
          bulletPosition(0.54, 0.615, blackBulletOpacity[8], Colors.black),

          // numberPosition(0.57, 0.58, '9', numberOpacity[8]),

          bulletPosition(0.49, 0.57, redBulletOpacity[9], Colors.red),
          bulletPosition(0.49, 0.57, blackBulletOpacity[9], Colors.black),

          // numberPosition(0.5, 0.52, '10', numberOpacity[9]),

          bulletPosition(0.42, 0.542, redBulletOpacity[10], Colors.red),
          bulletPosition(0.42, 0.542, blackBulletOpacity[10], Colors.black),

          // numberPosition(0.42, 0.49, '11', numberOpacity[10]),

          bulletPosition(0.33, 0.53, redBulletOpacity[11], Colors.red),
          bulletPosition(0.33, 0.53, blackBulletOpacity[11], Colors.black),

          // numberPosition(0.311, 0.475, '12', numberOpacity[11]),

          bulletPosition(0.23, 0.542, redBulletOpacity[12], Colors.red),
          bulletPosition(0.23, 0.542, blackBulletOpacity[12], Colors.black),

          // numberPosition(0.2, 0.49, '13', numberOpacity[12]),

          bulletPosition(0.16, 0.57, redBulletOpacity[13], Colors.red),
          bulletPosition(0.16, 0.57, blackBulletOpacity[13], Colors.black),

          // numberPosition(0.11, 0.52, '14', numberOpacity[13]),

          bulletPosition(0.11, 0.615, redBulletOpacity[14], Colors.red),
          bulletPosition(0.11, 0.615, blackBulletOpacity[14], Colors.black),

          // numberPosition(0.052, 0.585, '15', numberOpacity[14]),

          bulletPosition(0.09, 0.67, redBulletOpacity[15], Colors.red),
          bulletPosition(0.09, 0.67, blackBulletOpacity[15], Colors.black),

          // numberPosition(0.035, 0.65, '16', numberOpacity[15]),

          // Arrow from 1 to 3
          arrowPosition(
            p1x: 0.192,
            p1y: 0.02,
            p2x: 0.266,
            p2y: 0.132,
            opacity: circlesOpacity[0],
            color: linesColor[0],
          ),
          arrowPosition(
            p1x: 0.192,
            p1y: 0.02,
            p2x: 0.266,
            p2y: 0.132,
            opacity: lineOpacity[0],
            color: Colors.black,
          ),

          // Arrow from 3 to 9
          arrowPosition(
            p1x: 0.268,
            p1y: 0.138,
            p2x: 0.0882,
            p2y: 0.44,
            opacity: circlesOpacity[1],
            color: linesColor[1],
          ),

          arrowPosition(
            p1x: 0.268,
            p1y: 0.138,
            p2x: 0.0882,
            p2y: 0.44,
            opacity: lineOpacity[1],
            color: Colors.black,
          ),

          // Arrow from 9 to 10
          arrowPosition(
            p1x: 0.083,
            p1y: 0.445,
            p2x: 0.045,
            p2y: 0.405,
            opacity: circlesOpacity[2],
            color: linesColor[2],
          ),

          arrowPosition(
            p1x: 0.083,
            p1y: 0.445,
            p2x: 0.045,
            p2y: 0.405,
            opacity: lineOpacity[2],
            color: Colors.black,
          ),

          // Arrow from 10 to 13
          arrowPosition(
            p1x: 0.04,
            p1y: 0.4,
            p2x: 0.013,
            p2y: 0.15,
            opacity: circlesOpacity[3],
            color: linesColor[3],
          ),

          arrowPosition(
            p1x: 0.04,
            p1y: 0.4,
            p2x: 0.013,
            p2y: 0.15,
            opacity: lineOpacity[3],
            color: Colors.black,
          ),

          // Arrow from 13 to 5
          arrowPosition(
            p1x: 0.013,
            p1y: 0.145,
            p2x: 0.264,
            p2y: 0.33,
            opacity: circlesOpacity[4],
            color: linesColor[4],
          ),

          arrowPosition(
            p1x: 0.013,
            p1y: 0.145,
            p2x: 0.264,
            p2y: 0.33,
            opacity: lineOpacity[4],
            color: Colors.black,
          ),

          // Arrow from 5 to 15
          arrowPosition(
            p1x: 0.264,
            p1y: 0.325,
            p2x: 0.09,
            p2y: 0.03,
            opacity: circlesOpacity[5],
            color: linesColor[5],
          ),

          arrowPosition(
            p1x: 0.264,
            p1y: 0.325,
            p2x: 0.09,
            p2y: 0.03,
            opacity: lineOpacity[5],
            color: Colors.black,
          ),

          // Arrow from 15 to 11
          arrowPosition(
            p1x: 0.083,
            p1y: 0.03,
            p2x: 0.015,
            p2y: 0.32,
            opacity: circlesOpacity[6],
            color: linesColor[6],
          ),

          arrowPosition(
            p1x: 0.083,
            p1y: 0.03,
            p2x: 0.015,
            p2y: 0.32,
            opacity: lineOpacity[6],
            color: Colors.black,
          ),

          // Arrow from 11 to 16
          arrowPosition(
            p1x: 0.015,
            p1y: 0.32,
            p2x: 0.137,
            p2y: 0.01,
            opacity: circlesOpacity[7],
            color: linesColor[7],
          ),

          arrowPosition(
            p1x: 0.015,
            p1y: 0.32,
            p2x: 0.137,
            p2y: 0.01,
            opacity: lineOpacity[7],
            color: Colors.black,
          ),

          // Arrow from 16 to 14
          arrowPosition(
            p1x: 0.137,
            p1y: 0.01,
            p2x: 0.045,
            p2y: 0.07,
            opacity: circlesOpacity[8],
            color: linesColor[8],
          ),

          arrowPosition(
            p1x: 0.137,
            p1y: 0.01,
            p2x: 0.045,
            p2y: 0.07,
            opacity: lineOpacity[8],
            color: Colors.black,
          ),

          // Arrow from 14 to 8
          arrowPosition(
            p1x: 0.043,
            p1y: 0.08,
            p2x: 0.137,
            p2y: 0.46,
            opacity: circlesOpacity[9],
            color: linesColor[9],
          ),

          arrowPosition(
            p1x: 0.043,
            p1y: 0.08,
            p2x: 0.137,
            p2y: 0.46,
            opacity: lineOpacity[9],
            color: Colors.black,
          ),

          // Arrow from 8 to 7
          arrowPosition(
            p1x: 0.139,
            p1y: 0.47,
            p2x: 0.19,
            p2y: 0.45,
            opacity: circlesOpacity[10],
            color: linesColor[10],
          ),

          arrowPosition(
            p1x: 0.139,
            p1y: 0.47,
            p2x: 0.19,
            p2y: 0.45,
            opacity: lineOpacity[10],
            color: Colors.black,
          ),

          // Arrow from 7 to 4
          arrowPosition(
            p1x: 0.195,
            p1y: 0.45,
            p2x: 0.275,
            p2y: 0.25,
            opacity: circlesOpacity[11],
            color: linesColor[11],
          ),

          arrowPosition(
            p1x: 0.195,
            p1y: 0.45,
            p2x: 0.275,
            p2y: 0.25,
            opacity: lineOpacity[11],
            color: Colors.black,
          ),

          // Arrow from 4 to 12
          arrowPosition(
            p1x: 0.275,
            p1y: 0.239,
            p2x: 0.006,
            p2y: 0.239,
            opacity: circlesOpacity[12],
            color: linesColor[12],
          ),

          arrowPosition(
            p1x: 0.275,
            p1y: 0.239,
            p2x: 0.006,
            p2y: 0.239,
            opacity: lineOpacity[12],
            color: Colors.black,
          ),

          // Arrow from 12 to 2
          arrowPosition(
            p1x: 0.006,
            p1y: 0.239,
            p2x: 0.235,
            p2y: 0.07,
            opacity: circlesOpacity[13],
            color: linesColor[13],
          ),

          arrowPosition(
            p1x: 0.006,
            p1y: 0.239,
            p2x: 0.235,
            p2y: 0.07,
            opacity: lineOpacity[13],
            color: Colors.black,
          ),

          // Arrow from 2 to 6
          arrowPosition(
            p1x: 0.24,
            p1y: 0.08,
            p2x: 0.24,
            p2y: 0.39,
            opacity: circlesOpacity[14],
            color: linesColor[14],
          ),

          arrowPosition(
            p1x: 0.24,
            p1y: 0.08,
            p2x: 0.24,
            p2y: 0.39,
            opacity: lineOpacity[14],
            color: Colors.black,
          ),

          // Arrow from 6 to 1
          arrowPosition(
            p1x: 0.24,
            p1y: 0.39,
            p2x: 0.195,
            p2y: 0.031,
            opacity: circlesOpacity[15],
            color: linesColor[15],
          ),

          arrowPosition(
            p1x: 0.24,
            p1y: 0.39,
            p2x: 0.195,
            p2y: 0.031,
            opacity: lineOpacity[15],
            color: Colors.black,
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

          // Upper Text
          Positioned(
            top: (MediaQuery.of(context).size.height -
                    HomePageDHState.returnAppBar[1]) *
                0.03,
            right: MediaQuery.of(context).size.width * 0.25,
            width: MediaQuery.of(context).size.width * 0.7,
            child: Align(
              alignment: Alignment.topLeft,
              child: FittedBox(
                child: Text(
                  AppLocalizations.of(context)!.text2,
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.017,
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
                  'g = 3, p = 17',
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.02,
                  ),
                ),
              ),
            ),
          ),

          // previous operation
          Positioned(
            top: (MediaQuery.of(context).size.height -
                    HomePageDHState.returnAppBar[1]) *
                0.33,
            left: MediaQuery.of(context).size.width * 0.065,
            width: MediaQuery.of(context).size.width * 0.3,
            height: (MediaQuery.of(context).size.height -
                    HomePageDHState.returnAppBar[1]) *
                0.15,
            child: AnimatedOpacity(
              opacity: prevResultOpacity,
              duration: Duration(seconds: seconds),
              child: Align(
                alignment: Alignment.topLeft,
                child: FittedBox(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: Text(
                          '${AppLocalizations.of(context)!.prevOp} 3',
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * 0.02,
                          ),
                        ),
                      ),
                      Text(
                        power[indexVisibilitySlide2DH < 1
                            ? 0
                            : indexVisibilitySlide2DH - 1],
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * 0.015,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: Text(
                          ' mod 17 = $prevResult',
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * 0.02,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

          // new operation
          Positioned(
            top: (MediaQuery.of(context).size.height -
                    HomePageDHState.returnAppBar[1]) *
                0.44,
            left: MediaQuery.of(context).size.width * 0.065,
            width: MediaQuery.of(context).size.width * 0.3,
            height: (MediaQuery.of(context).size.height -
                    HomePageDHState.returnAppBar[1]) *
                0.15,
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
                          '${AppLocalizations.of(context)!.newOp} 3',
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * 0.02,
                          ),
                        ),
                      ),
                      Text(
                        power[indexVisibilitySlide2DH == -1
                            ? 0
                            : indexVisibilitySlide2DH],
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * 0.015,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: Text(
                          ' mod 17 = $result',
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * 0.02,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          numberPosition(y1, x1, '1', numberOpacity[0], numberColor[0]),
          numberPosition(y2, x2, '3', numberOpacity[1], numberColor[1]),
          numberPosition(y3, x3, '9', numberOpacity[2], numberColor[2]),
          numberPosition(y4, x4, '10', numberOpacity[3], numberColor[3]),
          numberPosition(y5, x5, '13', numberOpacity[4], numberColor[4]),
          numberPosition(y6, x6, '5', numberOpacity[5], numberColor[5]),
          numberPosition(y7, x7, '15', numberOpacity[6], numberColor[6]),
          numberPosition(y8, x8, '11', numberOpacity[7], numberColor[7]),
          numberPosition(y9, x9, '16', numberOpacity[8], numberColor[8]),
          numberPosition(y10, x10, '14', numberOpacity[9], numberColor[9]),
          numberPosition(y11, x11, '8', numberOpacity[10], numberColor[10]),
          numberPosition(y12, x12, '7', numberOpacity[11], numberColor[11]),
          numberPosition(y13, x13, '4', numberOpacity[12], numberColor[12]),
          numberPosition(y14, x14, '12', numberOpacity[13], numberColor[13]),
          numberPosition(y15, x15, '2', numberOpacity[14], numberColor[14]),
          numberPosition(y16, x16, '6', numberOpacity[15], numberColor[15]),

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
              onPressed: () => setState(
                () {
                  if (videoButton == false) {
                    videoTimerSlide2DH.cancel();
                  }
                  videoButton = true;
                  seconds = Global.slider;

                  if (indexVisibilitySlide2DH == 16) {
                    openDialog(false);
                  }

                  if (indexVisibilitySlide2DH < 16 && delay) {
                    indexVisibilitySlide2DH++;
                    pageController2 = TextEditingController()
                      ..text = (indexVisibilitySlide2DH + 1).toString();

                    stepsVisibility[0] = !stepsVisibility[0];
                    stepsVisibility[1] = !stepsVisibility[1];
                    if (indexVisibilitySlide2DH > 0) {
                      prevResult =
                          (pow(3, indexVisibilitySlide2DH - 1).toInt()) % 17;
                    }
                    result = (pow(3, indexVisibilitySlide2DH).toInt()) % 17;
                  }
                  if (indexVisibilitySlide2DH == 0) {
                    numberOpacity[0] = 1.0;
                    x1 = 0.728;
                    y1 = 0.06;
                    redBulletOpacity[0] = 1.0;
                    numberOpacity[0] = 1.0;
                    resultOpacity = 1.0;
                    isLastIndex[1] = false;
                  } else if (indexVisibilitySlide2DH == 1 && delay) {
                    prevResultOpacity = 1.0;
                    numberColor[0] = Colors.black;
                    numberOpacity[1] = 1.0;
                    x2 = 0.812;
                    y2 = 0.2;
                    opTimer(0, false, 1);
                    redBulletOpacity[0] = 0.0;
                    blackBulletOpacity[0] = 1.0;
                    redBulletOpacity[2] = 1.0;
                  } else if (indexVisibilitySlide2DH == 2 && delay) {
                    numberColor[1] = Colors.black;
                    numberOpacity[2] = 1.0;
                    x3 = 0.58;
                    y3 = 0.57;
                    circlesOpacity[0] = 0.0;
                    lineOpacity[0] = 1.0;
                    opacityTimer.cancel();
                    opTimer(1, false, 1);
                    redBulletOpacity[2] = 0.0;
                    blackBulletOpacity[2] = 1.0;
                    redBulletOpacity[8] = 1.0;
                  } else if (indexVisibilitySlide2DH == 3 && delay) {
                    numberColor[2] = Colors.black;
                    numberOpacity[3] = 1.0;
                    x4 = 0.52;
                    y4 = 0.5;
                    circlesOpacity[1] = 0.0;
                    lineOpacity[1] = 1.0;
                    opacityTimer.cancel();
                    opTimer(2, false, 1);
                    redBulletOpacity[8] = 0.0;
                    blackBulletOpacity[8] = 1.0;
                    redBulletOpacity[9] = 1.0;
                  } else if (indexVisibilitySlide2DH == 4 && delay) {
                    numberColor[3] = Colors.black;
                    numberOpacity[4] = 1.0;
                    x5 = 0.49;
                    y5 = 0.2;
                    circlesOpacity[2] = 0.0;
                    lineOpacity[2] = 1.0;
                    opacityTimer.cancel();
                    opTimer(3, false, 1);
                    redBulletOpacity[9] = 0.0;
                    blackBulletOpacity[9] = 1.0;
                    redBulletOpacity[12] = 1.0;
                  } else if (indexVisibilitySlide2DH == 5 && delay) {
                    numberColor[4] = Colors.black;
                    numberOpacity[5] = 1.0;
                    x6 = 0.815;
                    y6 = 0.42;
                    circlesOpacity[3] = 0.0;
                    lineOpacity[3] = 1.0;
                    opacityTimer.cancel();
                    opTimer(4, false, 1);
                    redBulletOpacity[12] = 0.0;
                    blackBulletOpacity[12] = 1.0;
                    redBulletOpacity[4] = 1.0;
                  } else if (indexVisibilitySlide2DH == 6 && delay) {
                    numberColor[5] = Colors.black;
                    numberOpacity[6] = 1.0;
                    x7 = 0.585;
                    y7 = 0.052;
                    circlesOpacity[4] = 0.0;
                    lineOpacity[4] = 1.0;
                    opacityTimer.cancel();
                    opTimer(5, false, 1);
                    redBulletOpacity[4] = 0.0;
                    blackBulletOpacity[4] = 1.0;
                    redBulletOpacity[14] = 1.0;
                  } else if (indexVisibilitySlide2DH == 7 && delay) {
                    numberColor[6] = Colors.black;
                    numberOpacity[7] = 1.0;
                    x8 = 0.49;
                    y8 = 0.42;
                    circlesOpacity[5] = 0.0;
                    lineOpacity[5] = 1.0;
                    opacityTimer.cancel();
                    opTimer(6, false, 1);
                    redBulletOpacity[14] = 0.0;
                    blackBulletOpacity[14] = 1.0;
                    redBulletOpacity[10] = 1.0;
                  } else if (indexVisibilitySlide2DH == 8 && delay) {
                    numberColor[7] = Colors.black;
                    numberOpacity[8] = 1.0;
                    x9 = 0.65;
                    y9 = 0.035;
                    circlesOpacity[6] = 0.0;
                    lineOpacity[6] = 1.0;
                    opacityTimer.cancel();
                    opTimer(7, false, 1);
                    redBulletOpacity[10] = 0.0;
                    blackBulletOpacity[10] = 1.0;
                    redBulletOpacity[15] = 1.0;
                  } else if (indexVisibilitySlide2DH == 9 && delay) {
                    numberColor[8] = Colors.black;
                    numberOpacity[9] = 1.0;
                    x10 = 0.52;
                    y10 = 0.11;
                    circlesOpacity[7] = 0.0;
                    lineOpacity[7] = 1.0;
                    opacityTimer.cancel();
                    opTimer(8, false, 1);
                    redBulletOpacity[15] = 0.0;
                    blackBulletOpacity[15] = 1.0;
                    redBulletOpacity[13] = 1.0;
                  } else if (indexVisibilitySlide2DH == 10 && delay) {
                    numberColor[9] = Colors.black;
                    numberOpacity[10] = 1.0;
                    x11 = 0.65;
                    y11 = 0.59;
                    circlesOpacity[8] = 0.0;
                    lineOpacity[8] = 1.0;
                    opacityTimer.cancel();
                    opTimer(9, false, 1);
                    redBulletOpacity[13] = 0.0;
                    blackBulletOpacity[13] = 1.0;
                    redBulletOpacity[7] = 1.0;
                  } else if (indexVisibilitySlide2DH == 11 && delay) {
                    numberColor[10] = Colors.black;
                    numberOpacity[11] = 1.0;
                    x12 = 0.723;
                    y12 = 0.57;
                    circlesOpacity[9] = 0.0;
                    lineOpacity[9] = 1.0;
                    opacityTimer.cancel();
                    opTimer(10, false, 1);
                    redBulletOpacity[7] = 0.0;
                    blackBulletOpacity[7] = 1.0;
                    redBulletOpacity[6] = 1.0;
                  } else if (indexVisibilitySlide2DH == 12 && delay) {
                    numberColor[11] = Colors.black;
                    numberOpacity[12] = 1.0;
                    x13 = 0.825;
                    y13 = 0.31;
                    circlesOpacity[10] = 0.0;
                    lineOpacity[10] = 1.0;
                    opacityTimer.cancel();
                    opTimer(11, false, 1);
                    redBulletOpacity[6] = 0.0;
                    blackBulletOpacity[6] = 1.0;
                    redBulletOpacity[3] = 1.0;
                  } else if (indexVisibilitySlide2DH == 13 && delay) {
                    numberColor[12] = Colors.black;
                    numberOpacity[13] = 1.0;
                    x14 = 0.475;
                    y14 = 0.311;
                    circlesOpacity[11] = 0.0;
                    lineOpacity[11] = 1.0;
                    opacityTimer.cancel();
                    opTimer(12, false, 1);
                    redBulletOpacity[3] = 0.0;
                    blackBulletOpacity[3] = 1.0;
                    redBulletOpacity[11] = 1.0;
                  } else if (indexVisibilitySlide2DH == 14 && delay) {
                    numberColor[13] = Colors.black;
                    numberOpacity[14] = 1.0;
                    x15 = 0.78;
                    y15 = 0.115;
                    circlesOpacity[12] = 0.0;
                    lineOpacity[12] = 1.0;
                    opacityTimer.cancel();
                    opTimer(13, false, 1);
                    redBulletOpacity[11] = 0.0;
                    blackBulletOpacity[11] = 1.0;
                    redBulletOpacity[1] = 1.0;
                  } else if (indexVisibilitySlide2DH == 15 && delay) {
                    numberColor[14] = Colors.black;
                    numberOpacity[15] = 1.0;
                    x16 = 0.78;
                    y16 = 0.52;
                    circlesOpacity[13] = 0.0;
                    lineOpacity[13] = 1.0;
                    opacityTimer.cancel();
                    opTimer(14, false, 1);
                    redBulletOpacity[1] = 0.0;
                    blackBulletOpacity[1] = 1.0;
                    redBulletOpacity[5] = 1.0;
                  } else if (indexVisibilitySlide2DH == 16 && delay) {
                    numberColor[15] = Colors.black;
                    circlesOpacity[14] = 0.0;
                    lineOpacity[14] = 1.0;
                    opacityTimer.cancel();
                    opTimer(15, false, 1);
                    blackBulletOpacity[0] = 0.0;
                    redBulletOpacity[5] = 0.0;
                    blackBulletOpacity[5] = 1.0;
                    redBulletOpacity[0] = 1.0;
                    isLastIndex[0] = true;
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
              tooltip: AppLocalizations.of(context)!.toolTipLeftBtn,
              heroTag: "left9",
              backgroundColor: isLastIndex[1] ? Colors.grey : Colors.blue,
              onPressed: () => setState(
                () {
                  if (videoButton == false) {
                    videoTimerSlide2DH.cancel();
                  }
                  videoButton = true;

                  seconds = Global.slider;
                  if (indexVisibilitySlide2DH == -1) {
                    openDialog(true);
                  }
                  if (indexVisibilitySlide2DH == 0) {
                    indexVisibilitySlide2DH--;
                    pageController2 = TextEditingController()
                      ..text = (indexVisibilitySlide2DH + 1).toString();
                    numberOpacity[0] = 0.0;
                    x1 = 0.3;
                    y1 = 0.478;
                    redBulletOpacity[0] = 0.0;
                    numberOpacity[0] = 0.0;
                    resultOpacity = 0.0;
                    isLastIndex[1] = true;
                  } else if (indexVisibilitySlide2DH == 1 && delay) {
                    prevResultOpacity = 0.0;
                    numberColor[0] = Colors.red;
                    numberOpacity[1] = 0.0;
                    x2 = 0.3;
                    y2 = 0.478;
                    circlesOpacity[0] = 0.0;
                    lineOpacity[0] = 0.0;
                    opacityTimer.cancel();
                    redBulletOpacity[0] = 1.0;
                    blackBulletOpacity[0] = 0.0;
                    redBulletOpacity[2] = 0.0;
                  } else if (indexVisibilitySlide2DH == 2 && delay) {
                    numberColor[1] = Colors.red;
                    numberOpacity[2] = 0.0;
                    x3 = 0.3;
                    y3 = 0.478;
                    circlesOpacity[0] = 1.0;
                    lineOpacity[0] = 0.0;
                    circlesOpacity[1] = 0.0;
                    lineOpacity[1] = 0.0;
                    opacityTimer.cancel();
                    redBulletOpacity[2] = 1.0;
                    blackBulletOpacity[2] = 0.0;
                    redBulletOpacity[8] = 0.0;
                  } else if (indexVisibilitySlide2DH == 3 && delay) {
                    numberColor[2] = Colors.red;
                    numberOpacity[3] = 0.0;
                    x4 = 0.3;
                    y4 = 0.478;
                    circlesOpacity[1] = 1.0;
                    lineOpacity[1] = 0.0;
                    circlesOpacity[2] = 0.0;
                    lineOpacity[2] = 0.0;
                    opacityTimer.cancel();
                    redBulletOpacity[8] = 1.0;
                    blackBulletOpacity[8] = 0.0;
                    redBulletOpacity[9] = 0.0;
                  } else if (indexVisibilitySlide2DH == 4 && delay) {
                    numberColor[3] = Colors.red;
                    numberOpacity[4] = 0.0;
                    x5 = 0.3;
                    y5 = 0.478;
                    circlesOpacity[2] = 1.0;
                    lineOpacity[2] = 0.0;
                    circlesOpacity[3] = 0.0;
                    lineOpacity[3] = 0.0;
                    opacityTimer.cancel();
                    redBulletOpacity[9] = 1.0;
                    blackBulletOpacity[9] = 0.0;
                    redBulletOpacity[12] = 0.0;
                  } else if (indexVisibilitySlide2DH == 5 && delay) {
                    numberColor[4] = Colors.red;
                    numberOpacity[5] = 0.0;
                    x6 = 0.3;
                    y6 = 0.478;
                    circlesOpacity[3] = 1.0;
                    lineOpacity[3] = 0.0;
                    circlesOpacity[4] = 0.0;
                    lineOpacity[4] = 0.0;
                    opacityTimer.cancel();
                    redBulletOpacity[12] = 1.0;
                    blackBulletOpacity[12] = 0.0;
                    redBulletOpacity[4] = 0.0;
                  } else if (indexVisibilitySlide2DH == 6 && delay) {
                    numberColor[5] = Colors.red;
                    numberOpacity[6] = 0.0;
                    x7 = 0.3;
                    y7 = 0.478;
                    circlesOpacity[4] = 1.0;
                    lineOpacity[4] = 0.0;
                    circlesOpacity[5] = 0.0;
                    lineOpacity[5] = 0.0;
                    opacityTimer.cancel();
                    redBulletOpacity[4] = 1.0;
                    blackBulletOpacity[4] = 0.0;
                    redBulletOpacity[14] = 0.0;
                  } else if (indexVisibilitySlide2DH == 7 && delay) {
                    numberColor[6] = Colors.red;
                    numberOpacity[7] = 0.0;
                    x8 = 0.3;
                    y8 = 0.478;
                    circlesOpacity[5] = 1.0;
                    lineOpacity[5] = 0.0;
                    circlesOpacity[6] = 0.0;
                    lineOpacity[6] = 0.0;
                    opacityTimer.cancel();
                    redBulletOpacity[14] = 1.0;
                    blackBulletOpacity[14] = 0.0;
                    redBulletOpacity[10] = 0.0;
                  } else if (indexVisibilitySlide2DH == 8 && delay) {
                    numberColor[7] = Colors.red;
                    numberOpacity[8] = 0.0;
                    x9 = 0.3;
                    y9 = 0.478;
                    circlesOpacity[6] = 1.0;
                    lineOpacity[6] = 0.0;
                    circlesOpacity[7] = 0.0;
                    lineOpacity[7] = 0.0;
                    opacityTimer.cancel();
                    redBulletOpacity[10] = 1.0;
                    blackBulletOpacity[10] = 0.0;
                    redBulletOpacity[15] = 0.0;
                  } else if (indexVisibilitySlide2DH == 9 && delay) {
                    numberColor[8] = Colors.red;
                    numberOpacity[9] = 0.0;
                    x10 = 0.3;
                    y10 = 0.478;
                    circlesOpacity[7] = 1.0;
                    lineOpacity[7] = 0.0;
                    circlesOpacity[8] = 0.0;
                    lineOpacity[8] = 0.0;
                    opacityTimer.cancel();
                    redBulletOpacity[15] = 1.0;
                    blackBulletOpacity[15] = 0.0;
                    redBulletOpacity[13] = 0.0;
                  } else if (indexVisibilitySlide2DH == 10 && delay) {
                    numberColor[9] = Colors.red;
                    numberOpacity[10] = 0.0;
                    x11 = 0.3;
                    y11 = 0.478;
                    circlesOpacity[8] = 1.0;
                    lineOpacity[8] = 0.0;
                    circlesOpacity[9] = 0.0;
                    lineOpacity[9] = 0.0;
                    opacityTimer.cancel();
                    redBulletOpacity[13] = 1.0;
                    blackBulletOpacity[13] = 0.0;
                    redBulletOpacity[7] = 0.0;
                  } else if (indexVisibilitySlide2DH == 11 && delay) {
                    numberColor[10] = Colors.red;
                    numberOpacity[11] = 0.0;
                    x12 = 0.3;
                    y12 = 0.478;
                    circlesOpacity[9] = 1.0;
                    lineOpacity[9] = 0.0;
                    circlesOpacity[10] = 0.0;
                    lineOpacity[10] = 0.0;
                    opacityTimer.cancel();
                    redBulletOpacity[7] = 1.0;
                    blackBulletOpacity[7] = 0.0;
                    redBulletOpacity[6] = 0.0;
                  } else if (indexVisibilitySlide2DH == 12 && delay) {
                    numberColor[11] = Colors.red;
                    numberOpacity[12] = 0.0;
                    x13 = 0.3;
                    y13 = 0.478;
                    circlesOpacity[10] = 1.0;
                    lineOpacity[10] = 0.0;
                    circlesOpacity[11] = 0.0;
                    lineOpacity[11] = 0.0;
                    opacityTimer.cancel();
                    redBulletOpacity[6] = 1.0;
                    blackBulletOpacity[6] = 0.0;
                    redBulletOpacity[3] = 0.0;
                  } else if (indexVisibilitySlide2DH == 13 && delay) {
                    numberColor[12] = Colors.red;
                    numberOpacity[13] = 0.0;
                    x14 = 0.3;
                    y14 = 0.478;
                    circlesOpacity[11] = 1.0;
                    lineOpacity[11] = 0.0;
                    circlesOpacity[12] = 0.0;
                    lineOpacity[12] = 0.0;
                    opacityTimer.cancel();
                    redBulletOpacity[3] = 1.0;
                    blackBulletOpacity[3] = 0.0;
                    redBulletOpacity[11] = 0.0;
                  } else if (indexVisibilitySlide2DH == 14 && delay) {
                    numberColor[13] = Colors.red;
                    numberOpacity[14] = 0.0;
                    x15 = 0.3;
                    y15 = 0.478;
                    circlesOpacity[12] = 1.0;
                    lineOpacity[12] = 0.0;
                    circlesOpacity[13] = 0.0;
                    lineOpacity[13] = 0.0;
                    opacityTimer.cancel();
                    redBulletOpacity[11] = 1.0;
                    blackBulletOpacity[11] = 0.0;
                    redBulletOpacity[1] = 0.0;
                  } else if (indexVisibilitySlide2DH == 15 && delay) {
                    numberColor[14] = Colors.red;
                    numberOpacity[15] = 0.0;
                    x16 = 0.3;
                    y16 = 0.478;
                    circlesOpacity[13] = 1.0;
                    lineOpacity[13] = 0.0;
                    circlesOpacity[14] = 0.0;
                    lineOpacity[14] = 0.0;
                    opacityTimer.cancel();
                    redBulletOpacity[1] = 1.0;
                    blackBulletOpacity[1] = 0.0;
                    redBulletOpacity[5] = 0.0;
                  } else if (indexVisibilitySlide2DH == 16 && delay) {
                    numberColor[15] = Colors.red;
                    circlesOpacity[14] = 1.0;
                    lineOpacity[14] = 0.0;
                    circlesOpacity[15] = 0.0;
                    lineOpacity[15] = 0.0;
                    opacityTimer.cancel();
                    blackBulletOpacity[0] = 1.0;
                    redBulletOpacity[5] = 1.0;
                    blackBulletOpacity[5] = 0.0;
                    redBulletOpacity[0] = 0.0;
                    isLastIndex[0] = false;
                  }
                  if (indexVisibilitySlide2DH > 0 && delay) {
                    if (indexVisibilitySlide2DH == 0) {
                      delay = false;
                    }
                    indexVisibilitySlide2DH--;
                    stepsVisibility[0] = !stepsVisibility[0];
                    stepsVisibility[1] = !stepsVisibility[1];
                  }
                  if (indexVisibilitySlide2DH >= 0) {
                    if (indexVisibilitySlide2DH > 0) {
                      prevResult =
                          (pow(3, indexVisibilitySlide2DH - 1).toInt()) % 17;
                    }
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
                  openIntroDialog();
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
            bottom: MediaQuery.of(context).size.height * advancedSettingsButton,
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
                        borderRadius: BorderRadius.all(Radius.circular(32.0))),
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
                                              videoTimerSlide2DH.cancel();
                                              videoTimerSlide2DH =
                                                  videoTimerProblem();
                                            }
                                          } else if (Global.val == 3) {
                                            Global.slider = Global.val - 2;
                                            if (!videoButton) {
                                              videoTimerSlide2DH.cancel();
                                              videoTimerSlide2DH =
                                                  videoTimerProblem();
                                            }
                                          } else {
                                            Global.slider = Global.val;
                                            if (!videoButton) {
                                              videoTimerSlide2DH.cancel();
                                              videoTimerSlide2DH =
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
                                      void Function(void Function()) setState) {
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
              child: Container(
                padding: const EdgeInsets.all(0),
                child: Icon(Icons.settings,
                    size: MediaQuery.of(context).size.height * 0.045),
              ),
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
                  Global.slider = 3;
                  Global.val = 1;
                  Global.replacedSliderValue = Global.slider;
                  videoTimerVariable.cancel();
                  videoTimerProblem().cancel();
                  timerSlide2DH.cancel();
                  delayTimer.cancel();
                  videoTimerSlide2DH.cancel();
                  opacityTimer.cancel();
                  videoTimerVariable.cancel;
                  pageNumberTimer.cancel();
                  selectPageNumber(0, 0).cancel();
                  isLastIndex = [false, true];
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
                  seconds = Global.slider;
                  dropButton = true;
                  desc = true;
                  descVisbility = desc;
                  text = '';
                  videoButton = true;
                  timerSeconds = 3;
                  circleVisibility = false;
                  resultOpacity = 0.0;
                  prevResultOpacity = 0.0;
                  prevResult = 1;
                  result = 1;
                  isShown = true;
                  x1 = 0.3;
                  x2 = 0.3;
                  x3 = 0.3;
                  x4 = 0.3;
                  x5 = 0.3;
                  x6 = 0.3;
                  x7 = 0.3;
                  x8 = 0.3;
                  x9 = 0.3;
                  x10 = 0.3;
                  x11 = 0.3;
                  x12 = 0.3;
                  x13 = 0.3;
                  x14 = 0.3;
                  x15 = 0.3;
                  x16 = 0.3;
                  y1 = 0.478;
                  y2 = 0.478;
                  y3 = 0.478;
                  y4 = 0.478;
                  y5 = 0.478;
                  y6 = 0.478;
                  y7 = 0.478;
                  y8 = 0.478;
                  y9 = 0.478;
                  y10 = 0.478;
                  y11 = 0.478;
                  y12 = 0.478;
                  y13 = 0.478;
                  y14 = 0.478;
                  y15 = 0.478;
                  y16 = 0.478;
                  circlesOpacity = [
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
                  numberOpacity = [
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

                  lineOpacity = [
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

                  linesColor = [
                    Colors.red,
                    Colors.red,
                    Colors.red,
                    Colors.red,
                    Colors.red,
                    Colors.red,
                    Colors.red,
                    Colors.red,
                    Colors.red,
                    Colors.red,
                    Colors.red,
                    Colors.red,
                    Colors.red,
                    Colors.red,
                    Colors.red,
                    Colors.red,
                  ];

                  numberColor = [
                    Colors.red,
                    Colors.red,
                    Colors.red,
                    Colors.red,
                    Colors.red,
                    Colors.red,
                    Colors.red,
                    Colors.red,
                    Colors.red,
                    Colors.red,
                    Colors.red,
                    Colors.red,
                    Colors.red,
                    Colors.red,
                    Colors.red,
                    Colors.red,
                  ];

                  redBulletOpacity = [
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

                  blackBulletOpacity = [
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
                  dropButton = true;
                  videoButton = !videoButton;
                  if (!videoButton) {
                    videoTimerSlide2DH = videoTimerProblem();
                  } else {
                    videoTimerSlide2DH.cancel();
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

                  timerSlide2DH = Timer(
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
                    '${indexVisibilitySlide2DH + 1} / 17',
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
              HomePageDHState.controller.animateTo(isLeft ? 0 : 2);
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
                controller: pageController2,
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
                  videoTimerSlide2DH.cancel();
                }
                videoButton = true;
                seconds = Global.slider;
              });
              if ((int.parse(pageController2.text) > 17) ||
                  (int.parse(pageController2.text) < 0)) {
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
                pageController2 = TextEditingController()
                  ..text = (indexVisibilitySlide2DH + 1).toString();
              });
              Navigator.pop(context, 'No');
            },
            child: Text(AppLocalizations.of(context)!.cancel),
          ),
        ],
      ),
    );
  }

  opTimer(int op, bool fromDialog, int blinkSec) {
    int cnt = 0;
    isShown = true;
    if (blinkSec == 0) {
      circlesOpacity[op] = 1.0;
    } else {
      if (!fromDialog) {
        opacityTimer = Timer.periodic(
          Duration(seconds: blinkSec),
          (_) {
            setState(
              () {
                if (cnt == 4) {
                  circlesOpacity[op] = 1.0;
                  opacityTimer.cancel();
                }
                if (isShown) {
                  circlesOpacity[op] = 1.0;
                  isShown = false;
                } else {
                  circlesOpacity[op] = 0.2;
                  isShown = true;
                }
                cnt++;
              },
            );
          },
        );
      } else {
        circlesOpacity[op] = 1.0;
      }
    }
  }

  openIntroDialog() {
    showDialog<String>(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) => InteractiveViewer(
        panEnabled: true,
        scaleEnabled: Global.scaleEnabled,
        maxScale: 4,
        child: AlertDialog(
          actionsAlignment: MainAxisAlignment.center,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(32.0))),
          scrollable: true,
          title: Text(
            AppLocalizations.of(context)!.introduction,
            textAlign: TextAlign.center,
          ),
          content: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppLocalizations.of(context)!.intro36,
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.red,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                AppLocalizations.of(context)!.intro37,
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                AppLocalizations.of(context)!.intro38,
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.red,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                AppLocalizations.of(context)!.intro39,
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                AppLocalizations.of(context)!.intro19,
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.red,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              RichText(
                text: TextSpan(
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                  children: [
                    TextSpan(
                      text: AppLocalizations.of(context)!.intro20,
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                    // TextSpan(
                    //   text: AppLocalizations.of(context)!.intro21,
                    //   style: const TextStyle(
                    //     color: Colors.blue,
                    //     fontStyle: FontStyle.italic,
                    //   ),
                    // ),
                    // TextSpan(
                    //   text: AppLocalizations.of(context)!.intro22,
                    //   style: const TextStyle(
                    //     fontSize: 20,
                    //     color: Colors.black,
                    //   ),
                    // ),
                    // TextSpan(
                    //   text: AppLocalizations.of(context)!.intro23,
                    //   style: const TextStyle(
                    //     color: Colors.blue,
                    //     fontStyle: FontStyle.italic,
                    //   ),
                    // ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              RichText(
                text: const TextSpan(
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                  children: [
                    // TextSpan(
                    //   text: AppLocalizations.of(context)!.intro24,
                    //   style: const TextStyle(
                    //     color: Colors.purple,
                    //   ),
                    // ),
                  ],
                ),
              ),
              // RichText(
              //   text: TextSpan(
              //     style: const TextStyle(
              //       fontSize: 20,
              //       color: Colors.black,
              //     ),
              //     children: [
              //       TextSpan(
              //         text: AppLocalizations.of(context)!.intro25,
              //         style: const TextStyle(
              //           fontSize: 20,
              //           color: Colors.black,
              //         ),
              //       ),
              //       const TextSpan(
              //         text: ' x',
              //         style: TextStyle(
              //           color: Colors.blue,
              //           fontStyle: FontStyle.italic,
              //         ),
              //       ),
              //       TextSpan(
              //         text: AppLocalizations.of(context)!.intro26,
              //         style: const TextStyle(
              //           fontSize: 20,
              //           color: Colors.black,
              //         ),
              //       ),
              //       const TextSpan(
              //         text: ' f(x)',
              //         style: TextStyle(
              //           color: Colors.blue,
              //           fontStyle: FontStyle.italic,
              //         ),
              //       ),
              //       TextSpan(
              //         text: AppLocalizations.of(context)!.intro27,
              //         style: const TextStyle(
              //           fontSize: 20,
              //           color: Colors.black,
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              // const SizedBox(
              //   height: 10,
              // ),
              // RichText(
              //   text: TextSpan(
              //     style: const TextStyle(
              //       fontSize: 20,
              //       color: Colors.black,
              //     ),
              //     children: [
              //       TextSpan(
              //         text: AppLocalizations.of(context)!.intro10,
              //         style: const TextStyle(
              //           color: Colors.green,
              //         ),
              //       ),
              //       TextSpan(
              //         text: AppLocalizations.of(context)!.intro28,
              //         style: const TextStyle(
              //           fontSize: 20,
              //           color: Colors.black,
              //         ),
              //       ),
              //       const TextSpan(
              //         text: 'r = 3',
              //         style: TextStyle(
              //           color: Colors.blue,
              //           fontStyle: FontStyle.italic,
              //         ),
              //       ),
              //       TextSpan(
              //         text: AppLocalizations.of(context)!.intro12,
              //         style: const TextStyle(
              //           fontSize: 20,
              //           color: Colors.black,
              //         ),
              //       ),
              //       const TextSpan(
              //         text: 'n = 17',
              //         style: TextStyle(
              //           color: Colors.blue,
              //           fontStyle: FontStyle.italic,
              //         ),
              //       ),
              //       const TextSpan(
              //         text: ' :',
              //         style: TextStyle(
              //           fontSize: 20,
              //           color: Colors.black,
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              // RichText(
              //   text: TextSpan(
              //     style: const TextStyle(
              //       fontSize: 20,
              //       color: Colors.black,
              //     ),
              //     children: [
              //       TextSpan(
              //         text: AppLocalizations.of(context)!.intro29,
              //         style: const TextStyle(
              //           fontSize: 20,
              //           color: Colors.black,
              //         ),
              //       ),
              //       const TextSpan(
              //         text: '3',
              //         style: TextStyle(
              //           color: Colors.blue,
              //           fontStyle: FontStyle.italic,
              //         ),
              //       ),
              //       WidgetSpan(
              //         child: Transform.translate(
              //           offset: const Offset(2, -10),
              //           child: const Text(
              //             '1',
              //             textScaleFactor: 1,
              //             style: TextStyle(
              //               color: Colors.blue,
              //               fontStyle: FontStyle.italic,
              //             ),
              //           ),
              //         ),
              //       ),
              //       const TextSpan(
              //         text: ' mod 17 = 3',
              //         style: TextStyle(
              //           color: Colors.blue,
              //           fontStyle: FontStyle.italic,
              //         ),
              //       ),
              //       TextSpan(
              //         text: AppLocalizations.of(context)!.intro30,
              //         style: const TextStyle(
              //           fontSize: 20,
              //           color: Colors.black,
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              // RichText(
              //   text: TextSpan(
              //     style: const TextStyle(
              //       fontSize: 20,
              //       color: Colors.black,
              //     ),
              //     children: [
              //       TextSpan(
              //         text: AppLocalizations.of(context)!.intro31,
              //         style: const TextStyle(
              //           fontSize: 20,
              //           color: Colors.black,
              //         ),
              //       ),
              //       const TextSpan(
              //         text: '3',
              //         style: TextStyle(
              //           color: Colors.blue,
              //           fontStyle: FontStyle.italic,
              //         ),
              //       ),
              //       WidgetSpan(
              //         child: Transform.translate(
              //           offset: const Offset(2, -10),
              //           child: const Text(
              //             'x',
              //             textScaleFactor: 1,
              //             style: TextStyle(
              //               color: Colors.blue,
              //               fontStyle: FontStyle.italic,
              //             ),
              //           ),
              //         ),
              //       ),
              //       const TextSpan(
              //         text: ' mod 17 = 3',
              //         style: TextStyle(
              //           color: Colors.blue,
              //           fontStyle: FontStyle.italic,
              //         ),
              //       ),
              //       TextSpan(
              //         text: AppLocalizations.of(context)!.intro32,
              //         style: const TextStyle(
              //           fontSize: 20,
              //           color: Colors.black,
              //         ),
              //       ),
              //       const TextSpan(
              //         text: 'x',
              //         style: TextStyle(
              //           color: Colors.blue,
              //           fontStyle: FontStyle.italic,
              //         ),
              //       ),
              //       TextSpan(
              //         text: AppLocalizations.of(context)!.intro33,
              //         style: const TextStyle(
              //           fontSize: 20,
              //           color: Colors.black,
              //         ),
              //       ),
              //       const TextSpan(
              //         text: 'x',
              //         style: TextStyle(
              //           color: Colors.blue,
              //           fontStyle: FontStyle.italic,
              //         ),
              //       ),
              //       TextSpan(
              //         text: AppLocalizations.of(context)!.intro34,
              //         style: const TextStyle(
              //           fontSize: 20,
              //           color: Colors.black,
              //         ),
              //       ),
              //       const TextSpan(
              //         text: '1, 17, 33, ..., ',
              //         style: TextStyle(
              //           color: Colors.blue,
              //           fontStyle: FontStyle.italic,
              //         ),
              //       ),
              //       TextSpan(
              //         text: AppLocalizations.of(context)!.intro35,
              //         style: const TextStyle(
              //           color: Colors.blue,
              //           fontStyle: FontStyle.italic,
              //         ),
              //       ),
              //       const TextSpan(
              //         text: '.',
              //         style: TextStyle(
              //           fontSize: 20,
              //           color: Colors.black,
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
            ],
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.pop(context, 'Ok');
              },
              child: const Text(
                'Ok',
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  stepNumber() {
    setState(() {
      stopFunction();

      selectPageNumber(int.parse(pageController2.text) - 1, 0);
    });
  }

  void showFlushBarMessage(
      Icon icon, String title, String message, Color backgroundColor) {
    Flushbar(
      icon: icon,
      title: title,
      titleSize: 20,
      message: message,
      duration: const Duration(seconds: 2),
      borderRadius: const BorderRadius.all(Radius.circular(20)),
      maxWidth: MediaQuery.of(context).size.width * 0.4,
      backgroundColor: backgroundColor,
      flushbarPosition: FlushbarPosition.TOP,
    ).show(context);
  }

  stopFunction() {
    setState(() {
      Global.slider = 3;
      Global.val = 1;
      Global.replacedSliderValue = Global.slider;
      videoTimerVariable.cancel();
      timerSlide2DH.cancel();
      delayTimer.cancel();
      videoTimerSlide2DH.cancel();
      opacityTimer.cancel();
      videoTimerVariable.cancel;
      pageNumberTimer.cancel();
      isLastIndex = [false, true];
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
      seconds = Global.slider;
      dropButton = true;
      desc = true;
      descVisbility = desc;
      text = '';
      videoButton = true;
      timerSeconds = 3;
      circleVisibility = false;
      resultOpacity = 0.0;
      prevResultOpacity = 0.0;
      prevResult = 1;
      result = 1;
      isShown = true;
      x1 = 0.3;
      x2 = 0.3;
      x3 = 0.3;
      x4 = 0.3;
      x5 = 0.3;
      x6 = 0.3;
      x7 = 0.3;
      x8 = 0.3;
      x9 = 0.3;
      x10 = 0.3;
      x11 = 0.3;
      x12 = 0.3;
      x13 = 0.3;
      x14 = 0.3;
      x15 = 0.3;
      x16 = 0.3;
      y1 = 0.478;
      y2 = 0.478;
      y3 = 0.478;
      y4 = 0.478;
      y5 = 0.478;
      y6 = 0.478;
      y7 = 0.478;
      y8 = 0.478;
      y9 = 0.478;
      y10 = 0.478;
      y11 = 0.478;
      y12 = 0.478;
      y13 = 0.478;
      y14 = 0.478;
      y15 = 0.478;
      y16 = 0.478;
      circlesOpacity = [
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
      numberOpacity = [
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

      lineOpacity = [
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

      linesColor = [
        Colors.red,
        Colors.red,
        Colors.red,
        Colors.red,
        Colors.red,
        Colors.red,
        Colors.red,
        Colors.red,
        Colors.red,
        Colors.red,
        Colors.red,
        Colors.red,
        Colors.red,
        Colors.red,
        Colors.red,
        Colors.red,
      ];

      numberColor = [
        Colors.red,
        Colors.red,
        Colors.red,
        Colors.red,
        Colors.red,
        Colors.red,
        Colors.red,
        Colors.red,
        Colors.red,
        Colors.red,
        Colors.red,
        Colors.red,
        Colors.red,
        Colors.red,
        Colors.red,
        Colors.red,
      ];

      redBulletOpacity = [
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

      blackBulletOpacity = [
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
          Global.slider = Global.replacedSliderValue;
          seconds = Global.slider;
          delayTimer.cancel();
        });
      });
    });
  }
}
