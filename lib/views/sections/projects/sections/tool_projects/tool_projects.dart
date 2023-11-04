// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:pozadkey_v2/views/sections/projects/sections/tool_projects/desktop.dart';
import 'package:pozadkey_v2/views/sections/projects/sections/tool_projects/mobile.dart';

class ToolProjects extends StatefulWidget {
  const ToolProjects({Key? key}) : super(key: key);

  @override
  State<ToolProjects> createState() => _ToolProjectsState();
}

class _ToolProjectsState extends State<ToolProjects> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return LayoutBuilder(builder: (context, constraints) {
      if (width < 1200) {
        return Mobile();
      } else {
        return Desktop();
      }
    });
  }
}
