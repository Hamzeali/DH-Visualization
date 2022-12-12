// ignore_for_file: file_names

import 'dart:async';
import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:showcaseview/showcaseview.dart';

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
// import 'dart:html';

class Slide1DH extends StatefulWidget {
  const Slide1DH({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  Slide1DHState createState() => Slide1DHState();
}

bool isShowCaseFinished = false;
final menuKey = GlobalKey();
final leftBtnKey = GlobalKey();
final righBtnKey = GlobalKey();
final middleBtnKey = GlobalKey();
final moreBtnKey = GlobalKey();
final playBtnKey = GlobalKey();
final resetBtnKey = GlobalKey();
final settingsBtnKey = GlobalKey();
final pageNumberKey = GlobalKey();
final scrollController = ScrollController();
List isLastIndex = [false, true];
bool scaleEnabledOldVal = false;
bool switchOldValue = false;
bool firstBuild = true;
double screenHeight = 0;
double screenWidth = 0;
var bigHeight = screenHeight * 1.5;
var bigWidth = screenWidth * 1.5;
double containerHeight = screenHeight;
double containerWidth = screenWidth;
var height = 378;
var width = 982;

bool isResizing = false;
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
Timer pageNumberTimer = Timer(Duration(seconds: seconds), () {});
Timer timerSlide1DH = Timer(Duration(seconds: seconds), () {});
Timer videoTimerSlide1DH =
    Timer.periodic(Duration(seconds: Global.slider), (videoTimer) {});

TextEditingController pageController1 = TextEditingController()
  ..text = (indexVisibilitySlide1DH + 1).toString();

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

List<GlobalKey<State<StatefulWidget>>> keys = [
  menuKey,
  leftBtnKey,
  righBtnKey,
  Description.descBoxKey,
  middleBtnKey,
  moreBtnKey,
  playBtnKey,
  resetBtnKey,
  settingsBtnKey,
  pageNumberKey,
];

class Slide1DHState extends State<Slide1DH>
    with SingleTickerProviderStateMixin, WidgetsBindingObserver {
  // testPrint() {
  //   WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
  //     setState(() {});
  //   });

  //   print('testPrint');
  // }
  finishShowCase() {
    setState(() {
      isShowCaseFinished = true;
    });
  }

  pressMoreBtn() {
    setState(
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
    );
  }

  // static FloatingActionButton moreBtn = FloatingActionButton(
  //   onPressed: () {},
  // );

  setFirstLunch(bool firstLunch) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool("isFirstLunch", firstLunch);
  }

  getFirstLunch() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    var isFirstRun = pref.getBool("isFirstLunch");
    if (isFirstRun == null) {
      startShowCase();
    }
  }

