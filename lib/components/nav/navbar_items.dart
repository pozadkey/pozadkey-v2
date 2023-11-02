// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, sized_box_for_whitespace, must_be_immutable

import 'package:flutter/material.dart';
import 'package:pozadkey_v2/themes/theme.dart';

class NavBarItems extends StatefulWidget {
  String title;
  double? fontSize;
  final Function onTap;

  NavBarItems({
    Key? key,
    required this.onTap,
    required this.title,
    this.fontSize
  }) : super(key: key);

  @override
  State<NavBarItems> createState() => _NavBarItemsState();
}

class _NavBarItemsState extends State<NavBarItems> {
  @override
  Widget build(BuildContext context) {
    final navFont = TextStyle(
        fontStyle: FontStyle.normal,
        fontSize: widget.fontSize ?? 16,
        letterSpacing: 0.5,
        fontFamily: 'SpaceGrotesk',
        color: NavItemColors.initialTextColor,
        fontWeight: FontWeight.w500);

    return MouseRegion(
        onEnter: (m) {
          setState(() {
            NavItemColors.initialTextColor = NavItemColors.hoverInTextColor;
          });
        },
        onExit: (m) {
          setState(() {
            NavItemColors.initialTextColor = NavItemColors.hoverOutTextColor;
          });
        },
        child: MaterialButton(
          highlightColor: Colors.transparent,
          padding: EdgeInsets.zero,
          minWidth: 0,
          onPressed: () {
            widget.onTap();
          },
          child: Text(
            widget.title,
            style: navFont,
          ),
        ));
  }
}
