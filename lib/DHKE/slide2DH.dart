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
import 'description-widget.dart';
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

double x1 = 0.16;
double x2 = 0.16;
double x3 = 0.16;
double x4 = 0.16;
double x5 = 0.16;
double x6 = 0.16;
double x7 = 0.16;
double x8 = 0.16;
double x9 = 0.16;
double x10 = 0.16;
double x11 = 0.16;
double x12 = 0.16;
double x13 = 0.16;
double x14 = 0.16;
double x15 = 0.16;
double x16 = 0.16;
double y1 = 0.355;
double y2 = 0.355;
double y3 = 0.355;
double y4 = 0.355;
double y5 = 0.355;
double y6 = 0.355;
double y7 = 0.355;
double y8 = 0.355;
double y9 = 0.355;
double y10 = 0.355;
double y11 = 0.355;
double y12 = 0.355;
double y13 = 0.355;
double y14 = 0.355;
double y15 = 0.355;
double y16 = 0.355;

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
TextEditingController pageController2 = TextEditingController()
  ..text = (indexVisibilitySlide2DH + 1).toString();

Timer delayTimer = Timer(const Duration(seconds: 1), () {});
Timer videoTimerVariable = Timer(const Duration(seconds: 1), () {});
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
    timerSlide2DH.cancel();
    videoTimerSlide2DH.cancel();
    opacityTimer.cancel();

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
      // duration: Duration(seconds: seconds),
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
      // width: 20,
      // height: 10,
      child: AnimatedOpacity(
        duration: const Duration(seconds: 1),
        opacity: opacity,
        child: FittedBox(
          child: Text(
            num,
            style: TextStyle(fontSize: 20, color: color
                // (MediaQuery.of(context).size.width -
                //         HomePageDHState.returnAppBar[1]) *
                //     0.035,
                // fontWeight: FontWeight.bold,
                ),
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
      // duration: Duration(seconds: seconds),
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
              // Languages.player.play("assets/steps.mp3");
              indexVisibilitySlide2DH++;
              stepsVisibility[0] = !stepsVisibility[0];
              stepsVisibility[1] = !stepsVisibility[1];
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
              // delay = false;
              // delayTimer = Timer(Duration(seconds: seconds * 2), () {
              //   setState(() {
              //     // resVisibility = false;
              //     resOpacity = 0.0;
              //     x = 0.16;
              //     y = 0.355;
              //     delay = true;
              //   });
              // });
            } else if (indexVisibilitySlide2DH == 1 && delay) {
              numberColor[0] = Colors.black;
              numberOpacity[1] = 1.0;
              x2 = 0.812;
              y2 = 0.2;
              // resOpacity[0] = 0.0;
              // resOpacity[1] = 1.0;
              // x[1] = 0.78;
              // y[1] = 0.115;
              opTimer(0, false);
              redBulletOpacity[0] = 0.0;
              blackBulletOpacity[0] = 1.0;
              redBulletOpacity[2] = 1.0;
              // circlesOpacity[0] = 0.0;
              // lineOpacity[0] = 1.0;
              // opacityTimer.cancel();
              // opTimer(1);

              // circlesOpacity[1] = 0.0;
              // circlesOpacity[2] = 1.0;
            } else if (indexVisibilitySlide2DH == 2 && delay) {
              numberColor[1] = Colors.black;
              numberOpacity[2] = 1.0;
              x3 = 0.58;
              y3 = 0.57;
              circlesOpacity[0] = 0.0;
              lineOpacity[0] = 1.0;
              opacityTimer.cancel();
              opTimer(1, false);
              redBulletOpacity[2] = 0.0;
              blackBulletOpacity[2] = 1.0;
              redBulletOpacity[8] = 1.0;

              // circlesOpacity[1] = 0.0;
              // lineOpacity[1] = 1.0;
              // opacityTimer.cancel();
              // opTimer(2);

              // circlesOpacity[2] = 0.0;
              // circlesOpacity[3] = 1.0;
            } else if (indexVisibilitySlide2DH == 3 && delay) {
              numberColor[2] = Colors.black;
              numberOpacity[3] = 1.0;
              x4 = 0.52;
              y4 = 0.5;
              circlesOpacity[1] = 0.0;
              lineOpacity[1] = 1.0;
              opacityTimer.cancel();
              opTimer(2, false);
              redBulletOpacity[8] = 0.0;
              blackBulletOpacity[8] = 1.0;
              redBulletOpacity[9] = 1.0;

              // circlesOpacity[2] = 0.0;
              // lineOpacity[2] = 1.0;
              // opacityTimer.cancel();
              // opTimer(3);

              // circlesOpacity[3] = 0.0;
              // circlesOpacity[4] = 1.0;
            } else if (indexVisibilitySlide2DH == 4 && delay) {
              numberColor[3] = Colors.black;
              numberOpacity[4] = 1.0;
              x5 = 0.49;
              y5 = 0.2;
              circlesOpacity[2] = 0.0;
              lineOpacity[2] = 1.0;
              opacityTimer.cancel();
              opTimer(3, false);
              redBulletOpacity[9] = 0.0;
              blackBulletOpacity[9] = 1.0;
              redBulletOpacity[12] = 1.0;

              // circlesOpacity[3] = 0.0;
              // lineOpacity[3] = 1.0;
              // opacityTimer.cancel();
              // opTimer(4);

              // circlesOpacity[4] = 0.0;
              // circlesOpacity[5] = 1.0;
            } else if (indexVisibilitySlide2DH == 5 && delay) {
              numberColor[4] = Colors.black;
              numberOpacity[5] = 1.0;
              x6 = 0.815;
              y6 = 0.42;
              circlesOpacity[3] = 0.0;
              lineOpacity[3] = 1.0;
              opacityTimer.cancel();
              opTimer(4, false);
              redBulletOpacity[12] = 0.0;
              blackBulletOpacity[12] = 1.0;
              redBulletOpacity[4] = 1.0;

              // circlesOpacity[4] = 0.0;
              // lineOpacity[4] = 1.0;
              // opacityTimer.cancel();
              // opTimer(5);

              // circlesOpacity[5] = 0.0;
              // circlesOpacity[6] = 1.0;
            } else if (indexVisibilitySlide2DH == 6 && delay) {
              numberColor[5] = Colors.black;
              numberOpacity[6] = 1.0;
              x7 = 0.585;
              y7 = 0.052;
              circlesOpacity[4] = 0.0;
              lineOpacity[4] = 1.0;
              opacityTimer.cancel();
              opTimer(5, false);
              redBulletOpacity[4] = 0.0;
              blackBulletOpacity[4] = 1.0;
              redBulletOpacity[14] = 1.0;

              // circlesOpacity[5] = 0.0;
              // lineOpacity[5] = 1.0;
              // opacityTimer.cancel();
              // opTimer(6);

              // circlesOpacity[6] = 0.0;
              // circlesOpacity[7] = 1.0;
            } else if (indexVisibilitySlide2DH == 7 && delay) {
              numberColor[6] = Colors.black;
              numberOpacity[7] = 1.0;
              x8 = 0.49;
              y8 = 0.42;
              circlesOpacity[5] = 0.0;
              lineOpacity[5] = 1.0;
              opacityTimer.cancel();
              opTimer(6, false);
              redBulletOpacity[14] = 0.0;
              blackBulletOpacity[14] = 1.0;
              redBulletOpacity[10] = 1.0;

              // circlesOpacity[6] = 0.0;
              // lineOpacity[6] = 1.0;
              // opacityTimer.cancel();
              // opTimer(7);

              // circlesOpacity[7] = 0.0;
              // circlesOpacity[8] = 1.0;
            } else if (indexVisibilitySlide2DH == 8 && delay) {
              numberColor[7] = Colors.black;
              numberOpacity[8] = 1.0;
              x9 = 0.65;
              y9 = 0.035;
              circlesOpacity[6] = 0.0;
              lineOpacity[6] = 1.0;
              opacityTimer.cancel();
              opTimer(7, false);
              redBulletOpacity[10] = 0.0;
              blackBulletOpacity[10] = 1.0;
              redBulletOpacity[15] = 1.0;

              // circlesOpacity[7] = 0.0;
              // lineOpacity[7] = 1.0;
              // opacityTimer.cancel();
              // opTimer(8);

              // circlesOpacity[8] = 0.0;
              // circlesOpacity[9] = 1.0;
            } else if (indexVisibilitySlide2DH == 9 && delay) {
              numberColor[8] = Colors.black;
              numberOpacity[9] = 1.0;
              x10 = 0.52;
              y10 = 0.11;
              circlesOpacity[7] = 0.0;
              lineOpacity[7] = 1.0;
              opacityTimer.cancel();
              opTimer(8, false);
              redBulletOpacity[15] = 0.0;
              blackBulletOpacity[15] = 1.0;
              redBulletOpacity[13] = 1.0;

              // circlesOpacity[8] = 0.0;
              // lineOpacity[8] = 1.0;
              // opacityTimer.cancel();
              // opTimer(9);

              // circlesOpacity[9] = 0.0;
              // circlesOpacity[10] = 1.0;
            } else if (indexVisibilitySlide2DH == 10 && delay) {
              numberColor[9] = Colors.black;
              numberOpacity[10] = 1.0;
              x11 = 0.65;
              y11 = 0.59;
              circlesOpacity[8] = 0.0;
              lineOpacity[8] = 1.0;
              opacityTimer.cancel();
              opTimer(9, false);
              redBulletOpacity[13] = 0.0;
              blackBulletOpacity[13] = 1.0;
              redBulletOpacity[7] = 1.0;

              // circlesOpacity[9] = 0.0;
              // lineOpacity[9] = 1.0;
              // opacityTimer.cancel();
              // opTimer(10);

              // circlesOpacity[10] = 0.0;
              // circlesOpacity[11] = 1.0;
            } else if (indexVisibilitySlide2DH == 11 && delay) {
              numberColor[10] = Colors.black;
              numberOpacity[11] = 1.0;
              x12 = 0.723;
              y12 = 0.57;
              circlesOpacity[9] = 0.0;
              lineOpacity[9] = 1.0;
              opacityTimer.cancel();
              opTimer(10, false);
              redBulletOpacity[7] = 0.0;
              blackBulletOpacity[7] = 1.0;
              redBulletOpacity[6] = 1.0;

              // circlesOpacity[10] = 0.0;
              // lineOpacity[10] = 1.0;
              // opacityTimer.cancel();
              // opTimer(11);

              // circlesOpacity[11] = 0.0;
              // circlesOpacity[12] = 1.0;
            } else if (indexVisibilitySlide2DH == 12 && delay) {
              numberColor[11] = Colors.black;
              numberOpacity[12] = 1.0;
              x13 = 0.825;
              y13 = 0.31;
              circlesOpacity[10] = 0.0;
              lineOpacity[10] = 1.0;
              opacityTimer.cancel();
              opTimer(11, false);
              redBulletOpacity[6] = 0.0;
              blackBulletOpacity[6] = 1.0;
              redBulletOpacity[3] = 1.0;

              // circlesOpacity[11] = 0.0;
              // lineOpacity[11] = 1.0;
              // opacityTimer.cancel();
              // opTimer(12);

              // circlesOpacity[12] = 0.0;
              // circlesOpacity[13] = 1.0;
            } else if (indexVisibilitySlide2DH == 13 && delay) {
              numberColor[12] = Colors.black;
              numberOpacity[13] = 1.0;
              x14 = 0.475;
              y14 = 0.311;
              circlesOpacity[11] = 0.0;
              lineOpacity[11] = 1.0;
              opacityTimer.cancel();
              opTimer(12, false);
              redBulletOpacity[3] = 0.0;
              blackBulletOpacity[3] = 1.0;
              redBulletOpacity[11] = 1.0;

              // circlesOpacity[12] = 0.0;
              // lineOpacity[12] = 1.0;
              // opacityTimer.cancel();
              // opTimer(13);

              // circlesOpacity[13] = 0.0;
              // circlesOpacity[14] = 1.0;
            } else if (indexVisibilitySlide2DH == 14 && delay) {
              numberColor[13] = Colors.black;
              numberOpacity[14] = 1.0;
              x15 = 0.78;
              y15 = 0.115;
              circlesOpacity[12] = 0.0;
              lineOpacity[12] = 1.0;
              opacityTimer.cancel();
              opTimer(13, false);
              redBulletOpacity[11] = 0.0;
              blackBulletOpacity[11] = 1.0;
              redBulletOpacity[1] = 1.0;

              // circlesOpacity[13] = 0.0;
              // lineOpacity[13] = 1.0;
              // opacityTimer.cancel();
              // opTimer(14);

              // circlesOpacity[14] = 0.0;
              // circlesOpacity[15] = 1.0;

              // circlesOpacity[14] = 0.0;
              // lineOpacity[14] = 1.0;
              // opacityTimer.cancel();
              // opTimer(15);
              // circlesOpacity[15] = 0.0;
              // circlesOpacity[16] = 1.0;
            } else if (indexVisibilitySlide2DH == 15 && delay) {
              numberColor[14] = Colors.black;
              numberOpacity[15] = 1.0;
              x16 = 0.78;
              y16 = 0.52;
              circlesOpacity[13] = 0.0;
              lineOpacity[13] = 1.0;
              opacityTimer.cancel();
              opTimer(14, false);
              redBulletOpacity[1] = 0.0;
              blackBulletOpacity[1] = 1.0;
              redBulletOpacity[5] = 1.0;
            } else if (indexVisibilitySlide2DH == 16 && delay) {
              numberColor[15] = Colors.black;
              circlesOpacity[14] = 0.0;
              lineOpacity[14] = 1.0;
              opacityTimer.cancel();
              opTimer(15, false);
              blackBulletOpacity[0] = 0.0;
              redBulletOpacity[5] = 0.0;
              blackBulletOpacity[5] = 1.0;
              redBulletOpacity[0] = 1.0;

              // circlesOpacity[16] = 0.0;
              // circlesOpacity[17] = 1.0;
              isLastIndex[0] = true;
            }
            // if (Languages.selectedLanguage) {
            //   text = DescListDeutchDH.slide2Desc[indexVisibilitySlide2DH];
            // } else {
            //   text = DescListEnglishDH.slide2Desc[indexVisibilitySlide2DH];
            // }
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
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight =
        (MediaQuery.of(context).size.height - HomePageDHState.returnAppBar[1]);
    if (screenWidth >= 1200) {
      w = 500;
      h = 500;
    } else if (screenWidth < 1200 && screenWidth >= 1000) {
      w = 400;
      h = 400;
    } else if (screenWidth < 1000 && screenWidth >= 800) {
      w = 300;
      h = 300;
    } else if (screenWidth < 800 && screenWidth >= 600) {
      w = 200;
      h = 200;
    } else {
      w = 200;
      h = 200;
    }

    // ----------------------------------
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
      scaleEnabled: Global.scaleEnabled,
      maxScale: 4,
      child: Stack(
        children: [
          Positioned(
            top: (MediaQuery.of(context).size.height -
                    HomePageDHState.returnAppBar[1]) *
                0.1,
            left: MediaQuery.of(context).size.width * 0.535,
            // duration: Duration(seconds: seconds),
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

          // Positioned(
          //   top: (MediaQuery.of(context).size.height -
          //           HomePageDHState.returnAppBar[1]) *
          //       0.7,
          //   left: MediaQuery.of(context).size.width * 0.03,
          //   width: MediaQuery.of(context).size.width * 0.5,
          //   height: (MediaQuery.of(context).size.height -
          //           HomePageDHState.returnAppBar[1]) *
          //       0.1,
          //   child: Container(
          //     decoration:
          //         BoxDecoration(border: Border.all(color: Colors.blueAccent)),
          //     child: Row(
          //       children: [
          //         Expanded(
          //             flex: 10,
          //             child: Container(
          //               height: double.infinity,
          //               color: Colors.blue,
          //               child: Container(
          //                 margin: EdgeInsets.only(left: 3.0, right: 3.0),
          //                 child: FittedBox(
          //                   child: Text(
          //                     '1 ',
          //                     style: TextStyle(
          //                       color: Colors.white,
          //                       fontSize: 5,
          //                       fontWeight: FontWeight.bold,
          //                     ),
          //                     textAlign: TextAlign.center,
          //                   ),
          //                 ),
          //               ),
          //             )),
          //         Expanded(
          //           flex: 1,
          //           child: Container(
          //             color: Colors.black,
          //             height: (MediaQuery.of(context).size.height -
          //                     HomePageDHState.returnAppBar[1]) *
          //                 0.1,
          //             // width: 1,
          //           ),
          //         ),
          //         Expanded(
          //             flex: 10,
          //             child: Container(
          //               margin: EdgeInsets.only(left: 3.0, right: 3.0),
          //               child: FittedBox(
          //                 child: Text(
          //                   '2 ',
          //                   style: TextStyle(
          //                     fontSize: 5,
          //                     fontWeight: FontWeight.bold,
          //                   ),
          //                   textAlign: TextAlign.center,
          //                 ),
          //               ),
          //             )),
          //         Expanded(
          //           flex: 1,
          //           child: Container(
          //             color: Colors.black,
          //             height: (MediaQuery.of(context).size.height -
          //                     HomePageDHState.returnAppBar[1]) *
          //                 0.1,
          //             // width: 1,
          //           ),
          //         ),
          //         Expanded(
          //             flex: 10,
          //             child: Container(
          //               margin: EdgeInsets.only(left: 3.0, right: 3.0),
          //               child: FittedBox(
          //                 child: Text(
          //                   '3 ',
          //                   style: TextStyle(
          //                     fontSize: 5,
          //                     fontWeight: FontWeight.bold,
          //                   ),
          //                   textAlign: TextAlign.center,
          //                 ),
          //               ),
          //             )),
          //         Expanded(
          //           flex: 1,
          //           child: Container(
          //             color: Colors.black,
          //             height: (MediaQuery.of(context).size.height -
          //                     HomePageDHState.returnAppBar[1]) *
          //                 0.1,
          //             // width: 1,
          //           ),
          //         ),
          //         Expanded(
          //             flex: 10,
          //             child: Container(
          //               margin: EdgeInsets.only(left: 3.0, right: 3.0),
          //               child: FittedBox(
          //                 child: Text(
          //                   '4 ',
          //                   style: TextStyle(
          //                     fontSize: 5,
          //                     fontWeight: FontWeight.bold,
          //                   ),
          //                   textAlign: TextAlign.center,
          //                 ),
          //               ),
          //             )),
          //         Expanded(
          //           flex: 1,
          //           child: Container(
          //             color: Colors.black,
          //             height: (MediaQuery.of(context).size.height -
          //                     HomePageDHState.returnAppBar[1]) *
          //                 0.1,
          //             // width: 1,
          //           ),
          //         ),
          //         Expanded(
          //             flex: 10,
          //             child: Container(
          //               margin: EdgeInsets.only(left: 3.0, right: 3.0),
          //               child: FittedBox(
          //                 child: Text(
          //                   '5 ',
          //                   style: TextStyle(
          //                     fontSize: 5,
          //                     fontWeight: FontWeight.bold,
          //                   ),
          //                   textAlign: TextAlign.center,
          //                 ),
          //               ),
          //             )),
          //         Expanded(
          //           flex: 1,
          //           child: Container(
          //             color: Colors.black,
          //             height: (MediaQuery.of(context).size.height -
          //                     HomePageDHState.returnAppBar[1]) *
          //                 0.1,
          //             // width: 1,
          //           ),
          //         ),
          //         Expanded(
          //             flex: 10,
          //             child: Container(
          //               margin: EdgeInsets.only(left: 3.0, right: 3.0),
          //               child: FittedBox(
          //                 child: Text(
          //                   '6 ',
          //                   style: TextStyle(
          //                     fontSize: 5,
          //                     fontWeight: FontWeight.bold,
          //                   ),
          //                   textAlign: TextAlign.center,
          //                 ),
          //               ),
          //             )),
          //         Expanded(
          //           flex: 1,
          //           child: Container(
          //             color: Colors.black,
          //             height: (MediaQuery.of(context).size.height -
          //                     HomePageDHState.returnAppBar[1]) *
          //                 0.1,
          //             // width: 1,
          //           ),
          //         ),
          //         Expanded(
          //             flex: 10,
          //             child: Container(
          //               margin: EdgeInsets.only(left: 3.0, right: 3.0),
          //               child: FittedBox(
          //                 child: Text(
          //                   '7 ',
          //                   style: TextStyle(
          //                     fontSize: 5,
          //                     fontWeight: FontWeight.bold,
          //                   ),
          //                   textAlign: TextAlign.center,
          //                 ),
          //               ),
          //             )),
          //         Expanded(
          //           flex: 1,
          //           child: Container(
          //             color: Colors.black,
          //             height: (MediaQuery.of(context).size.height -
          //                     HomePageDHState.returnAppBar[1]) *
          //                 0.1,
          //             // width: 1,
          //           ),
          //         ),
          //         Expanded(
          //             flex: 10,
          //             child: Container(
          //               margin: EdgeInsets.only(left: 3.0, right: 3.0),
          //               child: FittedBox(
          //                 child: Text(
          //                   '8 ',
          //                   style: TextStyle(
          //                     fontSize: 5,
          //                     fontWeight: FontWeight.bold,
          //                   ),
          //                   textAlign: TextAlign.center,
          //                 ),
          //               ),
          //             )),
          //         Expanded(
          //           flex: 1,
          //           child: Container(
          //             color: Colors.black,
          //             height: (MediaQuery.of(context).size.height -
          //                     HomePageDHState.returnAppBar[1]) *
          //                 0.1,
          //             // width: 1,
          //           ),
          //         ),
          //         Expanded(
          //             flex: 10,
          //             child: Container(
          //               margin: EdgeInsets.only(left: 3.0, right: 3.0),
          //               child: FittedBox(
          //                 child: Text(
          //                   '9 ',
          //                   style: TextStyle(
          //                     fontSize: 5,
          //                     fontWeight: FontWeight.bold,
          //                   ),
          //                   textAlign: TextAlign.center,
          //                 ),
          //               ),
          //             )),
          //         Expanded(
          //           flex: 1,
          //           child: Container(
          //             color: Colors.black,
          //             height: (MediaQuery.of(context).size.height -
          //                     HomePageDHState.returnAppBar[1]) *
          //                 0.1,
          //             // width: 1,
          //           ),
          //         ),
          //         Expanded(
          //             flex: 10,
          //             child: Container(
          //               margin: EdgeInsets.only(left: 3.0, right: 3.0),
          //               child: FittedBox(
          //                 child: Text(
          //                   '10',
          //                   style: TextStyle(
          //                     fontSize: fontSize,
          //                     fontWeight: FontWeight.bold,
          //                   ),
          //                   textAlign: TextAlign.center,
          //                 ),
          //               ),
          //             )),
          //         Expanded(
          //           flex: 1,
          //           child: Container(
          //             color: Colors.black,
          //             height: (MediaQuery.of(context).size.height -
          //                     HomePageDHState.returnAppBar[1]) *
          //                 0.1,
          //             // width: 1,
          //           ),
          //         ),
          //         Expanded(
          //             flex: 10,
          //             child: Container(
          //               margin: EdgeInsets.only(left: 3.0, right: 3.0),
          //               child: FittedBox(
          //                 child: Text(
          //                   '11',
          //                   style: TextStyle(
          //                     fontSize: fontSize,
          //                     fontWeight: FontWeight.bold,
          //                   ),
          //                   textAlign: TextAlign.center,
          //                 ),
          //               ),
          //             )),
          //         Expanded(
          //           flex: 1,
          //           child: Container(
          //             color: Colors.black,
          //             height: (MediaQuery.of(context).size.height -
          //                     HomePageDHState.returnAppBar[1]) *
          //                 0.1,
          //             // width: 1,
          //           ),
          //         ),
          //         Expanded(
          //             flex: 10,
          //             child: Container(
          //               margin: EdgeInsets.only(left: 3.0, right: 3.0),
          //               child: FittedBox(
          //                 child: Text(
          //                   '12',
          //                   style: TextStyle(
          //                     fontSize: fontSize,
          //                     fontWeight: FontWeight.bold,
          //                   ),
          //                   textAlign: TextAlign.center,
          //                 ),
          //               ),
          //             )),
          //         Expanded(
          //           flex: 1,
          //           child: Container(
          //             color: Colors.black,
          //             height: (MediaQuery.of(context).size.height -
          //                     HomePageDHState.returnAppBar[1]) *
          //                 0.1,
          //             // width: 1,
          //           ),
          //         ),
          //         Expanded(
          //             flex: 10,
          //             child: Container(
          //               margin: EdgeInsets.only(left: 3.0, right: 3.0),
          //               child: FittedBox(
          //                 child: Text(
          //                   '13',
          //                   style: TextStyle(
          //                     fontSize: fontSize,
          //                     fontWeight: FontWeight.bold,
          //                   ),
          //                   textAlign: TextAlign.center,
          //                 ),
          //               ),
          //             )),
          //         Expanded(
          //           flex: 1,
          //           child: Container(
          //             color: Colors.black,
          //             height: (MediaQuery.of(context).size.height -
          //                     HomePageDHState.returnAppBar[1]) *
          //                 0.1,
          //             // width: 1,
          //           ),
          //         ),
          //         Expanded(
          //             flex: 10,
          //             child: Container(
          //               margin: EdgeInsets.only(left: 3.0, right: 3.0),
          //               child: FittedBox(
          //                 child: Text(
          //                   '14',
          //                   style: TextStyle(
          //                     fontSize: fontSize,
          //                     fontWeight: FontWeight.bold,
          //                   ),
          //                   textAlign: TextAlign.center,
          //                 ),
          //               ),
          //             )),
          //         Expanded(
          //           flex: 1,
          //           child: Container(
          //             color: Colors.black,
          //             height: (MediaQuery.of(context).size.height -
          //                     HomePageDHState.returnAppBar[1]) *
          //                 0.1,
          //             // width: 1,
          //           ),
          //         ),
          //         Expanded(
          //             flex: 10,
          //             child: Container(
          //               margin: EdgeInsets.only(left: 3.0, right: 3.0),
          //               child: FittedBox(
          //                 child: Text(
          //                   '15',
          //                   style: TextStyle(
          //                     fontSize: fontSize,
          //                     fontWeight: FontWeight.bold,
          //                   ),
          //                   textAlign: TextAlign.center,
          //                 ),
          //               ),
          //             )),
          //         Expanded(
          //           flex: 1,
          //           child: Container(
          //             color: Colors.black,
          //             height: (MediaQuery.of(context).size.height -
          //                     HomePageDHState.returnAppBar[1]) *
          //                 0.1,
          //             // width: 1,
          //           ),
          //         ),
          //         Expanded(
          //           flex: 10,
          //           child: Container(
          //             margin: EdgeInsets.only(left: 3.0, right: 3.0),
          //             child: FittedBox(
          //               child: Text(
          //                 '16',
          //                 style: TextStyle(
          //                   fontSize: fontSize,
          //                   fontWeight: FontWeight.bold,
          //                 ),
          //                 textAlign: TextAlign.center,
          //               ),
          //             ),
          //           ),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),

          // Numbers
          // Visibility(
          //   visible: circleVisibility,
          //   child: MyPositioned(
          //     false,
          //     true,
          //     false,
          //     false,
          //     0.1, // 0.1
          //     0.0, // 0.0
          //     0.0, // 0.0
          //     numbersLeft, // 0.6
          //     0.35, // 0.35
          //     0.6, // 0.6
          //     true,
          //     'assets/slide2Images/numbers.jpeg',
          //     BoxFit.fill,
          //     seconds,
          //     HomePageDHState.returnAppBar[1],
          //     1.0,
          //   ),
          // ),

          // // 0
          // Visibility(
          //   visible: circleVisibility,
          //   child: MyPositioned(
          //     false,
          //     true,
          //     false,
          //     false,
          //     0.142, // 0.1
          //     0.0, // 0.0
          //     0.0, // 0.0
          //     0.535, // 0.6
          //     0.305, // 0.35
          //     0.52, // 0.6
          //     true,
          //     'assets/slide2Images/0.jpeg',
          //     BoxFit.fill,
          //     seconds,
          //     HomePageDHState.returnAppBar[1],
          //     1.0, //circlesOpacity[0],
          //   ),
          // ),
          // // 1
          // Visibility(
          //   visible: circleVisibility,
          //   child: MyPositioned(
          //     false,
          //     true,
          //     false,
          //     false,
          //     0.142, // 0.1
          //     0.0, // 0.0
          //     0.0, // 0.0
          //     0.535, // 0.6
          //     0.305, // 0.35
          //     0.52, // 0.6
          //     true,
          //     'assets/slide2Images/1.jpeg',
          //     BoxFit.fill,
          //     seconds,
          //     HomePageDHState.returnAppBar[1],
          //     circlesOpacity[1],
          //   ),
          // ),

          // // 2
          // Visibility(
          //   visible: circleVisibility,
          //   child: MyPositioned(
          //     false,
          //     true,
          //     false,
          //     false,
          //     0.142, // 0.1
          //     0.0, // 0.0
          //     0.0, // 0.0
          //     0.535, // 0.6
          //     0.305, // 0.35
          //     0.52, // 0.6
          //     true,
          //     'assets/slide2Images/2.jpeg',
          //     BoxFit.fill,
          //     seconds,
          //     HomePageDHState.returnAppBar[1],
          //     circlesOpacity[2],
          //   ),
          // ),

          // // 3
          // Visibility(
          //   visible: circleVisibility,
          //   child: MyPositioned(
          //     false,
          //     true,
          //     false,
          //     false,
          //     0.142, // 0.1
          //     0.0, // 0.0
          //     0.0, // 0.0
          //     0.535, // 0.6
          //     0.305, // 0.35
          //     0.52, // 0.6
          //     true,
          //     'assets/slide2Images/3.jpeg',
          //     BoxFit.fill,
          //     seconds,
          //     HomePageDHState.returnAppBar[1],
          //     circlesOpacity[3],
          //   ),
          // ),

          // // 4
          // Visibility(
          //   visible: circleVisibility,
          //   child: MyPositioned(
          //     false,
          //     true,
          //     false,
          //     false,
          //     0.142, // 0.1
          //     0.0, // 0.0
          //     0.0, // 0.0
          //     0.535, // 0.6
          //     0.305, // 0.35
          //     0.52, // 0.6
          //     true,
          //     'assets/slide2Images/4.jpeg',
          //     BoxFit.fill,
          //     seconds,
          //     HomePageDHState.returnAppBar[1],
          //     circlesOpacity[4],
          //   ),
          // ),

          // // 5
          // Visibility(
          //   visible: circleVisibility,
          //   child: MyPositioned(
          //     false,
          //     true,
          //     false,
          //     false,
          //     0.142, // 0.1
          //     0.0, // 0.0
          //     0.0, // 0.0
          //     0.535, // 0.6
          //     0.305, // 0.35
          //     0.52, // 0.6
          //     true,
          //     'assets/slide2Images/5.jpeg',
          //     BoxFit.fill,
          //     seconds,
          //     HomePageDHState.returnAppBar[1],
          //     circlesOpacity[5],
          //   ),
          // ),

          // // 6
          // Visibility(
          //   visible: circleVisibility,
          //   child: MyPositioned(
          //     false,
          //     true,
          //     false,
          //     false,
          //     0.142, // 0.1
          //     0.0, // 0.0
          //     0.0, // 0.0
          //     0.535, // 0.6
          //     0.305, // 0.35
          //     0.52, // 0.6
          //     true,
          //     'assets/slide2Images/6.jpeg',
          //     BoxFit.fill,
          //     seconds,
          //     HomePageDHState.returnAppBar[1],
          //     circlesOpacity[6],
          //   ),
          // ),

          // // 7
          // Visibility(
          //   visible: circleVisibility,
          //   child: MyPositioned(
          //     false,
          //     true,
          //     false,
          //     false,
          //     0.142, // 0.1
          //     0.0, // 0.0
          //     0.0, // 0.0
          //     0.535, // 0.6
          //     0.305, // 0.35
          //     0.52, // 0.6
          //     true,
          //     'assets/slide2Images/7.jpeg',
          //     BoxFit.fill,
          //     seconds,
          //     HomePageDHState.returnAppBar[1],
          //     circlesOpacity[7],
          //   ),
          // ),

          // // 8
          // Visibility(
          //   visible: circleVisibility,
          //   child: MyPositioned(
          //     false,
          //     true,
          //     false,
          //     false,
          //     0.142, // 0.1
          //     0.0, // 0.0
          //     0.0, // 0.0
          //     0.535, // 0.6
          //     0.305, // 0.35
          //     0.52, // 0.6
          //     true,
          //     'assets/slide2Images/8.jpeg',
          //     BoxFit.fill,
          //     seconds,
          //     HomePageDHState.returnAppBar[1],
          //     circlesOpacity[8],
          //   ),
          // ),

          // // 9
          // Visibility(
          //   visible: circleVisibility,
          //   child: MyPositioned(
          //     false,
          //     true,
          //     false,
          //     false,
          //     0.142, // 0.1
          //     0.0, // 0.0
          //     0.0, // 0.0
          //     0.535, // 0.6
          //     0.305, // 0.35
          //     0.52, // 0.6
          //     true,
          //     'assets/slide2Images/9.jpeg',
          //     BoxFit.fill,
          //     seconds,
          //     HomePageDHState.returnAppBar[1],
          //     circlesOpacity[9],
          //   ),
          // ),

          // // 10
          // Visibility(
          //   visible: circleVisibility,
          //   child: MyPositioned(
          //     false,
          //     true,
          //     false,
          //     false,
          //     0.142, // 0.1
          //     0.0, // 0.0
          //     0.0, // 0.0
          //     0.535, // 0.6
          //     0.305, // 0.35
          //     0.52, // 0.6
          //     true,
          //     'assets/slide2Images/10.jpeg',
          //     BoxFit.fill,
          //     seconds,
          //     HomePageDHState.returnAppBar[1],
          //     circlesOpacity[10],
          //   ),
          // ),

          // // 11
          // Visibility(
          //   visible: circleVisibility,
          //   child: MyPositioned(
          //     false,
          //     true,
          //     false,
          //     false,
          //     0.142, // 0.1
          //     0.0, // 0.0
          //     0.0, // 0.0
          //     0.535, // 0.6
          //     0.305, // 0.35
          //     0.52, // 0.6
          //     true,
          //     'assets/slide2Images/11.jpeg',
          //     BoxFit.fill,
          //     seconds,
          //     HomePageDHState.returnAppBar[1],
          //     circlesOpacity[11],
          //   ),
          // ),

          // // 12
          // Visibility(
          //   visible: circleVisibility,
          //   child: MyPositioned(
          //     false,
          //     true,
          //     false,
          //     false,
          //     0.142, // 0.1
          //     0.0, // 0.0
          //     0.0, // 0.0
          //     0.535, // 0.6
          //     0.305, // 0.35
          //     0.52, // 0.6
          //     true,
          //     'assets/slide2Images/12.jpeg',
          //     BoxFit.fill,
          //     seconds,
          //     HomePageDHState.returnAppBar[1],
          //     circlesOpacity[12],
          //   ),
          // ),

          // // 13
          // Visibility(
          //   visible: circleVisibility,
          //   child: MyPositioned(
          //     false,
          //     true,
          //     false,
          //     false,
          //     0.142, // 0.1
          //     0.0, // 0.0
          //     0.0, // 0.0
          //     0.535, // 0.6
          //     0.305, // 0.35
          //     0.52, // 0.6
          //     true,
          //     'assets/slide2Images/13.jpeg',
          //     BoxFit.fill,
          //     seconds,
          //     HomePageDHState.returnAppBar[1],
          //     circlesOpacity[13],
          //   ),
          // ),

          // // 14
          // Visibility(
          //   visible: circleVisibility,
          //   child: MyPositioned(
          //     false,
          //     true,
          //     false,
          //     false,
          //     0.142, // 0.1
          //     0.0, // 0.0
          //     0.0, // 0.0
          //     0.535, // 0.6
          //     0.305, // 0.35
          //     0.52, // 0.6
          //     true,
          //     'assets/slide2Images/14.jpeg',
          //     BoxFit.fill,
          //     seconds,
          //     HomePageDHState.returnAppBar[1],
          //     circlesOpacity[14],
          //   ),
          // ),

          // // 15
          // Visibility(
          //   visible: circleVisibility,
          //   child: MyPositioned(
          //     false,
          //     true,
          //     false,
          //     false,
          //     0.142, // 0.1
          //     0.0, // 0.0
          //     0.0, // 0.0
          //     0.535, // 0.6
          //     0.305, // 0.35
          //     0.52, // 0.6
          //     true,
          //     'assets/slide2Images/15.jpeg',
          //     BoxFit.fill,
          //     seconds,
          //     HomePageDHState.returnAppBar[1],
          //     circlesOpacity[15],
          //   ),
          // ),

          // // 16
          // Visibility(
          //   visible: circleVisibility,
          //   child: MyPositioned(
          //     false,
          //     true,
          //     false,
          //     false,
          //     0.142, // 0.1
          //     0.0, // 0.0
          //     0.0, // 0.0
          //     0.535, // 0.6
          //     0.305, // 0.35
          //     0.52, // 0.6
          //     true,
          //     'assets/slide2Images/16.jpeg',
          //     BoxFit.fill,
          //     seconds,
          //     HomePageDHState.returnAppBar[1],
          //     circlesOpacity[16],
          //   ),
          // ),

          // // 17
          // Visibility(
          //   visible: circleVisibility,
          //   child: MyPositioned(
          //     false,
          //     true,
          //     false,
          //     false,
          //     0.142, // 0.1
          //     0.0, // 0.0
          //     0.0, // 0.0
          //     0.535, // 0.6
          //     0.305, // 0.35
          //     0.52, // 0.6
          //     true,
          //     'assets/slide2Images/17.jpeg',
          //     BoxFit.fill,
          //     seconds,
          //     HomePageDHState.returnAppBar[1],
          //     circlesOpacity[17],
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
          // Description(desc, text, descVisbility, containerSeconds,
          //     HomePageDHState.returnAppBar[1], false),

          // Upper Text
          Positioned(
            top: (MediaQuery.of(context).size.height -
                    HomePageDHState.returnAppBar[1]) *
                0.03,
            right: MediaQuery.of(context).size.width * 0.25,
            width: MediaQuery.of(context).size.width * 0.7,
            // height: MediaQuery.of(context).size.height * 0.06,
            child: Align(
              alignment: Alignment.topLeft,
              child: FittedBox(
                child: Text(
                  AppLocalizations.of(context)!.text2,
                  style: TextStyle(
                    fontSize:
                        MediaQuery.of(context).size.width * 0.017, //modWidth,
                  ),
                ),
              ),
            ),
          ),
          // Container(
          //   // height: 100,
          //   // color: Colors.red,
          //   child: AutoSizeText(
          //     AppLocalizations.of(context)!.text2,
          //     minFontSize: 5,
          //     stepGranularity: 5,
          //     style: TextStyle(fontSize: 30),
          //     maxLines: 1,
          //     overflow: TextOverflow.ellipsis,
          //   ),
          // ),

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
                    fontSize:
                        MediaQuery.of(context).size.width * 0.02, //middleWidth,
                  ),
                ),
              ),
            ),
          ),

          Positioned(
            top: (MediaQuery.of(context).size.height -
                    HomePageDHState.returnAppBar[1]) *
                0.33, //0.4
            left: MediaQuery.of(context).size.width * 0.065,
            width: MediaQuery.of(context).size.width * 0.15, //0.25,
            height: (MediaQuery.of(context).size.height -
                    HomePageDHState.returnAppBar[1]) *
                0.15, // 0.25
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
                            fontSize: MediaQuery.of(context).size.width *
                                0.02, //modWidth,
                          ),
                        ),
                      ),
                      Text(
                        power[indexVisibilitySlide2DH == -1
                            ? 0
                            : indexVisibilitySlide2DH],
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * 0.015,
                          // modWidth /
                          // 1.5,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: Text(
                          ' mod 17 = $result',
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width *
                                0.02, //modWidth,
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
              backgroundColor: isLastIndex[0] ? Colors.grey : Colors.blue,
              heroTag: "right9",
              onPressed:
                  // isLastIndex[0]
                  //     ? null
                  //     :
                  () => setState(
                () {
                  // opacityTimer = Timer.periodic(
                  //   Duration(seconds: 1),
                  //   (_) {
                  //     setState(
                  //       () {
                  //         if (isShown) {
                  //           lineOpacity = 1.0;
                  //           isShown = false;
                  //         } else {
                  //           lineOpacity = 0.2;
                  //           isShown = true;
                  //         }
                  //       },
                  //     );
                  //   },
                  // );
                  // messagePosition[0] = 0.1;
                  // messagePosition[1] = 0.535;

                  if (videoButton == false) {
                    videoTimerSlide2DH.cancel();
                  }
                  videoButton = true;
                  seconds = Global.slider;

                  if (indexVisibilitySlide2DH == 16) {
                    openDialog(false);
                  }

                  if (indexVisibilitySlide2DH < 16 && delay) {
                    // Languages.player.play("assets/steps.mp3");
                    indexVisibilitySlide2DH++;
                    pageController2 = TextEditingController()
                      ..text = (indexVisibilitySlide2DH + 1).toString();

                    stepsVisibility[0] = !stepsVisibility[0];
                    stepsVisibility[1] = !stepsVisibility[1];
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
                    // delay = false;
                    // delayTimer = Timer(Duration(seconds: seconds * 2), () {
                    //   setState(() {
                    //     // resVisibility = false;
                    //     resOpacity = 0.0;
                    //     x = 0.16;
                    //     y = 0.355;
                    //     delay = true;
                    //   });
                    // });
                  } else if (indexVisibilitySlide2DH == 1 && delay) {
                    numberColor[0] = Colors.black;
                    numberOpacity[1] = 1.0;
                    x2 = 0.812;
                    y2 = 0.2;
                    // resOpacity[0] = 0.0;
                    // resOpacity[1] = 1.0;
                    // x[1] = 0.78;
                    // y[1] = 0.115;
                    opTimer(0, false);
                    redBulletOpacity[0] = 0.0;
                    blackBulletOpacity[0] = 1.0;
                    redBulletOpacity[2] = 1.0;
                    // circlesOpacity[0] = 0.0;
                    // lineOpacity[0] = 1.0;
                    // opacityTimer.cancel();
                    // opTimer(1);

                    // circlesOpacity[1] = 0.0;
                    // circlesOpacity[2] = 1.0;
                  } else if (indexVisibilitySlide2DH == 2 && delay) {
                    numberColor[1] = Colors.black;
                    numberOpacity[2] = 1.0;
                    x3 = 0.58;
                    y3 = 0.57;
                    circlesOpacity[0] = 0.0;
                    lineOpacity[0] = 1.0;
                    opacityTimer.cancel();
                    opTimer(1, false);
                    redBulletOpacity[2] = 0.0;
                    blackBulletOpacity[2] = 1.0;
                    redBulletOpacity[8] = 1.0;

                    // circlesOpacity[1] = 0.0;
                    // lineOpacity[1] = 1.0;
                    // opacityTimer.cancel();
                    // opTimer(2);

                    // circlesOpacity[2] = 0.0;
                    // circlesOpacity[3] = 1.0;
                  } else if (indexVisibilitySlide2DH == 3 && delay) {
                    numberColor[2] = Colors.black;
                    numberOpacity[3] = 1.0;
                    x4 = 0.52;
                    y4 = 0.5;
                    circlesOpacity[1] = 0.0;
                    lineOpacity[1] = 1.0;
                    opacityTimer.cancel();
                    opTimer(2, false);
                    redBulletOpacity[8] = 0.0;
                    blackBulletOpacity[8] = 1.0;
                    redBulletOpacity[9] = 1.0;

                    // circlesOpacity[2] = 0.0;
                    // lineOpacity[2] = 1.0;
                    // opacityTimer.cancel();
                    // opTimer(3);

                    // circlesOpacity[3] = 0.0;
                    // circlesOpacity[4] = 1.0;
                  } else if (indexVisibilitySlide2DH == 4 && delay) {
                    numberColor[3] = Colors.black;
                    numberOpacity[4] = 1.0;
                    x5 = 0.49;
                    y5 = 0.2;
                    circlesOpacity[2] = 0.0;
                    lineOpacity[2] = 1.0;
                    opacityTimer.cancel();
                    opTimer(3, false);
                    redBulletOpacity[9] = 0.0;
                    blackBulletOpacity[9] = 1.0;
                    redBulletOpacity[12] = 1.0;

                    // circlesOpacity[3] = 0.0;
                    // lineOpacity[3] = 1.0;
                    // opacityTimer.cancel();
                    // opTimer(4);

                    // circlesOpacity[4] = 0.0;
                    // circlesOpacity[5] = 1.0;
                  } else if (indexVisibilitySlide2DH == 5 && delay) {
                    numberColor[4] = Colors.black;
                    numberOpacity[5] = 1.0;
                    x6 = 0.815;
                    y6 = 0.42;
                    circlesOpacity[3] = 0.0;
                    lineOpacity[3] = 1.0;
                    opacityTimer.cancel();
                    opTimer(4, false);
                    redBulletOpacity[12] = 0.0;
                    blackBulletOpacity[12] = 1.0;
                    redBulletOpacity[4] = 1.0;

                    // circlesOpacity[4] = 0.0;
                    // lineOpacity[4] = 1.0;
                    // opacityTimer.cancel();
                    // opTimer(5);

                    // circlesOpacity[5] = 0.0;
                    // circlesOpacity[6] = 1.0;
                  } else if (indexVisibilitySlide2DH == 6 && delay) {
                    numberColor[5] = Colors.black;
                    numberOpacity[6] = 1.0;
                    x7 = 0.585;
                    y7 = 0.052;
                    circlesOpacity[4] = 0.0;
                    lineOpacity[4] = 1.0;
                    opacityTimer.cancel();
                    opTimer(5, false);
                    redBulletOpacity[4] = 0.0;
                    blackBulletOpacity[4] = 1.0;
                    redBulletOpacity[14] = 1.0;

                    // circlesOpacity[5] = 0.0;
                    // lineOpacity[5] = 1.0;
                    // opacityTimer.cancel();
                    // opTimer(6);

                    // circlesOpacity[6] = 0.0;
                    // circlesOpacity[7] = 1.0;
                  } else if (indexVisibilitySlide2DH == 7 && delay) {
                    numberColor[6] = Colors.black;
                    numberOpacity[7] = 1.0;
                    x8 = 0.49;
                    y8 = 0.42;
                    circlesOpacity[5] = 0.0;
                    lineOpacity[5] = 1.0;
                    opacityTimer.cancel();
                    opTimer(6, false);
                    redBulletOpacity[14] = 0.0;
                    blackBulletOpacity[14] = 1.0;
                    redBulletOpacity[10] = 1.0;

                    // circlesOpacity[6] = 0.0;
                    // lineOpacity[6] = 1.0;
                    // opacityTimer.cancel();
                    // opTimer(7);

                    // circlesOpacity[7] = 0.0;
                    // circlesOpacity[8] = 1.0;
                  } else if (indexVisibilitySlide2DH == 8 && delay) {
                    numberColor[7] = Colors.black;
                    numberOpacity[8] = 1.0;
                    x9 = 0.65;
                    y9 = 0.035;
                    circlesOpacity[6] = 0.0;
                    lineOpacity[6] = 1.0;
                    opacityTimer.cancel();
                    opTimer(7, false);
                    redBulletOpacity[10] = 0.0;
                    blackBulletOpacity[10] = 1.0;
                    redBulletOpacity[15] = 1.0;

                    // circlesOpacity[7] = 0.0;
                    // lineOpacity[7] = 1.0;
                    // opacityTimer.cancel();
                    // opTimer(8);

                    // circlesOpacity[8] = 0.0;
                    // circlesOpacity[9] = 1.0;
                  } else if (indexVisibilitySlide2DH == 9 && delay) {
                    numberColor[8] = Colors.black;
                    numberOpacity[9] = 1.0;
                    x10 = 0.52;
                    y10 = 0.11;
                    circlesOpacity[7] = 0.0;
                    lineOpacity[7] = 1.0;
                    opacityTimer.cancel();
                    opTimer(8, false);
                    redBulletOpacity[15] = 0.0;
                    blackBulletOpacity[15] = 1.0;
                    redBulletOpacity[13] = 1.0;

                    // circlesOpacity[8] = 0.0;
                    // lineOpacity[8] = 1.0;
                    // opacityTimer.cancel();
                    // opTimer(9);

                    // circlesOpacity[9] = 0.0;
                    // circlesOpacity[10] = 1.0;
                  } else if (indexVisibilitySlide2DH == 10 && delay) {
                    numberColor[9] = Colors.black;
                    numberOpacity[10] = 1.0;
                    x11 = 0.65;
                    y11 = 0.59;
                    circlesOpacity[8] = 0.0;
                    lineOpacity[8] = 1.0;
                    opacityTimer.cancel();
                    opTimer(9, false);
                    redBulletOpacity[13] = 0.0;
                    blackBulletOpacity[13] = 1.0;
                    redBulletOpacity[7] = 1.0;

                    // circlesOpacity[9] = 0.0;
                    // lineOpacity[9] = 1.0;
                    // opacityTimer.cancel();
                    // opTimer(10);

                    // circlesOpacity[10] = 0.0;
                    // circlesOpacity[11] = 1.0;
                  } else if (indexVisibilitySlide2DH == 11 && delay) {
                    numberColor[10] = Colors.black;
                    numberOpacity[11] = 1.0;
                    x12 = 0.723;
                    y12 = 0.57;
                    circlesOpacity[9] = 0.0;
                    lineOpacity[9] = 1.0;
                    opacityTimer.cancel();
                    opTimer(10, false);
                    redBulletOpacity[7] = 0.0;
                    blackBulletOpacity[7] = 1.0;
                    redBulletOpacity[6] = 1.0;

                    // circlesOpacity[10] = 0.0;
                    // lineOpacity[10] = 1.0;
                    // opacityTimer.cancel();
                    // opTimer(11);

                    // circlesOpacity[11] = 0.0;
                    // circlesOpacity[12] = 1.0;
                  } else if (indexVisibilitySlide2DH == 12 && delay) {
                    numberColor[11] = Colors.black;
                    numberOpacity[12] = 1.0;
                    x13 = 0.825;
                    y13 = 0.31;
                    circlesOpacity[10] = 0.0;
                    lineOpacity[10] = 1.0;
                    opacityTimer.cancel();
                    opTimer(11, false);
                    redBulletOpacity[6] = 0.0;
                    blackBulletOpacity[6] = 1.0;
                    redBulletOpacity[3] = 1.0;

                    // circlesOpacity[11] = 0.0;
                    // lineOpacity[11] = 1.0;
                    // opacityTimer.cancel();
                    // opTimer(12);

                    // circlesOpacity[12] = 0.0;
                    // circlesOpacity[13] = 1.0;
                  } else if (indexVisibilitySlide2DH == 13 && delay) {
                    numberColor[12] = Colors.black;
                    numberOpacity[13] = 1.0;
                    x14 = 0.475;
                    y14 = 0.311;
                    circlesOpacity[11] = 0.0;
                    lineOpacity[11] = 1.0;
                    opacityTimer.cancel();
                    opTimer(12, false);
                    redBulletOpacity[3] = 0.0;
                    blackBulletOpacity[3] = 1.0;
                    redBulletOpacity[11] = 1.0;

                    // circlesOpacity[12] = 0.0;
                    // lineOpacity[12] = 1.0;
                    // opacityTimer.cancel();
                    // opTimer(13);

                    // circlesOpacity[13] = 0.0;
                    // circlesOpacity[14] = 1.0;
                  } else if (indexVisibilitySlide2DH == 14 && delay) {
                    numberColor[13] = Colors.black;
                    numberOpacity[14] = 1.0;
                    x15 = 0.78;
                    y15 = 0.115;
                    circlesOpacity[12] = 0.0;
                    lineOpacity[12] = 1.0;
                    opacityTimer.cancel();
                    opTimer(13, false);
                    redBulletOpacity[11] = 0.0;
                    blackBulletOpacity[11] = 1.0;
                    redBulletOpacity[1] = 1.0;

                    // circlesOpacity[13] = 0.0;
                    // lineOpacity[13] = 1.0;
                    // opacityTimer.cancel();
                    // opTimer(14);

                    // circlesOpacity[14] = 0.0;
                    // circlesOpacity[15] = 1.0;

                    // circlesOpacity[14] = 0.0;
                    // lineOpacity[14] = 1.0;
                    // opacityTimer.cancel();
                    // opTimer(15);
                    // circlesOpacity[15] = 0.0;
                    // circlesOpacity[16] = 1.0;
                  } else if (indexVisibilitySlide2DH == 15 && delay) {
                    numberColor[14] = Colors.black;
                    numberOpacity[15] = 1.0;
                    x16 = 0.78;
                    y16 = 0.52;
                    circlesOpacity[13] = 0.0;
                    lineOpacity[13] = 1.0;
                    opacityTimer.cancel();
                    opTimer(14, false);
                    redBulletOpacity[1] = 0.0;
                    blackBulletOpacity[1] = 1.0;
                    redBulletOpacity[5] = 1.0;
                  } else if (indexVisibilitySlide2DH == 16 && delay) {
                    numberColor[15] = Colors.black;
                    circlesOpacity[14] = 0.0;
                    lineOpacity[14] = 1.0;
                    opacityTimer.cancel();
                    opTimer(15, false);
                    blackBulletOpacity[0] = 0.0;
                    redBulletOpacity[5] = 0.0;
                    blackBulletOpacity[5] = 1.0;
                    redBulletOpacity[0] = 1.0;

                    // circlesOpacity[16] = 0.0;
                    // circlesOpacity[17] = 1.0;
                    isLastIndex[0] = true;
                  }
                  // if (Languages.selectedLanguage) {
                  //   text = DescListDeutchDH.slide2Desc[indexVisibilitySlide2DH];
                  // } else {
                  //   text =
                  //       DescListEnglishDH.slide2Desc[indexVisibilitySlide2DH];
                  // }
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
              backgroundColor: isLastIndex[1] ? Colors.grey : Colors.blue,
              onPressed:
                  // isLastIndex[1]
                  //     ? null
                  //     :
                  () => setState(
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
                    // Languages.player.play("assets/steps.mp3");
                    indexVisibilitySlide2DH--;
                    pageController2 = TextEditingController()
                      ..text = (indexVisibilitySlide2DH + 1).toString();
                    numberOpacity[0] = 0.0;
                    x1 = 0.16;
                    y1 = 0.355;
                    redBulletOpacity[0] = 0.0;
                    numberOpacity[0] = 0.0;
                    resultOpacity = 0.0;
                    // circlesOpacity[0] = 1.0;
                    // circlesOpacity[1] = 0.0;
                    // resultOpacity = 0.0;
                    isLastIndex[1] = true;
                  } else if (indexVisibilitySlide2DH == 1 && delay) {
                    numberColor[0] = Colors.red;
                    numberOpacity[1] = 0.0;
                    x2 = 0.16;
                    y2 = 0.355;
                    circlesOpacity[0] = 0.0;
                    lineOpacity[0] = 0.0;
                    // opTimer(0);
                    redBulletOpacity[0] = 1.0;
                    blackBulletOpacity[0] = 0.0;
                    redBulletOpacity[2] = 0.0;

                    // circlesOpacity[1] = 1.0;
                    // circlesOpacity[2] = 0.0;
                  } else if (indexVisibilitySlide2DH == 2 && delay) {
                    numberColor[1] = Colors.red;
                    numberOpacity[2] = 0.0;
                    x3 = 0.16;
                    y3 = 0.355;
                    circlesOpacity[0] = 1.0;
                    lineOpacity[0] = 0.0;
                    circlesOpacity[1] = 0.0;
                    lineOpacity[1] = 0.0;
                    opacityTimer.cancel();
                    // opTimer(1);
                    redBulletOpacity[2] = 1.0;
                    blackBulletOpacity[2] = 0.0;
                    redBulletOpacity[8] = 0.0;
                    // circlesOpacity[2] = 1.0;
                    // circlesOpacity[3] = 0.0;
                  } else if (indexVisibilitySlide2DH == 3 && delay) {
                    numberColor[2] = Colors.red;
                    numberOpacity[3] = 0.0;
                    x4 = 0.16;
                    y4 = 0.355;
                    circlesOpacity[1] = 1.0;
                    lineOpacity[1] = 0.0;
                    circlesOpacity[2] = 0.0;
                    lineOpacity[2] = 0.0;
                    opacityTimer.cancel();
                    // opTimer(2);
                    redBulletOpacity[8] = 1.0;
                    blackBulletOpacity[8] = 0.0;
                    redBulletOpacity[9] = 0.0;
                    // circlesOpacity[3] = 1.0;
                    // circlesOpacity[4] = 0.0;
                  } else if (indexVisibilitySlide2DH == 4 && delay) {
                    numberColor[3] = Colors.red;
                    numberOpacity[4] = 0.0;
                    x5 = 0.16;
                    y5 = 0.355;
                    circlesOpacity[2] = 1.0;
                    lineOpacity[2] = 0.0;
                    circlesOpacity[3] = 0.0;
                    lineOpacity[3] = 0.0;
                    opacityTimer.cancel();
                    // opTimer(3);
                    redBulletOpacity[9] = 1.0;
                    blackBulletOpacity[9] = 0.0;
                    redBulletOpacity[12] = 0.0;
                    // circlesOpacity[4] = 1.0;
                    // circlesOpacity[5] = 0.0;
                  } else if (indexVisibilitySlide2DH == 5 && delay) {
                    numberColor[4] = Colors.red;
                    numberOpacity[5] = 0.0;
                    x6 = 0.16;
                    y6 = 0.355;
                    circlesOpacity[3] = 1.0;
                    lineOpacity[3] = 0.0;
                    circlesOpacity[4] = 0.0;
                    lineOpacity[4] = 0.0;
                    opacityTimer.cancel();
                    // opTimer(4);
                    redBulletOpacity[12] = 1.0;
                    blackBulletOpacity[12] = 0.0;
                    redBulletOpacity[4] = 0.0;
                    // circlesOpacity[5] = 1.0;
                    // circlesOpacity[6] = 0.0;
                  } else if (indexVisibilitySlide2DH == 6 && delay) {
                    numberColor[5] = Colors.red;
                    numberOpacity[6] = 0.0;
                    x7 = 0.16;
                    y7 = 0.355;
                    circlesOpacity[4] = 1.0;
                    lineOpacity[4] = 0.0;
                    circlesOpacity[5] = 0.0;
                    lineOpacity[5] = 0.0;
                    opacityTimer.cancel();
                    // opTimer(5);
                    redBulletOpacity[4] = 1.0;
                    blackBulletOpacity[4] = 0.0;
                    redBulletOpacity[14] = 0.0;
                    // circlesOpacity[6] = 1.0;
                    // circlesOpacity[7] = 0.0;
                  } else if (indexVisibilitySlide2DH == 7 && delay) {
                    numberColor[6] = Colors.red;
                    numberOpacity[7] = 0.0;
                    x8 = 0.16;
                    y8 = 0.355;
                    circlesOpacity[5] = 1.0;
                    lineOpacity[5] = 0.0;
                    circlesOpacity[6] = 0.0;
                    lineOpacity[6] = 0.0;
                    opacityTimer.cancel();
                    // opTimer(6);
                    redBulletOpacity[14] = 1.0;
                    blackBulletOpacity[14] = 0.0;
                    redBulletOpacity[10] = 0.0;
                    // circlesOpacity[7] = 1.0;
                    // circlesOpacity[8] = 0.0;
                  } else if (indexVisibilitySlide2DH == 8 && delay) {
                    numberColor[7] = Colors.red;
                    numberOpacity[8] = 0.0;
                    x9 = 0.16;
                    y9 = 0.355;
                    circlesOpacity[6] = 1.0;
                    lineOpacity[6] = 0.0;
                    circlesOpacity[7] = 0.0;
                    lineOpacity[7] = 0.0;
                    opacityTimer.cancel();
                    // opTimer(7);
                    redBulletOpacity[10] = 1.0;
                    blackBulletOpacity[10] = 0.0;
                    redBulletOpacity[15] = 0.0;
                    // circlesOpacity[8] = 1.0;
                    // circlesOpacity[9] = 0.0;
                  } else if (indexVisibilitySlide2DH == 9 && delay) {
                    numberColor[8] = Colors.red;
                    numberOpacity[9] = 0.0;
                    x10 = 0.16;
                    y10 = 0.355;
                    circlesOpacity[7] = 1.0;
                    lineOpacity[7] = 0.0;
                    circlesOpacity[8] = 0.0;
                    lineOpacity[8] = 0.0;
                    opacityTimer.cancel();
                    // opTimer(8);
                    redBulletOpacity[15] = 1.0;
                    blackBulletOpacity[15] = 0.0;
                    redBulletOpacity[13] = 0.0;
                    // circlesOpacity[9] = 1.0;
                    // circlesOpacity[10] = 0.0;
                  } else if (indexVisibilitySlide2DH == 10 && delay) {
                    numberColor[9] = Colors.red;
                    numberOpacity[10] = 0.0;
                    x11 = 0.16;
                    y11 = 0.355;
                    circlesOpacity[8] = 1.0;
                    lineOpacity[8] = 0.0;
                    circlesOpacity[9] = 0.0;
                    lineOpacity[9] = 0.0;
                    opacityTimer.cancel();
                    // opTimer(9);
                    redBulletOpacity[13] = 1.0;
                    blackBulletOpacity[13] = 0.0;
                    redBulletOpacity[7] = 0.0;
                    // circlesOpacity[10] = 1.0;
                    // circlesOpacity[11] = 0.0;
                  } else if (indexVisibilitySlide2DH == 11 && delay) {
                    numberColor[10] = Colors.red;
                    numberOpacity[11] = 0.0;
                    x12 = 0.16;
                    y12 = 0.355;
                    circlesOpacity[9] = 1.0;
                    lineOpacity[9] = 0.0;
                    circlesOpacity[10] = 0.0;
                    lineOpacity[10] = 0.0;
                    opacityTimer.cancel();
                    // opTimer(10);
                    redBulletOpacity[7] = 1.0;
                    blackBulletOpacity[7] = 0.0;
                    redBulletOpacity[6] = 0.0;
                    // circlesOpacity[11] = 1.0;
                    // circlesOpacity[12] = 0.0;
                  } else if (indexVisibilitySlide2DH == 12 && delay) {
                    numberColor[11] = Colors.red;
                    numberOpacity[12] = 0.0;
                    x13 = 0.16;
                    y13 = 0.355;
                    circlesOpacity[10] = 1.0;
                    lineOpacity[10] = 0.0;
                    circlesOpacity[11] = 0.0;
                    lineOpacity[11] = 0.0;
                    opacityTimer.cancel();
                    // opTimer(11);
                    redBulletOpacity[6] = 1.0;
                    blackBulletOpacity[6] = 0.0;
                    redBulletOpacity[3] = 0.0;
                    // circlesOpacity[12] = 1.0;
                    // circlesOpacity[13] = 0.0;
                  } else if (indexVisibilitySlide2DH == 13 && delay) {
                    numberColor[12] = Colors.red;
                    numberOpacity[13] = 0.0;
                    x14 = 0.16;
                    y14 = 0.355;
                    circlesOpacity[11] = 1.0;
                    lineOpacity[11] = 0.0;
                    circlesOpacity[12] = 0.0;
                    lineOpacity[12] = 0.0;
                    opacityTimer.cancel();
                    // opTimer(12);
                    redBulletOpacity[3] = 1.0;
                    blackBulletOpacity[3] = 0.0;
                    redBulletOpacity[11] = 0.0;
                    // circlesOpacity[13] = 1.0;
                    // circlesOpacity[14] = 0.0;
                  } else if (indexVisibilitySlide2DH == 14 && delay) {
                    numberColor[13] = Colors.red;
                    numberOpacity[14] = 0.0;
                    x15 = 0.16;
                    y15 = 0.355;
                    circlesOpacity[12] = 1.0;
                    lineOpacity[12] = 0.0;
                    circlesOpacity[13] = 0.0;
                    lineOpacity[13] = 0.0;
                    opacityTimer.cancel();
                    // opTimer(13);
                    redBulletOpacity[11] = 1.0;
                    blackBulletOpacity[11] = 0.0;
                    redBulletOpacity[1] = 0.0;
                    // circlesOpacity[14] = 1.0;
                    // circlesOpacity[15] = 0.0;
                  } else if (indexVisibilitySlide2DH == 15 && delay) {
                    numberColor[14] = Colors.red;
                    numberOpacity[15] = 0.0;
                    x16 = 0.16;
                    y16 = 0.355;
                    circlesOpacity[13] = 1.0;
                    lineOpacity[13] = 0.0;
                    circlesOpacity[14] = 0.0;
                    lineOpacity[14] = 0.0;
                    opacityTimer.cancel();
                    // opTimer(14);
                    redBulletOpacity[1] = 1.0;
                    blackBulletOpacity[1] = 0.0;
                    redBulletOpacity[5] = 0.0;
                    // circlesOpacity[15] = 1.0;
                    // circlesOpacity[16] = 0.0;
                  } else if (indexVisibilitySlide2DH == 16 && delay) {
                    numberColor[15] = Colors.red;
                    circlesOpacity[14] = 1.0;
                    lineOpacity[14] = 0.0;
                    circlesOpacity[15] = 0.0;
                    lineOpacity[15] = 0.0;
                    opacityTimer.cancel();
                    // opTimer(15);
                    blackBulletOpacity[0] = 1.0;
                    redBulletOpacity[5] = 1.0;
                    blackBulletOpacity[5] = 0.0;
                    redBulletOpacity[0] = 0.0;
                    // circlesOpacity[16] = 1.0;
                    // circlesOpacity[17] = 0.0;
                    isLastIndex[0] = false;
                  }
                  if (indexVisibilitySlide2DH > 0 && delay) {
                    // Languages.player.play("assets/steps.mp3");
                    if (indexVisibilitySlide2DH == 0) {
                      delay = false;
                    }
                    indexVisibilitySlide2DH--;
                    stepsVisibility[0] = !stepsVisibility[0];
                    stepsVisibility[1] = !stepsVisibility[1];
                    // if (Languages.selectedLanguage) {
                    //   text =
                    //       DescListDeutchDH.slide2Desc[indexVisibilitySlide2DH];
                    // } else {
                    //   text =
                    //       DescListEnglishDH.slide2Desc[indexVisibilitySlide2DH];
                    // }
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
          Positioned(
            left: MediaQuery.of(context).size.width * 0.458,
            bottom: MediaQuery.of(context).size.height * 0.001,
            width: MediaQuery.of(context).size.width * 0.08,
            height: MediaQuery.of(context).size.height * 0.08,
            child: FloatingActionButton(
              heroTag: "middle9",
              onPressed: () => setState(
                () {
                  openIntroDialog();
                  // isPressedUp = 1;
                  // isPressedDown = 2;

                  // dropButton = !dropButton;
                  // containerSeconds = 2;
                  // desc = !desc;
                  // timerSlide2DH = Timer(
                  //   const Duration(seconds: 2),
                  //   () {
                  //     setState(
                  //       () {
                  //         descVisbility = desc;
                  //         checkVisibility = 1;
                  //       },
                  //     );
                  //   },
                  // );
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
                      // 'Settings',
                      AppLocalizations.of(context)!.settings,
                      textAlign: TextAlign.center,
                    ),
                    content: Container(
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

                    // content: SingleChildScrollView(
                    //   scrollDirection: Axis.horizontal,
                    //   child: Row(
                    //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //     children: [
                    //       Column(
                    //         crossAxisAlignment: CrossAxisAlignment.start,
                    //         children: [
                    //           const SizedBox(
                    //             height: 10,
                    //           ),
                    //           // 'Animation-Geschwindigkeit',
                    //           Text(
                    //             AppLocalizations.of(context)!.animationSpeed,
                    //           ),

                    //           const SizedBox(
                    //             height: 60,
                    //           ),
                    //           Text(
                    //             // 'Sprache'
                    //             AppLocalizations.of(context)!.appLanguage,
                    //           ),
                    //           const SizedBox(
                    //             height: 60,
                    //           ),
                    //           Text(
                    //             // 'Zoom Enable'
                    //             AppLocalizations.of(context)!.zoomEnable,
                    //           ),
                    //         ],
                    //       ),
                    //       const SizedBox(
                    //         width: 50,
                    //       ),
                    //       Column(
                    //         crossAxisAlignment: CrossAxisAlignment.start,
                    //         children: [
                    //           StatefulBuilder(
                    //             builder: (BuildContext context,
                    //                 void Function(void Function()) setState) {
                    //               return Slider(
                    //                 value: Global.val.toDouble(),
                    //                 min: 1.0,
                    //                 max: 3.0,
                    //                 divisions: 2,
                    //                 label: Global.val.toString(),
                    //                 onChanged: (double newValue) {
                    //                   setState(
                    //                     () {
                    //                       Global.val = newValue.round();

                    //                       if (Global.val == 1) {
                    //                         Global.slider = Global.val + 2;
                    //                         if (!videoButton) {
                    //                           videoTimerSlide2DH.cancel();
                    //                           videoTimerSlide2DH =
                    //                               videoTimerProblem();
                    //                         }
                    //                       } else if (Global.val == 3) {
                    //                         Global.slider = Global.val - 2;
                    //                         if (!videoButton) {
                    //                           videoTimerSlide2DH.cancel();
                    //                           videoTimerSlide2DH =
                    //                               videoTimerProblem();
                    //                         }
                    //                       } else {
                    //                         Global.slider = Global.val;
                    //                         if (!videoButton) {
                    //                           videoTimerSlide2DH.cancel();
                    //                           videoTimerSlide2DH =
                    //                               videoTimerProblem();
                    //                         }
                    //                       }
                    //                     },
                    //                   );
                    //                 },
                    //               );
                    //             },
                    //           ),
                    //           const SizedBox(
                    //             height: 25,
                    //           ),
                    //           Container(
                    //             margin: const EdgeInsets.only(left: 18.0),
                    //             child: StatefulBuilder(builder: (BuildContext
                    //                     context,
                    //                 void Function(void Function()) setState) {
                    //               return DropdownButton<String>(
                    //                 value: Global.selectedLanguage == true
                    //                     ? Global.languages[0]
                    //                     : Global.languages[1],
                    //                 elevation: 16,
                    //                 style: const TextStyle(
                    //                     color: Colors.deepPurple),
                    //                 underline: Container(
                    //                   height: 2,
                    //                   color: Colors.deepPurpleAccent,
                    //                 ),
                    //                 onChanged: (newValue) {
                    //                   setState(
                    //                     () {
                    //                       dropdownValue = newValue!;
                    //                       if (dropdownValue ==
                    //                           Global.languages[1]) {
                    //                         Global.selectedLanguage = false;
                    //                         MyApp.of(context)!.setLocale(
                    //                             const Locale.fromSubtags(
                    //                                 languageCode: 'en'));
                    //                         Global.locale = 'en';
                    //                       } else {
                    //                         Global.selectedLanguage = true;
                    //                         MyApp.of(context)!.setLocale(
                    //                             const Locale.fromSubtags(
                    //                                 languageCode: 'de'));
                    //                         Global.locale = 'de';
                    //                       }
                    //                     },
                    //                   );
                    //                   Provider.of<LanguageProvider>(context,
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
                    //             }),
                    //           ),
                    //           const SizedBox(
                    //             height: 25,
                    //           ),
                    //           Padding(
                    //             padding: const EdgeInsets.all(10.0),
                    //             child: StatefulBuilder(
                    //               builder: (BuildContext context,
                    //                   void Function(void Function())
                    //                       setState) {
                    //                 return CupertinoSwitch(
                    //                   value: Global.switchValue,
                    //                   onChanged: (value) {
                    //                     setState(() {
                    //                       Global.switchValue = value;
                    //                       Global.scaleEnabled =
                    //                           Global.switchValue;
                    //                     });
                    //                   },
                    //                 );
                    //               },
                    //             ),
                    //           ),
                    //         ],
                    //       ),
                    //     ],
                    //   ),
                    // ),
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
                    //                             videoTimerSlide2DH.cancel();
                    //                             videoTimerSlide2DH =
                    //                                 videoTimerProblem();
                    //                           }
                    //                         } else if (Languages.val == 3) {
                    //                           Languages.slider =
                    //                               Languages.val - 2;
                    //                           if (!videoButton) {
                    //                             videoTimerSlide2DH.cancel();
                    //                             videoTimerSlide2DH =
                    //                                 videoTimerProblem();
                    //                           }
                    //                         } else {
                    //                           Languages.slider = Languages.val;
                    //                           if (!videoButton) {
                    //                             videoTimerSlide2DH.cancel();
                    //                             videoTimerSlide2DH =
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
              heroTag: "stop9",
              backgroundColor: Colors.red,
              onPressed: () => setState(
                () {
                  Global.slider = 3;
                  Global.val = 1;
                  Global.replacedSliderValue = Global.slider;
                  videoTimerVariable.cancel();
                  timerSlide2DH.cancel();
                  videoTimerSlide2DH.cancel();
                  opacityTimer.cancel();
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
                    '2: ${indexVisibilitySlide2DH + 1} / 17',
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
        content: Container(
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
        content: Container(
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

  opTimer(int op, bool fromDialog) {
    int cnt = 0;
    isShown = true;
    if (!fromDialog) {
      opacityTimer = Timer.periodic(
        const Duration(seconds: 1),
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
            // 'Introduction',
            textAlign: TextAlign.center,
          ),
          content: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppLocalizations.of(context)!.intro0,
                // '- What is primitive root of prime number?',
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
                      text: AppLocalizations.of(context)!.intro1,
                      // text: '• A primitive root ',
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                    const TextSpan(
                      text: '(r)',
                      style: TextStyle(
                        color: Colors.blue,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    TextSpan(
                      text: AppLocalizations.of(context)!.intro2,
                      // text: ' is a primitive root modulo ',
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                    const TextSpan(
                      text: '(n)',
                      style: TextStyle(
                        color: Colors.blue,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    TextSpan(
                      text: AppLocalizations.of(context)!.intro3,
                      // text: ' if every number coprime to ',
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                    const TextSpan(
                      text: 'r',
                      style: TextStyle(
                        color: Colors.blue,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    WidgetSpan(
                      child: Transform.translate(
                        offset: const Offset(2, -10),
                        child: const Text(
                          '1',
                          //superscript is usually smaller in size
                          textScaleFactor: 1,
                          style: TextStyle(
                            color: Colors.blue,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                    ),
                    const TextSpan(
                      text: ' mod n, r',
                      style: TextStyle(
                        color: Colors.blue,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    WidgetSpan(
                      child: Transform.translate(
                        offset: const Offset(2, -10),
                        child: const Text(
                          '2',
                          //superscript is usually smaller in size
                          textScaleFactor: 1,
                          style: TextStyle(
                            color: Colors.blue,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                    ),
                    const TextSpan(
                      text: ' mod n, ..., r',
                      style: TextStyle(
                        color: Colors.blue,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    WidgetSpan(
                      child: Transform.translate(
                        offset: const Offset(2, -10),
                        child: const Text(
                          'n-1',
                          //superscript is usually smaller in size
                          textScaleFactor: 1,
                          style: TextStyle(
                            color: Colors.blue,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                    ),
                    // const TextSpan(
                    //   text: '(n)',
                    //   style: TextStyle(
                    //     color: Colors.blue,
                    //     fontStyle: FontStyle.italic,
                    //   ),
                    // ),
                    TextSpan(
                      text: AppLocalizations.of(context)!.intro4,
                      // text: ' is congruent to a power of ',
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                    // const TextSpan(
                    //   text: '(r)',
                    //   style: TextStyle(
                    //     color: Colors.blue,
                    //     fontStyle: FontStyle.italic,
                    //   ),
                    // ),
                    // TextSpan(
                    //   text: AppLocalizations.of(context)!.intro5,
                    //   // text: ' modulo ',
                    //   style: const TextStyle(
                    //     fontSize: 20,
                    //     color: Colors.black,
                    //   ),
                    // ),
                    // const TextSpan(
                    //   text: '(n)',
                    //   style: TextStyle(
                    //     color: Colors.blue,
                    //     fontStyle: FontStyle.italic,
                    //   ),
                    // ),
                    // const TextSpan(
                    //   text: '.',
                    //   style: TextStyle(
                    //     color: Colors.blue,
                    //     fontStyle: FontStyle.italic,
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
              // TextSpan(
              //   text: AppLocalizations.of(context)!.intro6,
              //   // text: '• In other words we can call ',
              //   style: const TextStyle(
              //     fontSize: 20,
              //     color: Colors.black,
              //   ),
              // ),
              // const TextSpan(
              //   text: '(r)',
              //   style: TextStyle(
              //     color: Colors.blue,
              //     fontStyle: FontStyle.italic,
              //   ),
              // ),
              // TextSpan(
              //   text: AppLocalizations.of(context)!.intro7,
              //   // text: ' primitive root of the prime number ',
              //   style: const TextStyle(
              //     fontSize: 20,
              //     color: Colors.black,
              //   ),
              // ),
              // const TextSpan(
              //   text: '(n)',
              //   style: TextStyle(
              //     color: Colors.blue,
              //     fontStyle: FontStyle.italic,
              //   ),
              // ),
              // TextSpan(
              //   text: AppLocalizations.of(context)!.intro8,
              //   // text: ' if ',
              //   style: const TextStyle(
              //     fontSize: 20,
              //     color: Colors.black,
              //   ),
              // ),
              // const TextSpan(
              //   text: 'r',
              //   style: TextStyle(
              //     color: Colors.blue,
              //     fontStyle: FontStyle.italic,
              //   ),
              // ),
              // WidgetSpan(
              //   child: Transform.translate(
              //     offset: const Offset(2, -10),
              //     child: const Text(
              //       '1',
              //       //superscript is usually smaller in size
              //       textScaleFactor: 1,
              //       style: TextStyle(
              //         color: Colors.blue,
              //         fontStyle: FontStyle.italic,
              //       ),
              //     ),
              //   ),
              // ),
              // const TextSpan(
              //   text: ' mod n, r',
              //   style: TextStyle(
              //     color: Colors.blue,
              //     fontStyle: FontStyle.italic,
              //   ),
              // ),
              // WidgetSpan(
              //   child: Transform.translate(
              //     offset: const Offset(2, -10),
              //     child: const Text(
              //       '2',
              //       //superscript is usually smaller in size
              //       textScaleFactor: 1,
              //       style: TextStyle(
              //         color: Colors.blue,
              //         fontStyle: FontStyle.italic,
              //       ),
              //     ),
              //   ),
              // ),
              // const TextSpan(
              //   text: ' mod n, ..., r',
              //   style: TextStyle(
              //     color: Colors.blue,
              //     fontStyle: FontStyle.italic,
              //   ),
              // ),
              // WidgetSpan(
              //   child: Transform.translate(
              //     offset: const Offset(2, -10),
              //     child: const Text(
              //       'n-1',
              //       //superscript is usually smaller in size
              //       textScaleFactor: 1,
              //       style: TextStyle(
              //         color: Colors.blue,
              //         fontStyle: FontStyle.italic,
              //       ),
              //     ),
              //   ),
              // ),
              // TextSpan(
              //   text: AppLocalizations.of(context)!.intro9,
              //   // text: ' are distinct.',
              //   style: const TextStyle(
              //     fontSize: 20,
              //     color: Colors.black,
              //   ),
              // ),
              //     ],
              //   ),
              // ),
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
                      text: AppLocalizations.of(context)!.intro10,
                      // text: '-> Example: ',
                      style: const TextStyle(
                        color: Colors.green,
                      ),
                    ),
                    TextSpan(
                      text: AppLocalizations.of(context)!.intro11,
                      // text: 'Let\'s assume that ',
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                    const TextSpan(
                      text: 'r = 2',
                      style: TextStyle(
                        color: Colors.blue,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    TextSpan(
                      text: AppLocalizations.of(context)!.intro12,
                      // text: ' and ',
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                    const TextSpan(
                      text: 'n = 5',
                      style: TextStyle(
                        color: Colors.blue,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    const TextSpan(
                      text: ' :',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                AppLocalizations.of(context)!.intro13,
                // '    After calculating the modulos, we get:',
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              RichText(
                text: TextSpan(
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                  children: [
                    const TextSpan(
                      text: '      2',
                      style: TextStyle(
                        color: Colors.purple,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    WidgetSpan(
                      child: Transform.translate(
                        offset: const Offset(2, -10),
                        child: const Text(
                          '1',
                          //superscript is usually smaller in size
                          textScaleFactor: 1,
                          style: TextStyle(
                            color: Colors.purple,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                    ),
                    const TextSpan(
                      text: ' mod 5 = 2 ',
                      style: TextStyle(
                        color: Colors.purple,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),
              ),
              RichText(
                text: TextSpan(
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                  children: [
                    const TextSpan(
                      text: '      2',
                      style: TextStyle(
                        color: Colors.purple,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    WidgetSpan(
                      child: Transform.translate(
                        offset: const Offset(2, -10),
                        child: const Text(
                          '2',
                          //superscript is usually smaller in size
                          textScaleFactor: 1,
                          style: TextStyle(
                            color: Colors.purple,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                    ),
                    const TextSpan(
                      text: ' mod 5 = 4 ',
                      style: TextStyle(
                        color: Colors.purple,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),
              ),
              RichText(
                text: TextSpan(
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                  children: [
                    const TextSpan(
                      text: '      2',
                      style: TextStyle(
                        color: Colors.purple,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    WidgetSpan(
                      child: Transform.translate(
                        offset: const Offset(2, -10),
                        child: const Text(
                          '3',
                          //superscript is usually smaller in size
                          textScaleFactor: 1,
                          style: TextStyle(
                            color: Colors.purple,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                    ),
                    const TextSpan(
                      text: ' mod 5 = 3 ',
                      style: TextStyle(
                        color: Colors.purple,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),
              ),
              RichText(
                text: TextSpan(
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                  children: [
                    const TextSpan(
                      text: '      2',
                      style: TextStyle(
                        color: Colors.purple,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    WidgetSpan(
                      child: Transform.translate(
                        offset: const Offset(2, -10),
                        child: const Text(
                          '4',
                          //superscript is usually smaller in size
                          textScaleFactor: 1,
                          style: TextStyle(
                            color: Colors.purple,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                    ),
                    const TextSpan(
                      text: ' mod 5 = 1 ',
                      style: TextStyle(
                        color: Colors.purple,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              RichText(
                text: TextSpan(
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                  children: [
                    TextSpan(
                      text: AppLocalizations.of(context)!.intro14,
                      // text: '    As we see, all results are ',
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text: AppLocalizations.of(context)!.intro15,
                      // text: ' dstinct',
                      style: const TextStyle(
                        color: Colors.purple,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    TextSpan(
                      text: AppLocalizations.of(context)!.intro16,
                      // text: ', so we can say that ',
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                    const TextSpan(
                      text: '2',
                      style: TextStyle(
                        color: Colors.purple,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    TextSpan(
                      text: AppLocalizations.of(context)!.intro17,
                      // text: ' is a primitive root of the prime number',
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                    const TextSpan(
                      text: '5',
                      style: TextStyle(
                        color: Colors.purple,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    TextSpan(
                      text: AppLocalizations.of(context)!.intro18,
                      // text: '',
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                    const TextSpan(
                      text: ' .',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                AppLocalizations.of(context)!.intro19,
                // '- Discrete Logarithm Problem:',
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
                      // ' • In a finite group, the discrete logarithm is hard to compute. Thus, the ',
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text: AppLocalizations.of(context)!.intro21,
                      // text: 'exponential function',
                      style: const TextStyle(
                        color: Colors.blue,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    TextSpan(
                      text: AppLocalizations.of(context)!.intro22,
                      // text: ' is a ',
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text: AppLocalizations.of(context)!.intro23,
                      // text: 'one-way function.',
                      style: const TextStyle(
                        color: Colors.blue,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              RichText(
                text: TextSpan(
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                  children: [
                    TextSpan(
                      text: AppLocalizations.of(context)!.intro24,
                      // text: ' • But what is one-way function?',
                      style: const TextStyle(
                        color: Colors.purple,
                      ),
                    ),
                  ],
                ),
              ),
              RichText(
                text: TextSpan(
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                  children: [
                    TextSpan(
                      text: AppLocalizations.of(context)!.intro25,
                      // text: '   -> Assuming that we have data',
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                    const TextSpan(
                      text: ' x',
                      style: TextStyle(
                        color: Colors.blue,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    TextSpan(
                      text: AppLocalizations.of(context)!.intro26,
                      // text: '. it is easy to calculate ',
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                    const TextSpan(
                      text: ' f(x)',
                      style: TextStyle(
                        color: Colors.blue,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    TextSpan(
                      text: AppLocalizations.of(context)!.intro27,
                      // '. But it is very difficult to compute its inverse function.',
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              RichText(
                text: TextSpan(
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                  children: [
                    TextSpan(
                      text: AppLocalizations.of(context)!.intro10,
                      // text: '   -> Example: ',
                      style: const TextStyle(
                        color: Colors.green,
                      ),
                    ),
                    TextSpan(
                      text: AppLocalizations.of(context)!.intro28,
                      // text: 'Let\'s take: ',
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                    const TextSpan(
                      text: 'r = 3',
                      style: TextStyle(
                        color: Colors.blue,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    TextSpan(
                      text: AppLocalizations.of(context)!.intro12,
                      // text: ' and ',
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                    const TextSpan(
                      text: 'n = 17',
                      style: TextStyle(
                        color: Colors.blue,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    const TextSpan(
                      text: ' :',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              RichText(
                text: TextSpan(
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                  children: [
                    TextSpan(
                      text: AppLocalizations.of(context)!.intro29,
                      // text: '   Computing ',
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                    const TextSpan(
                      text: '3',
                      style: TextStyle(
                        color: Colors.blue,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    WidgetSpan(
                      child: Transform.translate(
                        offset: const Offset(2, -10),
                        child: const Text(
                          '1',
                          //superscript is usually smaller in size
                          textScaleFactor: 1,
                          style: TextStyle(
                            color: Colors.blue,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                    ),
                    const TextSpan(
                      text: ' mod 17 = 3',
                      style: TextStyle(
                        color: Colors.blue,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    TextSpan(
                      text: AppLocalizations.of(context)!.intro30,
                      // ' is easy, but when we want to copute the inverse function, it will be really hard.',
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              RichText(
                text: TextSpan(
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                  children: [
                    TextSpan(
                      text: AppLocalizations.of(context)!.intro31,
                      // text: '   In other words, if we have ',
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                    const TextSpan(
                      text: '3',
                      style: TextStyle(
                        color: Colors.blue,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    WidgetSpan(
                      child: Transform.translate(
                        offset: const Offset(2, -10),
                        child: const Text(
                          'x',
                          //superscript is usually smaller in size
                          textScaleFactor: 1,
                          style: TextStyle(
                            color: Colors.blue,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                    ),
                    const TextSpan(
                      text: ' mod 17 = 3',
                      style: TextStyle(
                        color: Colors.blue,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    TextSpan(
                      text: AppLocalizations.of(context)!.intro32,
                      // text: ', it will be very hard to know the value of ',
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                    const TextSpan(
                      text: 'x',
                      style: TextStyle(
                        color: Colors.blue,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    TextSpan(
                      text: AppLocalizations.of(context)!.intro33,
                      // text: '. Where ',
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                    const TextSpan(
                      text: 'x',
                      style: TextStyle(
                        color: Colors.blue,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    TextSpan(
                      text: AppLocalizations.of(context)!.intro34,
                      // text: ' can be  ',
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                    const TextSpan(
                      text: '1, 17, 33, ..., ',
                      style: TextStyle(
                        color: Colors.blue,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    TextSpan(
                      text: AppLocalizations.of(context)!.intro35,
                      // text: '1, 17, 33, ...',
                      style: const TextStyle(
                        color: Colors.blue,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    const TextSpan(
                      text: '.',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          // content: RichText(
          //   text: TextSpan(
          //     children: [
          //       const TextSpan(
          //         text: 'ea = r',
          //       ),
          //       WidgetSpan(
          //         child: Transform.translate(
          //           offset: const Offset(2, -10),
          //           child: const Text(
          //             's_EA',
          //             //superscript is usually smaller in size
          //             textScaleFactor: 1,
          //             style: TextStyle(color: Colors.red),
          //           ),
          //         ),
          //       ),
          //       const TextSpan(
          //         text: ' mod n',
          //       ),
          //     ],
          //   ),
          // ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.pop(context, 'Ok');
                // HomePageDHState.controller.animateTo(1);
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
      int controllerIndex = (int.parse(pageController2.text)) - 1;
      int a = indexVisibilitySlide2DH;
      indexVisibilitySlide2DH = (int.parse(pageController2.text)) - 1;

      if (controllerIndex > a) {
        while (controllerIndex >= a) {
          result = (pow(3, indexVisibilitySlide2DH).toInt()) % 17;
          if (controllerIndex == 16 && delay) {
            numberColor[15] = Colors.black;
            circlesOpacity[14] = 0.0;
            lineOpacity[14] = 1.0;
            opTimer(15, true);
            blackBulletOpacity[0] = 0.0;
            redBulletOpacity[5] = 0.0;
            blackBulletOpacity[5] = 1.0;
            redBulletOpacity[0] = 1.0;
            isLastIndex[0] = true;
          } else if (controllerIndex == 15 && delay) {
            numberColor[14] = Colors.black;
            numberOpacity[15] = 1.0;
            x16 = 0.78;
            y16 = 0.52;
            circlesOpacity[13] = 0.0;
            lineOpacity[13] = 1.0;
            opTimer(14, true);
            redBulletOpacity[1] = 0.0;
            blackBulletOpacity[1] = 1.0;
            redBulletOpacity[5] = 1.0;
          } else if (controllerIndex == 14 && delay) {
            numberColor[13] = Colors.black;
            numberOpacity[14] = 1.0;
            x15 = 0.78;
            y15 = 0.115;
            circlesOpacity[12] = 0.0;
            lineOpacity[12] = 1.0;
            opTimer(13, true);
            redBulletOpacity[11] = 0.0;
            blackBulletOpacity[11] = 1.0;
            redBulletOpacity[1] = 1.0;
          } else if (controllerIndex == 13 && delay) {
            numberColor[12] = Colors.black;
            numberOpacity[13] = 1.0;
            x14 = 0.475;
            y14 = 0.311;
            circlesOpacity[11] = 0.0;
            lineOpacity[11] = 1.0;
            opTimer(12, true);
            redBulletOpacity[3] = 0.0;
            blackBulletOpacity[3] = 1.0;
            redBulletOpacity[11] = 1.0;
          } else if (controllerIndex == 12 && delay) {
            numberColor[11] = Colors.black;
            numberOpacity[12] = 1.0;
            x13 = 0.825;
            y13 = 0.31;
            circlesOpacity[10] = 0.0;
            lineOpacity[10] = 1.0;
            opTimer(11, true);
            redBulletOpacity[6] = 0.0;
            blackBulletOpacity[6] = 1.0;
            redBulletOpacity[3] = 1.0;
          } else if (controllerIndex == 11 && delay) {
            numberColor[10] = Colors.black;
            numberOpacity[11] = 1.0;
            x12 = 0.723;
            y12 = 0.57;
            circlesOpacity[9] = 0.0;
            lineOpacity[9] = 1.0;
            opTimer(10, true);
            redBulletOpacity[7] = 0.0;
            blackBulletOpacity[7] = 1.0;
            redBulletOpacity[6] = 1.0;
          } else if (controllerIndex == 10 && delay) {
            numberColor[9] = Colors.black;
            numberOpacity[10] = 1.0;
            x11 = 0.65;
            y11 = 0.59;
            circlesOpacity[8] = 0.0;
            lineOpacity[8] = 1.0;
            opTimer(9, true);
            redBulletOpacity[13] = 0.0;
            blackBulletOpacity[13] = 1.0;
            redBulletOpacity[7] = 1.0;
          } else if (controllerIndex == 9 && delay) {
            numberColor[8] = Colors.black;
            numberOpacity[9] = 1.0;
            x10 = 0.52;
            y10 = 0.11;
            circlesOpacity[7] = 0.0;
            lineOpacity[7] = 1.0;
            opTimer(8, true);
            redBulletOpacity[15] = 0.0;
            blackBulletOpacity[15] = 1.0;
            redBulletOpacity[13] = 1.0;
          } else if (controllerIndex == 8 && delay) {
            numberColor[7] = Colors.black;
            numberOpacity[8] = 1.0;
            x9 = 0.65;
            y9 = 0.035;
            circlesOpacity[6] = 0.0;
            lineOpacity[6] = 1.0;
            opTimer(7, true);
            redBulletOpacity[10] = 0.0;
            blackBulletOpacity[10] = 1.0;
            redBulletOpacity[15] = 1.0;
          } else if (controllerIndex == 7 && delay) {
            numberColor[6] = Colors.black;
            numberOpacity[7] = 1.0;
            x8 = 0.49;
            y8 = 0.42;
            circlesOpacity[5] = 0.0;
            lineOpacity[5] = 1.0;
            opTimer(6, true);
            redBulletOpacity[14] = 0.0;
            blackBulletOpacity[14] = 1.0;
            redBulletOpacity[10] = 1.0;
          } else if (controllerIndex == 6 && delay) {
            numberColor[5] = Colors.black;
            numberOpacity[6] = 1.0;
            x7 = 0.585;
            y7 = 0.052;
            circlesOpacity[4] = 0.0;
            lineOpacity[4] = 1.0;
            opTimer(5, true);
            redBulletOpacity[4] = 0.0;
            blackBulletOpacity[4] = 1.0;
            redBulletOpacity[14] = 1.0;
          } else if (controllerIndex == 5 && delay) {
            numberColor[4] = Colors.black;
            numberOpacity[5] = 1.0;
            x6 = 0.815;
            y6 = 0.42;
            circlesOpacity[3] = 0.0;
            lineOpacity[3] = 1.0;
            opTimer(4, true);
            redBulletOpacity[12] = 0.0;
            blackBulletOpacity[12] = 1.0;
            redBulletOpacity[4] = 1.0;
          } else if (controllerIndex == 4 && delay) {
            numberColor[3] = Colors.black;
            numberOpacity[4] = 1.0;
            x5 = 0.49;
            y5 = 0.2;
            circlesOpacity[2] = 0.0;
            lineOpacity[2] = 1.0;
            opTimer(3, true);
            redBulletOpacity[9] = 0.0;
            blackBulletOpacity[9] = 1.0;
            redBulletOpacity[12] = 1.0;
          } else if (controllerIndex == 3 && delay) {
            numberColor[2] = Colors.black;
            numberOpacity[3] = 1.0;
            x4 = 0.52;
            y4 = 0.5;
            circlesOpacity[1] = 0.0;
            lineOpacity[1] = 1.0;
            opTimer(2, true);
            redBulletOpacity[8] = 0.0;
            blackBulletOpacity[8] = 1.0;
            redBulletOpacity[9] = 1.0;
          } else if (controllerIndex == 2 && delay) {
            numberColor[1] = Colors.black;
            numberOpacity[2] = 1.0;
            x3 = 0.58;
            y3 = 0.57;
            circlesOpacity[0] = 0.0;
            lineOpacity[0] = 1.0;
            opTimer(1, true);
            redBulletOpacity[2] = 0.0;
            blackBulletOpacity[2] = 1.0;
            redBulletOpacity[8] = 1.0;
          } else if (controllerIndex == 1 && delay) {
            numberColor[0] = Colors.black;
            numberOpacity[1] = 1.0;
            x2 = 0.812;
            y2 = 0.2;
            opTimer(0, true);
            redBulletOpacity[0] = 0.0;
            blackBulletOpacity[0] = 1.0;
            redBulletOpacity[2] = 1.0;
          } else if (controllerIndex == 0) {
            numberOpacity[0] = 1.0;
            x1 = 0.728;
            y1 = 0.06;
            redBulletOpacity[0] = 1.0;
            numberOpacity[0] = 1.0;
            resultOpacity = 1.0;
            isLastIndex[1] = false;
          }
          controllerIndex--;
        }
      } else {
        while (a >= controllerIndex) {
          if (a == 0) {
            pageController2 = TextEditingController()
              ..text = (indexVisibilitySlide2DH + 1).toString();
            numberOpacity[0] = 0.0;
            x1 = 0.16;
            y1 = 0.355;
            redBulletOpacity[0] = 0.0;
            numberOpacity[0] = 0.0;
            resultOpacity = 0.0;
            isLastIndex[1] = true;
          } else if (a == 1 && delay) {
            numberColor[0] = Colors.red;
            numberOpacity[1] = 0.0;
            x2 = 0.16;
            y2 = 0.355;
            circlesOpacity[0] = 0.0;
            lineOpacity[0] = 0.0;
            redBulletOpacity[0] = 1.0;
            blackBulletOpacity[0] = 0.0;
            redBulletOpacity[2] = 0.0;
          } else if (a == 2 && delay) {
            numberColor[1] = Colors.red;
            numberOpacity[2] = 0.0;
            x3 = 0.16;
            y3 = 0.355;
            circlesOpacity[0] = 1.0;
            lineOpacity[0] = 0.0;
            circlesOpacity[1] = 0.0;
            lineOpacity[1] = 0.0;
            opacityTimer.cancel();
            redBulletOpacity[2] = 1.0;
            blackBulletOpacity[2] = 0.0;
            redBulletOpacity[8] = 0.0;
          } else if (a == 3 && delay) {
            numberColor[2] = Colors.red;
            numberOpacity[3] = 0.0;
            x4 = 0.16;
            y4 = 0.355;
            circlesOpacity[1] = 1.0;
            lineOpacity[1] = 0.0;
            circlesOpacity[2] = 0.0;
            lineOpacity[2] = 0.0;
            opacityTimer.cancel();
            redBulletOpacity[8] = 1.0;
            blackBulletOpacity[8] = 0.0;
            redBulletOpacity[9] = 0.0;
          } else if (a == 4 && delay) {
            numberColor[3] = Colors.red;
            numberOpacity[4] = 0.0;
            x5 = 0.16;
            y5 = 0.355;
            circlesOpacity[2] = 1.0;
            lineOpacity[2] = 0.0;
            circlesOpacity[3] = 0.0;
            lineOpacity[3] = 0.0;
            opacityTimer.cancel();
            redBulletOpacity[9] = 1.0;
            blackBulletOpacity[9] = 0.0;
            redBulletOpacity[12] = 0.0;
          } else if (a == 5 && delay) {
            numberColor[4] = Colors.red;
            numberOpacity[5] = 0.0;
            x6 = 0.16;
            y6 = 0.355;
            circlesOpacity[3] = 1.0;
            lineOpacity[3] = 0.0;
            circlesOpacity[4] = 0.0;
            lineOpacity[4] = 0.0;
            opacityTimer.cancel();
            redBulletOpacity[12] = 1.0;
            blackBulletOpacity[12] = 0.0;
            redBulletOpacity[4] = 0.0;
          } else if (a == 6 && delay) {
            numberColor[5] = Colors.red;
            numberOpacity[6] = 0.0;
            x7 = 0.16;
            y7 = 0.355;
            circlesOpacity[4] = 1.0;
            lineOpacity[4] = 0.0;
            circlesOpacity[5] = 0.0;
            lineOpacity[5] = 0.0;
            opacityTimer.cancel();
            redBulletOpacity[4] = 1.0;
            blackBulletOpacity[4] = 0.0;
            redBulletOpacity[14] = 0.0;
          } else if (a == 7 && delay) {
            numberColor[6] = Colors.red;
            numberOpacity[7] = 0.0;
            x8 = 0.16;
            y8 = 0.355;
            circlesOpacity[5] = 1.0;
            lineOpacity[5] = 0.0;
            circlesOpacity[6] = 0.0;
            lineOpacity[6] = 0.0;
            opacityTimer.cancel();
            redBulletOpacity[14] = 1.0;
            blackBulletOpacity[14] = 0.0;
            redBulletOpacity[10] = 0.0;
          } else if (a == 8 && delay) {
            numberColor[7] = Colors.red;
            numberOpacity[8] = 0.0;
            x9 = 0.16;
            y9 = 0.355;
            circlesOpacity[6] = 1.0;
            lineOpacity[6] = 0.0;
            circlesOpacity[7] = 0.0;
            lineOpacity[7] = 0.0;
            opacityTimer.cancel();
            redBulletOpacity[10] = 1.0;
            blackBulletOpacity[10] = 0.0;
            redBulletOpacity[15] = 0.0;
          } else if (a == 9 && delay) {
            numberColor[8] = Colors.red;
            numberOpacity[9] = 0.0;
            x10 = 0.16;
            y10 = 0.355;
            circlesOpacity[7] = 1.0;
            lineOpacity[7] = 0.0;
            circlesOpacity[8] = 0.0;
            lineOpacity[8] = 0.0;
            opacityTimer.cancel();
            redBulletOpacity[15] = 1.0;
            blackBulletOpacity[15] = 0.0;
            redBulletOpacity[13] = 0.0;
          } else if (a == 10 && delay) {
            numberColor[9] = Colors.red;
            numberOpacity[10] = 0.0;
            x11 = 0.16;
            y11 = 0.355;
            circlesOpacity[8] = 1.0;
            lineOpacity[8] = 0.0;
            circlesOpacity[9] = 0.0;
            lineOpacity[9] = 0.0;
            opacityTimer.cancel();
            redBulletOpacity[13] = 1.0;
            blackBulletOpacity[13] = 0.0;
            redBulletOpacity[7] = 0.0;
          } else if (a == 11 && delay) {
            numberColor[10] = Colors.red;
            numberOpacity[11] = 0.0;
            x12 = 0.16;
            y12 = 0.355;
            circlesOpacity[9] = 1.0;
            lineOpacity[9] = 0.0;
            circlesOpacity[10] = 0.0;
            lineOpacity[10] = 0.0;
            opacityTimer.cancel();
            redBulletOpacity[7] = 1.0;
            blackBulletOpacity[7] = 0.0;
            redBulletOpacity[6] = 0.0;
          } else if (a == 12 && delay) {
            numberColor[11] = Colors.red;
            numberOpacity[12] = 0.0;
            x13 = 0.16;
            y13 = 0.355;
            circlesOpacity[10] = 1.0;
            lineOpacity[10] = 0.0;
            circlesOpacity[11] = 0.0;
            lineOpacity[11] = 0.0;
            opacityTimer.cancel();
            redBulletOpacity[6] = 1.0;
            blackBulletOpacity[6] = 0.0;
            redBulletOpacity[3] = 0.0;
          } else if (a == 13 && delay) {
            numberColor[12] = Colors.red;
            numberOpacity[13] = 0.0;
            x14 = 0.16;
            y14 = 0.355;
            circlesOpacity[11] = 1.0;
            lineOpacity[11] = 0.0;
            circlesOpacity[12] = 0.0;
            lineOpacity[12] = 0.0;
            opacityTimer.cancel();
            redBulletOpacity[3] = 1.0;
            blackBulletOpacity[3] = 0.0;
            redBulletOpacity[11] = 0.0;
          } else if (a == 14 && delay) {
            numberColor[13] = Colors.red;
            numberOpacity[14] = 0.0;
            x15 = 0.16;
            y15 = 0.355;
            circlesOpacity[12] = 1.0;
            lineOpacity[12] = 0.0;
            circlesOpacity[13] = 0.0;
            lineOpacity[13] = 0.0;
            opacityTimer.cancel();
            redBulletOpacity[11] = 1.0;
            blackBulletOpacity[11] = 0.0;
            redBulletOpacity[1] = 0.0;
          } else if (a == 15 && delay) {
            numberColor[14] = Colors.red;
            numberOpacity[15] = 0.0;
            x16 = 0.16;
            y16 = 0.355;
            circlesOpacity[13] = 1.0;
            lineOpacity[13] = 0.0;
            circlesOpacity[14] = 0.0;
            lineOpacity[14] = 0.0;
            opacityTimer.cancel();
            redBulletOpacity[1] = 1.0;
            blackBulletOpacity[1] = 0.0;
            redBulletOpacity[5] = 0.0;
          } else if (a == 16 && delay) {
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
          a--;
        }
      }
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
}
