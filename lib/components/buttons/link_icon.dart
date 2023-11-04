// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, must_be_immutable, unused_import

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../themes/theme.dart';

class LinkIcon extends StatefulWidget {
  IconData icon;
  double? iconSize;
  final Function onPressed;
  LinkIcon({Key? key, required this.icon, this.iconSize, required this.onPressed})
      : super(key: key);

  @override
  State<LinkIcon> createState() => _LinkIconState();
}

class _LinkIconState extends State<LinkIcon> {
  @override
  Widget build(BuildContext context) {
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
        child: IconButton(
          padding: EdgeInsets.zero,
          constraints: BoxConstraints(),
          onPressed: () {
            widget.onPressed();
          },
          icon: Icon(
            widget.icon,
            size: widget.iconSize ?? 20,
            color: SecondaryButtonColors.initialTextColor,
          ),
        ));
  }
}
