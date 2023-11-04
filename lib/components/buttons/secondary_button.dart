// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, must_be_immutable, unused_import

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pozadkey_v2/themes/theme.dart';

class SecondaryButton extends StatefulWidget {
  final String title;
  final Function onPressed;
  const SecondaryButton(
      {Key? key, required this.title, required this.onPressed})
      : super(key: key);

  @override
  State<SecondaryButton> createState() => _SecondaryButtonState();
}

class _SecondaryButtonState extends State<SecondaryButton> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    final buttonFont = TextStyle(
        fontSize: 16,
        color: SecondaryButtonColors.initialTextColor,
        letterSpacing: 0.3,
        fontFamily: 'SpaceGrotesk',
        fontWeight: FontWeight.w500);

    return MouseRegion(
      onEnter: (m) {
        setState(() {
          SecondaryButtonColors.initialBgColor =
              SecondaryButtonColors.initialTextColor;
          SecondaryButtonColors.initialTextColor =
              SecondaryButtonColors.hoverInBgColor;
        });
      },
      onExit: (m) {
        setState(() {
          SecondaryButtonColors.initialBgColor =
              SecondaryButtonColors.hoverOutBgColor;
          SecondaryButtonColors.initialTextColor =
              SecondaryButtonColors.hoverOutTextColor;
        });
      },
      child: TextButton(
        child: Padding(
          padding: width >= 800
              ? EdgeInsets.symmetric(horizontal: 22, vertical: 18)
              : EdgeInsets.all(12),
          child: Text(
            widget.title,
            style: buttonFont,
            textAlign: TextAlign.center,
          ),
        ),
        onPressed: () {
          widget.onPressed();
        },
        style: TextButton.styleFrom(
          backgroundColor: SecondaryButtonColors.initialBgColor,
          side: BorderSide(
              color: SecondaryButtonColors.initialTextColor, width: 1),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(1.0)),
        ),
      ),
    );
  }
}
