// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:pozadkey_v2/components/nav/mobile.dart';
import 'desktop.dart';

class NavBar extends StatefulWidget {
  var homeKey = GlobalKey();
  var aboutKey = GlobalKey();
  var projectsKey = GlobalKey();
  NavBar(
      {Key? key,
      required this.homeKey,
      required this.aboutKey,
      required this.projectsKey})
      : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return LayoutBuilder(builder: (context, constraints) {
      if (width <= 1200) {
        return Mobile(
          homeKey: widget.homeKey,
          aboutKey: widget.aboutKey,
          projectsKey: widget.projectsKey,
        );
      } else {
        return Desktop(
          homeKey: widget.homeKey,
          aboutKey: widget.aboutKey,
          projectsKey: widget.projectsKey,
        );
      }
    });
  }
}
