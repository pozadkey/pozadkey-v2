// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:pozadkey_v2/views/sections/projects/sections/mobile_projects/desktop.dart';
import 'package:pozadkey_v2/views/sections/projects/sections/mobile_projects/mobile.dart';

class MobileProjects extends StatefulWidget {
  const MobileProjects({
    Key? key,
  }) : super(key: key);

  @override
  State<MobileProjects> createState() => _MobileProjectsState();
}

class _MobileProjectsState extends State<MobileProjects> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return LayoutBuilder(builder: (context, constraints) {
      if (width <= 1200) {
        return Mobile();
      } else {
        return Desktop();
      }
    });
  }
}
