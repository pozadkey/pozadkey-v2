// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:pozadkey_v2/components/footer/footer.dart';
import 'package:pozadkey_v2/components/nav/navbar.dart';
import 'package:pozadkey_v2/views/sections/about/about.dart';
import 'package:pozadkey_v2/views/sections/projects/tabs/projects_tab.dart';
import 'sections/contact/contact.dart';
import 'sections/intro/intro.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final homeKey = GlobalKey();
  final aboutKey = GlobalKey();
  final projectsKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(builder: (context, orientation) {
      if (orientation == Orientation.landscape) {
        return LayoutBuilder(
            builder: (context, constraints) => Scaffold(
                  backgroundColor: Theme.of(context).colorScheme.background,
                  body: Column(
                    children: [
                      Expanded(
                        child: SingleChildScrollView(
                          child: ConstrainedBox(
                            constraints: BoxConstraints(
                                minHeight: constraints.maxHeight),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 40),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  NavBar(
                                    homeKey: homeKey,
                                    aboutKey: aboutKey,
                                    projectsKey: projectsKey,
                                  ),
                                  SizedBox(height: 50),
                                  Intro(
                                    key: homeKey,
                                    projectsKey: projectsKey,
                                  ),
                                  SizedBox(height: 80),
                                  About(
                                    key: aboutKey,
                                  ),
                                  SizedBox(height: 80),
                                  ProjectsTab(key: projectsKey),
                                  SizedBox(height: 80),
                                  Contact(),
                                  SizedBox(height: 80),
                                  Footer(),
                                  SizedBox(height: 80),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ));
      } else {
        return LayoutBuilder(
            builder: (context, constraints) => Scaffold(
                  backgroundColor: Theme.of(context).colorScheme.background,
                  body: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      NavBar(
                        homeKey: homeKey,
                        aboutKey: aboutKey,
                        projectsKey: projectsKey,
                      ),
                      Expanded(
                        child: Center(
                          child: SingleChildScrollView(
                            child: ConstrainedBox(
                              constraints: BoxConstraints(
                                  minHeight: constraints.maxHeight),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(height: 60),
                                  Intro(
                                    key: homeKey,
                                    projectsKey: projectsKey,
                                  ),
                                  SizedBox(height: 80),
                                  About(
                                    key: aboutKey,
                                  ),
                                  SizedBox(height: 80),
                                  ProjectsTab(key: projectsKey),
                                  SizedBox(height: 80),
                                  Contact(),
                                  SizedBox(height: 80),
                                  Footer(),
                                  SizedBox(height: 40),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ));
      }
    });
  }
}
