// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:pozadkey_v2/components/buttons/tab_button.dart';
import 'package:pozadkey_v2/responsive/responsive.dart';
import 'package:pozadkey_v2/views/sections/projects/sections/web_projects/web_projects.dart';

import '../sections/articles/articles.dart';
import '../sections/mobile_projects/mobile_projects.dart';
import '../sections/tool_projects/tool_projects.dart';

class Mobile extends StatefulWidget {
  const Mobile({Key? key}) : super(key: key);

  @override
  State<Mobile> createState() => _MobileState();
}

class _MobileState extends State<Mobile> {
  @override
  void initState() {
    super.initState();
  }

  Widget defaultProj = WebProjects();
  Widget webProj = WebProjects();
  Widget mobileProj = MobileProjects();
  Widget toolsProj = ToolProjects();
  Widget articleProj = Articles();

  bool isWeb = true;
  bool isMobile = false;
  bool isArticle = false;
  bool isTool = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: width >= 800
          ? EdgeInsets.fromLTRB(110, 0, 110, 0)
          : EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: Responsive(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 500,
              child: Text(
                'Works'.toUpperCase(),
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            FittedBox(
              child: Row(
                children: [
                  SizedBox(
                    width: 98,
                    child: TabButton(
                      title: 'Web',
                      bgColor: isWeb == true
                          ? Color.fromRGBO(54, 54, 54, 1)
                          : Colors.transparent,
                      bgColorOut: isWeb == true
                          ? Color.fromRGBO(54, 54, 54, 1)
                          : Colors.transparent,
                      titleColor: isWeb == true
                          ? Colors.white
                          : Color.fromRGBO(171, 171, 171, 1),
                      titleColorIn: Colors.white,
                      titleColorOut: isWeb == true
                          ? Colors.white
                          : Color.fromRGBO(171, 171, 171, 1),
                      myColor: Color.fromRGBO(54, 54, 54, 1),
                      onPressed: () {
                        setState(() {
                          defaultProj = webProj;
                          isWeb = true;
                          isMobile = false;
                          isArticle = false;
                          isTool = false;
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    width: 98,
                    child: TabButton(
                      title: 'Mobile',
                      bgColor: isMobile == true
                          ? Color.fromRGBO(54, 54, 54, 1)
                          : Colors.transparent,
                      bgColorOut: isMobile == true
                          ? Color.fromRGBO(54, 54, 54, 1)
                          : Colors.transparent,
                      titleColor: isMobile == true
                          ? Colors.white
                          : Color.fromRGBO(171, 171, 171, 1),
                      titleColorIn: Colors.white,
                      titleColorOut: isMobile == true
                          ? Colors.white
                          : Color.fromRGBO(171, 171, 171, 1),
                      myColor: Color.fromRGBO(54, 54, 54, 1),
                      onPressed: () {
                        setState(() {
                          defaultProj = mobileProj;
                          isWeb = false;
                          isMobile = true;
                          isArticle = false;
                          isTool = false;
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    width: 114,
                    child: TabButton(
                      title: 'Packages',
                      bgColor: isTool == true
                          ? Color.fromRGBO(54, 54, 54, 1)
                          : Colors.transparent,
                      bgColorOut: isTool == true
                          ? Color.fromRGBO(54, 54, 54, 1)
                          : Colors.transparent,
                      titleColor: isTool == true
                          ? Colors.white
                          : Color.fromRGBO(171, 171, 171, 1),
                      titleColorIn: Colors.white,
                      titleColorOut: isTool == true
                          ? Colors.white
                          : Color.fromRGBO(171, 171, 171, 1),
                      myColor: Color.fromRGBO(54, 54, 54, 1),
                      onPressed: () {
                        setState(() {
                          defaultProj = toolsProj;
                          isWeb = false;
                          isMobile = false;
                          isArticle = false;
                          isTool = true;
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    width: 100,
                    child: TabButton(
                      title: 'Articles',
                      bgColor: isArticle == true
                          ? Color.fromRGBO(54, 54, 54, 1)
                          : Colors.transparent,
                      bgColorOut: isArticle == true
                          ? Color.fromRGBO(54, 54, 54, 1)
                          : Colors.transparent,
                      titleColor: isArticle == true
                          ? Colors.white
                          : Color.fromRGBO(171, 171, 171, 1),
                      titleColorIn: Colors.white,
                      titleColorOut: isArticle == true
                          ? Colors.white
                          : Color.fromRGBO(171, 171, 171, 1),
                      myColor: Color.fromRGBO(54, 54, 54, 1),
                      onPressed: () {
                        setState(() {
                          defaultProj = articleProj;
                          isWeb = false;
                          isMobile = false;
                          isArticle = true;
                          isTool = false;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            defaultProj
          ],
        ),
      ),
    );
  }
}
