// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:pozadkey_v2/views/sections/projects/sections/web_projects/desktop.dart';
import 'package:pozadkey_v2/views/sections/projects/sections/web_projects/mobile.dart';

class WebProjects extends StatefulWidget {
  const WebProjects({
    Key? key,
  }) : super(key: key);

  @override
  State<WebProjects> createState() => _WebProjectsState();
}

class _WebProjectsState extends State<WebProjects> {
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
