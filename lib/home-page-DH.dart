// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'DH/Slide1DH.dart';
import 'DH/slide2DH.dart';
import 'DH/slide3DH..dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'DH/slide4DH.dart';

class HomePageDH extends StatefulWidget {
  const HomePageDH({Key? key}) : super(key: key);

  @override
  HomePageDHState createState() => HomePageDHState();
}

class HomePageDHState extends State<HomePageDH>
    with SingleTickerProviderStateMixin {
  static List returnAppBar = [AppBar(), 5.0];
  final List<Tab> tabs = <Tab>[
    for (var i = 0; i < 4; i++)
      Tab(
        text: (i + 1).toString(),
        height: 20,
      ),
  ];
  late TabController controller;
  var tabIndex = 0;
  @override
  void initState() {
    controller = TabController(vsync: this, length: tabs.length);
    controller.addListener(() {
      setState(() {
        // videoTimerProblem().cancel();
        tabIndex = controller.index;
      });
    });
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    //SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);

    super.initState();
  }

  @override
  // ignore: must_call_super
  void dispose() {
    SystemChrome.setPreferredOrientations([
      // DeviceOrientation.landscapeRight,
      // DeviceOrientation.landscapeLeft,
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    // SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
    //     overlays: SystemUiOverlay.values);
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    controller.dispose();

    super.dispose();
  }

  List appBarFunction(BuildContext context, TabController controller) {
    AppBar appBar = AppBar(
      // leading: IconButton(
      //   icon: Icon(Icons.arrow_back,
      //       size: MediaQuery.of(context).size.height * 0.0456),
      //   onPressed: () {
      //     Navigator.pop(context);
      //     // SystemChrome.setPreferredOrientations([
      //     //   DeviceOrientation.portraitUp,
      //     //   DeviceOrientation.portraitDown,
      //     // ]);
      //   },
      // ),
      toolbarHeight: MediaQuery.of(context).size.height * 0.06,
      flexibleSpace: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: FittedBox(
            fit: BoxFit.fitWidth,
            child: Text(
              tabIndex == 0
                  ? AppLocalizations.of(context)!.slide1
                  : tabIndex == 1
                      ? AppLocalizations.of(context)!.slide2
                      : tabIndex == 2
                          ? AppLocalizations.of(context)!.slide3
                          : AppLocalizations.of(context)!.slide4,
              // context.watch<MyProvider>().s,
              // context.watch<LanguageProvider>().selectedLanguage == true
              //     ? DescListDeutchDH.tabTitle[tabIndex]
              //     : DescListEnglishDH.tabTitle[tabIndex],
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
      bottom: TabBar(
        tabs: tabs,
        controller: controller,
        isScrollable: true,
        unselectedLabelColor: Colors.white.withOpacity(0.3),
        indicatorColor: Colors.white,
      ),
    );
    double appBarHeight = appBar.preferredSize.height;
    returnAppBar[0] = appBar;
    returnAppBar[1] = appBarHeight;
    return returnAppBar;
  }

  // Timer videoTimerProblem() {
  //   Timer videoTimerVariable =
  //       Timer.periodic(Duration(seconds: slider), (Timer videoTimerVariable) {
  //     setState(() {
  //       // desc = true;
  //       // descVisbility = true;
  //       containerSeconds = 1;
  //       //seconds = 3;
  //       seconds = slider;
  //       if (timerProblem == 0)
  //         contentVisibility[indexVisibility] = true;
  //       else if (timerProblem == 1) {
  //         contentVisibility[15] = false;
  //       } else if (timerProblem == 2) {
  //         contentVisibility[15] = true;
  //       }

  //       if (contentVisibility[7] == true) messageOpacity = 1.0;
  //       if (contentVisibility[10] == true) {
  //         messagePosition[0] = 0.28;
  //         messagePosition[1] = 0.41;
  //       }
  //       if (contentVisibility[12] == true) {
  //         messagePosition[0] = 0.64;
  //         messagePosition[1] = 0.52;
  //       }
  //       if (contentVisibility[14] == true) {
  //         messagePosition[0] = 0.74;
  //         messagePosition[1] = 0.15;
  //         timerProblem++;
  //       }

  //       if (contentVisibility[15] == true) {
  //         //seconds = 2;
  //         messagePosition[0] = 0.875;
  //         messagePosition[1] = 0.01;
  //         if (timerProblem == 2) contentVisibility[16] = false;
  //       }
  //       if (timerProblem == 4) contentVisibility[16] = true;
  //       if (contentVisibility[16] == true) {
  //         messageOpacity = 0.0;
  //         videoTimer.cancel();
  //         timerProblem = 0;
  //       }

  //       descIndex = indexVisibility;
  //       text = DescList.descList[descIndex];
  //       indexVisibility++;

  //       if (indexVisibility == contentVisibility.length) indexVisibility = 16;
  //     });
  //   });
  //   return videoTimerVariable;
  // }

  // bool stop = true;
  // Container videoButtonFunction(BuildContext context) {
  //   return Container(
  //     // width: MediaQuery.of(context).size.width * 0.07,
  //     // height: MediaQuery.of(context).size.height * 0.07,
  //     child: FloatingActionButton(
  //       backgroundColor: Colors.green,
  //       onPressed: () => setState(() {
  //         desc = true;
  //         descVisbility = true;
  //         dropButton = false;
  //         videoButton = !videoButton;
  //         if (!videoButton) {
  //           videoTimer = videoTimerProblem();
  //         } else
  //           videoTimer.cancel();
  //       }),
  //       child: videoButton
  //           ? Icon(
  //               Icons.play_arrow,
  //             )
  //           : Icon(
  //               Icons.pause,
  //             ),
  //     ),
  //   );
  // }

  // Container stopButtonFunction(BuildContext context) {
  //   return Container(
  //     // width: MediaQuery.of(context).size.width * 0.07,
  //     // height: MediaQuery.of(context).size.height * 0.07,
  //     child: FloatingActionButton(
  //       backgroundColor: Colors.red,
  //       onPressed: () => setState(() {
  //         videoTimer.cancel();
  //         videoButton = true;
  //         for (var i = 0; i < 17; i++) {
  //           contentVisibility[i] = false;
  //         }
  //         messagePosition[0] = 0.09;
  //         messagePosition[1] = 0.01;
  //         indexVisibility = 0;
  //         messageOpacity = 0.0;
  //         seconds = 0;
  //         text = '';
  //         desc = false;
  //         descVisbility = false;
  //         containerSeconds = 0;
  //         descIndex = 0;
  //         dropButton = true;
  //         val = 1;
  //         slider = 3;
  //       }),
  //       child: Icon(
  //         Icons.stop,
  //       ),
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: appBarFunction(context, controller)[0],
        body: Builder(builder: (context) {
          return TabBarView(
            controller: controller,
            children: const [
              Slide1DH(),
              Slide2DH(),
              Slide3DH(),
              Slide4DH(),
            ],
          );
        }),
      ),
    );
  }
}