  startShowCase() {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        ShowCaseWidget.of(context).startShowCase(
          keys,
        );
      },
    );
  }

  setLanguage(String language) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString("appLanguage", language);
  }

  getLanguage() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    var appLang = pref.getString("appLanguage");
    if (appLang != null) {
      Global.locale = appLang;
    }

    if (appLang == "en") {
      Global.selectedLanguage = false;
      DHKEVis.of(context)!
          .setLocale(const Locale.fromSubtags(languageCode: 'en'));
      Global.locale = 'en';
    } else {
      Global.selectedLanguage = true;
      DHKEVis.of(context)!
          .setLocale(const Locale.fromSubtags(languageCode: 'de'));
      Global.locale = 'de';
    }
  }

  @override
  void initState() {
    getFirstLunch();
    setFirstLunch(true);
    getLanguage();

    // WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
    //   showDialog(
    //     context: context,
    //     builder: (context) {
    //       return const AlertDialog(
    //         shape: RoundedRectangleBorder(
    //             borderRadius: BorderRadius.all(Radius.circular(32.0))),
    //         backgroundColor: Colors.blue,
    //         content: Text(
    //           'Grundidee kann mit Farben dargestellt werden (später werden wir sehen, wie es mit Zahlen funktioniert)',
    //           style: TextStyle(
    //             fontSize: 20,
    //             color: Colors.white,
    //           ),
    //         ),
    //       );
    //     },
    //   );
    // });

    // pressMoreBtn();
    // WidgetsBinding.instance.addPostFrameCallback((_) async {
    //   moreBtn = FloatingActionButton(
    //     heroTag: "more9",
    //     onPressed: () => setState(
    //       () {
    //         isSettingsPressed = 1;
    //         settingButton = !settingButton;
    //         if (!settingButton) {
    //           settingsStopButton = 0.35;
    //           settingsVideoButton = 0.24;
    //           advancedSettingsButton = 0.46;
    //           settingsButtonDuration = 100;
    //           backToZero = 1;
    //         } else {
    //           settingsStopButton = 0.13;
    //           settingsVideoButton = 0.13;
    //           advancedSettingsButton = 0.13;
    //           settingsButtonDuration = 100;
    //           backToZero = 1;
    //         }

    //         timerSlide1DH = Timer(
    //           const Duration(milliseconds: 100),
    //           () {
    //             setState(
    //               () {
    //                 checkSettingsDuration = 1;
    //               },
    //             );
    //           },
    //         );
    //       },
    //     ),
    //     child: settingButton
    //         ? Icon(Icons.more_vert,
    //             size: MediaQuery.of(context).size.height * 0.05)
    //         : Icon(Icons.close,
    //             size: MediaQuery.of(context).size.height * 0.05),
    //   );
    // });

    WidgetsBinding.instance.addObserver(this);
    // WidgetsBinding.instance.addPostFrameCallback(
    //   (_) {
    //     ShowCaseWidget.of(context).startShowCase(
    //       keys,
    //     );
    //   },
    // );

    super.initState();
  }

  @override
  void didChangeMetrics() {
    // final RenderBox renderBox = _key.currentContext.findRenderObject();
    // final position = renderBox.localToGlobal(Offset.zero);
    isResizing = true;
    if (screenHeight <= height) {
      containerHeight = bigHeight;
    } else {
      containerHeight = screenHeight;
    }
    if (screenWidth <= width) {
      containerWidth = bigWidth;
    } else {
      containerWidth = screenWidth;
    }
  }

  @override
  // ignore: must_call_super
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    videoTimerVariable.cancel();
    videoTimerProblem().cancel();
    timerSlide1DH.cancel();
    videoTimerSlide1DH.cancel();
    delayTimer.cancel();
    delayTimer2.cancel();
    pageNumberTimer.cancel();
    selectPageNumber(0, 0).cancel();
    isLastIndex = [false, true];
    indexVisibilitySlide1DH = -1;
    pageController1 = TextEditingController()..text = (0).toString();
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

  Timer selectPageNumber(int a, int sec) {
    // stopFunction();
    pageNumberTimer = Timer.periodic(
      Duration(seconds: sec),
      (Timer pageNumberTimer) {
        setState(
          () {
            if (sec == 0) {
              delay = true;
            }
            seconds = 0;
            if (indexVisibilitySlide1DH == a) {
              pageNumberTimer.cancel();
            }
            if (indexVisibilitySlide1DH < a && delay) {
              // Languages.player.play("assets/steps.mp3");
              indexVisibilitySlide1DH++;
              stepsVisibility[0] = !stepsVisibility[0];
              stepsVisibility[1] = !stepsVisibility[1];
            }
            if (indexVisibilitySlide1DH == 0) {
              contentOpacity[0] = 1.0;
              isLastIndex[1] = false;
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
              // delay = false;
              delayTimer = Timer(Duration(seconds: sec == 0 ? 0 : seconds), () {
                setState(() {
                  contentOpacity[0] = 0.0;
                  contentOpacity[4] = 0.0;
                  contentOpacity[6] = 0.0;
                  contentOpacity[7] = 1.0;
                  delayTimer.cancel();
                });
              });
              delayTimer2 =
                  Timer(Duration(seconds: sec == 0 ? 0 : seconds * 2), () {
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
              // delay = false;
              delayTimer = Timer(Duration(seconds: sec == 0 ? 0 : seconds), () {
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
              isLastIndex[0] = true;
              contentOpacity[6] = 0.0;
              contentOpacity[8] = 0.0;
              contentOpacity[10] = 1.0;
              // delay = false;
              delayTimer = Timer(Duration(seconds: sec == 0 ? 0 : seconds), () {
                setState(() {
                  // contentOpacity[6] = 0.0;
                  // contentOpacity[8] = 0.0;
                  // contentOpacity[10] = 1.0;
                  delay = true;
                  delayTimer.cancel();
                });
              });
            }
          },
        );
      },
    );
    return pageNumberTimer;
  }

  Timer videoTimerProblem() {
    videoTimerVariable = Timer.periodic(
      Duration(seconds: seconds),
      (Timer videoTimerVariable) {
        setState(
          () {
            seconds = Global.slider;
            if (indexVisibilitySlide1DH == 6) {
              openDialog(false);

              videoTimerVariable.cancel();
            }
            if (indexVisibilitySlide1DH < 6 && delay) {
              // Languages.player.play("assets/steps.mp3");
              indexVisibilitySlide1DH++;
              pageController1 = TextEditingController()
                ..text = (indexVisibilitySlide1DH + 1).toString();
              stepsVisibility[0] = !stepsVisibility[0];
              stepsVisibility[1] = !stepsVisibility[1];
            }
            if (indexVisibilitySlide1DH == 0) {
              contentOpacity[0] = 1.0;
              isLastIndex[1] = false;
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
              isLastIndex[0] = true;
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
    // moreBtn = FloatingActionButton(
    //   heroTag: "more9",
    //   onPressed: () => setState(
    //     () {
    //       isSettingsPressed = 1;
    //       settingButton = !settingButton;
    //       if (!settingButton) {
    //         settingsStopButton = 0.35;
    //         settingsVideoButton = 0.24;
    //         advancedSettingsButton = 0.46;
    //         settingsButtonDuration = 100;
    //         backToZero = 1;
    //       } else {
    //         settingsStopButton = 0.13;
    //         settingsVideoButton = 0.13;
    //         advancedSettingsButton = 0.13;
    //         settingsButtonDuration = 100;
    //         backToZero = 1;
    //       }

    //       timerSlide1DH = Timer(
    //         const Duration(milliseconds: 100),
    //         () {
    //           setState(
    //             () {
    //               checkSettingsDuration = 1;
    //             },
    //           );
    //         },
    //       );
    //     },
    //   ),
    //   child: settingButton
    //       ? Icon(Icons.more_vert,
    //           size: MediaQuery.of(context).size.height * 0.05)
    //       : Icon(Icons.close, size: MediaQuery.of(context).size.height * 0.05),
    // );
    // if (context.watch<LanguageProvider>().isMorePressed) {
    //   Slide1DHState.moreBtn.onPressed!.call();
    //   Provider.of<LanguageProvider>(context, listen: false)
    //       .changeIsMorePressed(false);
    // }
    // Timer(const Duration(milliseconds: 100), () {
    //   setState(() {
    //     isResizing = false;
    //   });
    // });
    screenHeight = ((MediaQuery.of(context).size.height) -
        (HomePageDHState.returnAppBar[1]));
    screenWidth = MediaQuery.of(context).size.width;
    if (firstBuild) {
      if (screenHeight <= height) {
        containerHeight = bigHeight;
      } else {
        containerHeight = screenHeight;
      }
      if (screenWidth <= width) {
        containerWidth = bigWidth;
      } else {
        containerWidth = screenWidth;
      }
      firstBuild = false;
    }

    text = translate(context, indexVisibilitySlide1DH);

    //print(screenWidth);
    //print(screenHight);

    // double windowHight = (window.screen?.height)!.toDouble();
    // double windowWidth = (window.screen?.width)!.toDouble();
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
    final _verticalScrollController = ScrollController();
    final _horizontalScrollController = ScrollController();
    return InteractiveViewer(
      panEnabled: true,
      scaleEnabled: Global.scaleEnabled,
      maxScale: 4,
      child: Container(
        color: Colors.white,
        // child: AdaptiveScrollbar(
        //   sliderDefaultColor: Colors.grey.withOpacity(0.7),
        //   sliderActiveColor: Colors.grey,
        //   controller: _verticalScrollController,
        //   child: AdaptiveScrollbar(
        //     underColor: Colors.blueGrey.withOpacity(0.3),
        //     sliderDefaultColor: Colors.grey.withOpacity(0.7),
        //     sliderActiveColor: Colors.grey,
        //     controller: _horizontalScrollController,
        //     position: ScrollbarPosition.bottom,
        //     child: SingleChildScrollView(
        //       controller: _verticalScrollController,
        //       scrollDirection: Axis.vertical,
        //       child: SingleChildScrollView(
        //         controller: _horizontalScrollController,
        //         scrollDirection: Axis.horizontal,
        child: Stack(
          children: [
            Container(
              height: containerHeight,
              width: containerWidth,
            ),
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

            arrowPosition(
                p1x: -0.28,
                p1y: 0.17,
                p2x: 0.22,
                p2y: 0.17,
                opacity: contentOpacity[2]),

            // Right-Arrow-horizontal-Image Position
            // Visibility(
            //   visible: colorsVisibility[1],
            //   child: MyPositioned(
            //     true,
            //     false,
            //     false,
            //     false,
            //     0.26,
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
              p1x: -0.025,
              p1y: indexVisibilitySlide1DH == 4 ? 0.22 : 0.17,
              p2x: -0.025,
              p2y: 0.36,
              opacity: contentOpacity[2],
            ),

            // Arrow-vertical-Image Position
            // Visibility(
            //   visible: colorsVisibility[1],
            //   child: MyPositioned(
            //     true,
            //     false,
            //     false,
            //     false,
            //     0.265,
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
              p1x: 0.22,
              p1y: 0.22,
              p2x: -0.28,
              p2y: 0.22,
              opacity: contentOpacity[11],
            ),

            // Left-Arrow-horizontal-Image Position
            // Visibility(
            //   visible: colorsVisibility[3],
            //   child: MyPositioned(
            //     true,
            //     false,
            //     false,
            //     false,
            //     0.29,
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
            //     contentOpacity[11],
            //   ),
            // ),

            bulletPosition(0.3, 0.505, 1.0, Colors.white,
                indexVisibilitySlide1DH < 4 ? true : false),
            bulletPosition(0.35, 0.505, 1.0, Colors.white, true),
            bulletPosition(0.4, 0.505, 1.0, Colors.white, true),

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
                0.065, //0.08,
                0.085, //0.1,
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
                0.313, //0.3,
                0.0,
                0.0,
                0.065, //0.08,
                0.085, //0.1,
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
                0.247, //0.221,
                0.0,
                0.0,
                0.065, //0.08,
                0.085, //0.1,
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
                      // fontSize: MediaQuery.of(context).size.width * longWidth,
                      fontSize: MediaQuery.of(context).size.width * 0.04,
                    ),
                  ),
                ),
              ),
            ),

            // description
            Description(desc, text, descVisbility, containerSeconds,
                HomePageDHState.returnAppBar[1], true),

            // Right-Button
            Positioned(
              right: MediaQuery.of(context).size.width * 0.01,
              bottom: MediaQuery.of(context).size.height * 0.02,
              // width: isShowCaseFinished
              //     ? MediaQuery.of(context).size.width * 0.1
              //     : 56.0,
              // height: isShowCaseFinished
              //     ? MediaQuery.of(context).size.height * 0.1
              //     : 56.0,
              width: MediaQuery.of(context).size.width * 0.1,
              height: MediaQuery.of(context).size.height * 0.1,
              child: Showcase(
                key: righBtnKey,
                description: AppLocalizations.of(context)!.showCase0,
                descTextStyle: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
                tooltipBackgroundColor: Colors.blue,
                targetShapeBorder: const CircleBorder(),
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
                          videoTimerSlide1DH.cancel();
                        }
                        videoButton = true;
                        seconds = Global.slider;
                        if (indexVisibilitySlide1DH == 6) {
                          openDialog(false);
                        }

                        if (indexVisibilitySlide1DH < 6 && delay) {
                          // Languages.player.play("assets/steps.mp3");
                          indexVisibilitySlide1DH++;
                          pageController1 = TextEditingController()
                            ..text = (indexVisibilitySlide1DH + 1).toString();
                          stepsVisibility[0] = !stepsVisibility[0];
                          stepsVisibility[1] = !stepsVisibility[1];
                        }
                        if (indexVisibilitySlide1DH == 0) {
                          isLastIndex[1] = false;
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
                          delayTimer2 =
                              Timer(Duration(seconds: seconds * 2), () {
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
                          isLastIndex[0] = true;
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
                    );
                  },
                  child: Icon(Icons.arrow_forward,
                      size: MediaQuery.of(context).size.height * 0.06),
                ),
              ),
            ),

            // Left-Button
            Positioned(
              left: MediaQuery.of(context).size.width * 0.01,
              bottom: MediaQuery.of(context).size.height * 0.02,
              // width: isShowCaseFinished
              //     ? MediaQuery.of(context).size.width * 0.1
              //     : 56.0,
              // height: isShowCaseFinished
              //     ? MediaQuery.of(context).size.height * 0.1
              //     : 56.0,
              width: MediaQuery.of(context).size.width * 0.1,
              height: MediaQuery.of(context).size.height * 0.1,
              child: Showcase(
                key: leftBtnKey,
                description: AppLocalizations.of(context)!.showCase1,
                descTextStyle: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
                tooltipBackgroundColor: Colors.blue,
                tooltipPadding: const EdgeInsets.all(12),
                // tooltipBorderRadius: BorderRadius.all(Radius.circular(20)),
                targetShapeBorder: const CircleBorder(),
                // targetPadding: EdgeInsets.all(
                //   -(MediaQuery.of(context).size.width * 0.07),
                // ),
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
                          videoTimerSlide1DH.cancel();
                        }
                        videoButton = true;

                        seconds = Global.slider;
                        if (indexVisibilitySlide1DH == -1) {
                          openDialog(true);
                        }
                        if (indexVisibilitySlide1DH == 0) text = '';

                        if (indexVisibilitySlide1DH == 0) {
                          // Languages.player.play("assets/steps.mp3");
                          indexVisibilitySlide1DH--;
                          pageController1 = TextEditingController()
                            ..text = (indexVisibilitySlide1DH + 1).toString();
                          contentOpacity[0] = 0.0;
                          stepsVisibility[0] = !stepsVisibility[0];
                          stepsVisibility[1] = !stepsVisibility[1];
                          isLastIndex[1] = true;
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
                          pageController1 = TextEditingController()
                            ..text = (indexVisibilitySlide1DH + 1).toString();
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
                          pageController1 = TextEditingController()
                            ..text = (indexVisibilitySlide1DH + 1).toString();
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
                          pageController1 = TextEditingController()
                            ..text = (indexVisibilitySlide1DH + 1).toString();
                          stepsVisibility[0] = !stepsVisibility[0];
                          stepsVisibility[1] = !stepsVisibility[1];
                          isLastIndex[0] = false;
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
            ),

            // Middle-Button
            Positioned(
              left: MediaQuery.of(context).size.width * 0.458,
              bottom: MediaQuery.of(context).size.height * 0.001,
              // width: isShowCaseFinished
              //     ? MediaQuery.of(context).size.width * 0.08
              //     : 56.0,
              // height: isShowCaseFinished
              //     ? MediaQuery.of(context).size.height * 0.08
              //     : 56.0,
              width: MediaQuery.of(context).size.width * 0.08,
              height: MediaQuery.of(context).size.height * 0.08,
              child: Showcase(
                key: middleBtnKey,
                description: AppLocalizations.of(context)!.showCase2,
                descTextStyle: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
                tooltipBackgroundColor: Colors.blue,
                tooltipPadding: const EdgeInsets.all(12),
                targetShapeBorder: const CircleBorder(),
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
            ),

            // Advanced-Setting-Button

            AnimatedPositioned(
              right: MediaQuery.of(context).size.width * 0.01,
              bottom:
                  MediaQuery.of(context).size.height * advancedSettingsButton,
              // width: isShowCaseFinished
              //     ? MediaQuery.of(context).size.width * 0.1
              //     : 56.0,
              // height: isShowCaseFinished
              //     ? MediaQuery.of(context).size.height * 0.1
              //     : 56.0,

              width: MediaQuery.of(context).size.width * 0.1,
              height: MediaQuery.of(context).size.height * 0.1,

              duration: Duration(
                  milliseconds: settingsButtonDuration + 200 * backToZero),
              child: Showcase(
                key: settingsBtnKey,
                description: AppLocalizations.of(context)!.showCase3,
                descTextStyle: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
                tooltipBackgroundColor: Colors.blue,
                tooltipPadding: const EdgeInsets.all(12),
                targetShapeBorder: const CircleBorder(),
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
                            borderRadius:
                                BorderRadius.all(Radius.circular(32.0))),
                        title: Text(
                          // 'Settings'
                          AppLocalizations.of(context)!.settings,
                          textAlign: TextAlign.center,
                        ),
                        content: Container(
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
                                                  Global.selectedLanguage =
                                                      false;
                                                  DHKEVis.of(context)!
                                                      .setLocale(const Locale
                                                              .fromSubtags(
                                                          languageCode: 'en'));
                                                  Global.locale = 'en';
                                                  setLanguage('en');
                                                } else {
                                                  Global.selectedLanguage =
                                                      true;
                                                  DHKEVis.of(context)!
                                                      .setLocale(const Locale
                                                              .fromSubtags(
                                                          languageCode: 'de'));
                                                  Global.locale = 'de';
                                                  setLanguage('de');
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
                                  false,
                                ),
                                _buildRow(
                                  AppLocalizations.of(context)!.zoomEnable,
                                  StatefulBuilder(
                                    builder: (BuildContext context,
                                        void Function(void Function())
                                            setState) {
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
                        //     crossAxisAlignment: CrossAxisAlignment.start,
                        //     children: [
                        //       Column(
                        //         crossAxisAlignment: CrossAxisAlignment.start,
                        //         children: [
                        //           const SizedBox(
                        //             height: 10,
                        //           ),
                        //           // 'Animation-Geschwindigkeit',
                        //           Text(
                        //             AppLocalizations.of(context)!
                        //                 .animationSpeed,
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
                        //                 void Function(void Function())
                        //                     setState) {
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
                        //                           videoTimerSlide1DH.cancel();
                        //                           videoTimerSlide1DH =
                        //                               videoTimerProblem();
                        //                         }
                        //                       } else if (Global.val == 3) {
                        //                         Global.slider = Global.val - 2;
                        //                         if (!videoButton) {
                        //                           videoTimerSlide1DH.cancel();
                        //                           videoTimerSlide1DH =
                        //                               videoTimerProblem();
                        //                         }
                        //                       } else {
                        //                         Global.slider = Global.val;
                        //                         if (!videoButton) {
                        //                           videoTimerSlide1DH.cancel();
                        //                           videoTimerSlide1DH =
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
                        //             child: StatefulBuilder(builder:
                        //                 (BuildContext context,
                        //                     void Function(void Function())
                        //                         setState) {
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
            ),

            // Video-Stop-Button

            AnimatedPositioned(
              right: MediaQuery.of(context).size.width * 0.01,
              bottom: MediaQuery.of(context).size.height * settingsStopButton,
              // width: isShowCaseFinished
              //     ? MediaQuery.of(context).size.width * 0.1
              //     : 56.0,
              // height: isShowCaseFinished
              //     ? MediaQuery.of(context).size.height * 0.1
              //     : 56.0,

              width: MediaQuery.of(context).size.width * 0.1,
              height: MediaQuery.of(context).size.height * 0.1,
              duration: Duration(
                  milliseconds: settingsButtonDuration + 100 * backToZero),
              child: Showcase(
                key: resetBtnKey,
                description: AppLocalizations.of(context)!.showCase4,
                descTextStyle: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
                tooltipBackgroundColor: Colors.blue,
                tooltipPadding: const EdgeInsets.all(12),
                targetShapeBorder: const CircleBorder(),
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
                      delayTimer.cancel();
                      isLastIndex = [false, true];
                      indexVisibilitySlide1DH = -1;
                      pageController1 = TextEditingController()
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
                      turquoisePosition = 0.61;
                      redPosition = 0.6;
                      seconds = 0;
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
            ),

            // Video-Play-Button

            AnimatedPositioned(
              right: MediaQuery.of(context).size.width * 0.01,
              bottom: MediaQuery.of(context).size.height * settingsVideoButton,
              // width: isShowCaseFinished
              //     ? MediaQuery.of(context).size.width * 0.1
              //     : 56.0,
              // height: isShowCaseFinished
              //     ? MediaQuery.of(context).size.height * 0.1
              //     : 56.0,

              width: MediaQuery.of(context).size.width * 0.1,
              height: MediaQuery.of(context).size.height * 0.1,
              duration: Duration(milliseconds: settingsButtonDuration),
              child: Showcase(
                key: playBtnKey,
                description: AppLocalizations.of(context)!.showCase5,
                descTextStyle: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
                tooltipBackgroundColor: Colors.blue,
                tooltipPadding: const EdgeInsets.all(12),
                targetShapeBorder: const CircleBorder(),
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
            ),

            // More-Button

            Positioned(
              right: MediaQuery.of(context).size.width * 0.01,
              bottom: MediaQuery.of(context).size.height * 0.13,
              // width: isShowCaseFinished
              //     ? MediaQuery.of(context).size.width * 0.1
              //     : 56.0,
              // height: isShowCaseFinished
              //     ? MediaQuery.of(context).size.height * 0.1
              //     : 56.0,

              width: MediaQuery.of(context).size.width * 0.1,
              height: MediaQuery.of(context).size.height * 0.1,
              child: Showcase(
                key: moreBtnKey,
                description: AppLocalizations.of(context)!.showCase6,
                descTextStyle: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
                tooltipBackgroundColor: Colors.blue,
                tooltipPadding: const EdgeInsets.all(12),
                targetShapeBorder: const CircleBorder(),
                child: FloatingActionButton(
                  heroTag: "more9",
                  onPressed: pressMoreBtn,
                  // () => setState(
                  //   () {
                  //     isSettingsPressed = 1;
                  //     settingButton = !settingButton;
                  //     if (!settingButton) {
                  //       settingsStopButton = 0.35;
                  //       settingsVideoButton = 0.24;
                  //       advancedSettingsButton = 0.46;
                  //       settingsButtonDuration = 100;
                  //       backToZero = 1;
                  //     } else {
                  //       settingsStopButton = 0.13;
                  //       settingsVideoButton = 0.13;
                  //       advancedSettingsButton = 0.13;
                  //       settingsButtonDuration = 100;
                  //       backToZero = 1;
                  //     }

                  //     timerSlide1DH = Timer(
                  //       const Duration(milliseconds: 100),
                  //       () {
                  //         setState(
                  //           () {
                  //             checkSettingsDuration = 1;
                  //           },
                  //         );
                  //       },
                  //     );
                  //   },
                  // ),
                  child: settingButton
                      ? Icon(Icons.more_vert,
                          size: MediaQuery.of(context).size.height * 0.05)
                      : Icon(Icons.close,
                          size: MediaQuery.of(context).size.height * 0.05),
                ),
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
                  child: Showcase(
                    key: pageNumberKey,
                    description: AppLocalizations.of(context)!.showCase7,
                    descTextStyle: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                    tooltipBackgroundColor: Colors.blue,
                    tooltipPadding: const EdgeInsets.all(12),
                    // tooltipBorderRadius: BorderRadius.all(Radius.circular(20)),
                    targetShapeBorder: const CircleBorder(),
                    // targetPadding: EdgeInsets.all(
                    //   -(MediaQuery.of(context).size.width * 0.07),
                    // ),
                    child: TextButton(
                      onPressed: () {
                        numberPageDialog();
                      },
                      child: Text(
                        '1: ${indexVisibilitySlide1DH + 1} / 7',
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
            ),
          ],
        ),
        // ),
        // ),
        // ),
        // ),
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
                    ? AppLocalizations.of(context)!.lastLeft
                    : AppLocalizations.of(context)!.lastRight,
                textAlign: TextAlign.left,
              ),
            ),
          ],
        ),
        content: Container(
          height: 5,
          width: 300.0,
        ),
        actions: isLeft
            ? <Widget>[
                TextButton(
                  onPressed: () {
                    Navigator.pop(context, 'OK');
                  },
                  child: const Text('OK'),
                ),
              ]
            : <Widget>[
                TextButton(
                  onPressed: () {
                    Navigator.pop(context, 'OK');
                    HomePageDHState.controller.animateTo(1);
                  },
                  child:
                      Text(isLeft ? 'OK' : AppLocalizations.of(context)!.yes),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context, 'Cancel');
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
                controller: pageController1,
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
                  videoTimerSlide1DH.cancel();
                }
                videoButton = true;
                seconds = Global.slider;
              });
              if ((int.parse(pageController1.text) > 7) ||
                  (int.parse(pageController1.text) < 0)) {
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
                pageController1 = TextEditingController()
                  ..text = (indexVisibilitySlide1DH + 1).toString();
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
      //videoTimerVariable.cancel();
      // indexVisibilitySlide1DH = (int.parse(pageController1.text));

      stopFunction();

      selectPageNumber(int.parse(pageController1.text) - 1, 0);

      // if (controllerIndex > a) {
      //   videoTimerProblem(int.parse(pageController1.text) - 1, 0);
      // } else {
      //   videoTimerProblemBack(int.parse(pageController1.text) - 1);
      // }
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
      colorsVisibility = [false, false, false, false];
      videoTimerVariable.cancel();
      timerSlide1DH.cancel();
      videoTimerSlide1DH.cancel();
      delayTimer.cancel();
      isLastIndex = [false, true];
      indexVisibilitySlide1DH = -1;
      // pageController1 = TextEditingController()..text = (0).toString();
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
      seconds = 0;
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
    });
  }
}
