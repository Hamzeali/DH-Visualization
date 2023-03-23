// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:key_exchange_visualization/DHKE/aboutApp.dart';
import 'package:showcaseview/showcaseview.dart';

import 'about.dart';
import 'slide1DH.dart';
import 'slide2DH.dart';
import 'slide3DH..dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'slide4DH.dart';

class HomePageDH extends StatefulWidget {
  const HomePageDH({Key? key}) : super(key: key);

  @override
  HomePageDHState createState() => HomePageDHState();
}

class HomePageDHState extends State<HomePageDH>
    with SingleTickerProviderStateMixin {
  GlobalKey<Slide1DHState> slide1Key = GlobalKey<Slide1DHState>();
  GlobalKey<Slide2DHState> slide2Key = GlobalKey<Slide2DHState>();
  GlobalKey<Slide3DHState> slide3Key = GlobalKey<Slide3DHState>();
  GlobalKey<Slide4DHState> slide4Key = GlobalKey<Slide4DHState>();
  press() {
    slide1Key.currentState!.pressMoreBtn();
  }

  resetBtnSize() {
    slide1Key.currentState!.finishShowCase();
  }

  static List returnAppBar = [AppBar(), 5.0];
  final List<Tab> tabs = <Tab>[
    for (var i = 0; i < 4; i++)
      Tab(
        text: (i + 1).toString(),
        height: 20,
      ),
  ];
  static late TabController controller;
  var tabIndex = 0;

  @override
  void initState() {
    controller = TabController(vsync: this, length: tabs.length);
    controller.addListener(() {
      setState(() {
        tabIndex = controller.index;
      });
    });
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);

    super.initState();
  }

  @override
  // ignore: must_call_super
  void dispose() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    controller.dispose();

    super.dispose();
  }

  List appBarFunction(BuildContext context, TabController controller) {
    AppBar appBar = AppBar(
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          size: MediaQuery.of(context).size.height * 0.0456,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      actions: [
        Showcase(
          showArrow: false,
          key: menuKey,
          description: AppLocalizations.of(context)!.readDHKE,
          descTextStyle: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
          tooltipBackgroundColor: Colors.blue,
          child: PopupMenuButton(
            icon: Icon(
              Icons.menu,
              size: MediaQuery.of(context).size.height * 0.035,
            ),
            itemBuilder: (context) {
              return [
                PopupMenuItem<int>(
                  value: 0,
                  child: Text(AppLocalizations.of(context)!.dhke),
                ),
                PopupMenuItem<int>(
                  value: 1,
                  child: Text(AppLocalizations.of(context)!.aboutApp),
                ),
              ];
            },
            onSelected: (value) {
              if (value == 0) {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const About()));
              } else {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const AboutApp()));
              }
            },
          ),
        ),
      ],
      toolbarHeight: MediaQuery.of(context).size.height * 0.06,
      flexibleSpace: Padding(
        padding: const EdgeInsets.only(bottom: 35.0),
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

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: appBarFunction(context, controller)[0],
        body: Builder(builder: (context) {
          return TabBarView(
            physics: const NeverScrollableScrollPhysics(),
            controller: controller,
            children: [
              Slide1DH(key: slide1Key),
              Slide2DH(key: slide2Key),
              Slide3DH(key: slide3Key),
              Slide4DH(key: slide4Key),
            ],
          );
        }),
      ),
    );
  }
}
