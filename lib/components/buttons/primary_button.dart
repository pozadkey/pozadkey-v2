// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, must_be_immutable

import 'package:flutter/material.dart';
import 'package:pozadkey_v2/themes/theme.dart';

class PrimaryButton extends StatefulWidget {
  final String title;
  final Function onPressed;

  const PrimaryButton({Key? key, required this.title, required this.onPressed})
      : super(key: key);

  @override
  State<PrimaryButton> createState() => _PrimaryButtonState();
}

class _PrimaryButtonState extends State<PrimaryButton> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    final buttonFont = TextStyle(
        fontSize: 16,
        color: PrimaryButtonColors.initialTextColor,
        fontFamily: 'SpaceGrotesk',
        fontWeight: FontWeight.w500,
        letterSpacing: 0.3);

    return MouseRegion(
      onEnter: (m) {
        setState(() {
          PrimaryButtonColors.initialTextColor =
              PrimaryButtonColors.hoverInTextColor;
          PrimaryButtonColors.initialBgColor =
              PrimaryButtonColors.hoverInBgColor;
        });
      },
      onExit: (m) {
        setState(() {
          PrimaryButtonColors.initialTextColor =
              PrimaryButtonColors.hoverOutTextColor;
          PrimaryButtonColors.initialBgColor =
              PrimaryButtonColors.hoverOutBgColor;
        });
      },
      child: TextButton(
        child: Padding(
          padding: width >= 800
              ? EdgeInsets.symmetric(horizontal: 22, vertical: 18)
              : EdgeInsets.all(6),
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
          backgroundColor: PrimaryButtonColors.initialBgColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              1.0,
            ),
          ),
        ),
      ),
    );
  }
}
