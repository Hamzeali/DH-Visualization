// ignore_for_file: file_names

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Description extends StatelessWidget {
  bool visible;
  bool descVisibility;
  String desc;
  double appBarHeight;
  final time = const Duration(seconds: 2);
  int seconds;
  //print(time.toString().substring(6, 7));
  Description(this.visible, this.desc, this.descVisibility, this.seconds,
      this.appBarHeight,
      {Key? key})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      bottom: visible
          ? (MediaQuery.of(context).size.height - appBarHeight) * 0.08
          : (MediaQuery.of(context).size.height - appBarHeight) * -0.04,
      left: MediaQuery.of(context).size.width * 0.35, //362
      width: MediaQuery.of(context).size.width * 0.30, // 0.25
      height: visible
          ? (MediaQuery.of(context).size.height - appBarHeight) * 0.26 // 0.23
          : 0,
      duration: Duration(seconds: seconds),
      child: AnimatedOpacity(
        opacity: visible == true ? 1.0 : 0.0,
        duration: Duration(seconds: seconds),
        child: Container(
          // padding: const EdgeInsets.only(top: 10.0, right: 5.0, left: 4.0),
          padding: const EdgeInsets.all(10.0),
          decoration: const BoxDecoration(
            // color: Colors.indigo,
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.indigo,
                Colors.blue,
              ],
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          // color: Colors.grey,
          child: Visibility(
            visible: visible,
            child: SingleChildScrollView(
              child: AutoSizeText(
                descVisibility ? desc : '',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: MediaQuery.of(context).size.width * 0.02),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
