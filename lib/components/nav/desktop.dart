// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:pozadkey_v2/responsive/responsive.dart';
import 'package:pozadkey_v2/themes/theme.dart';
import 'package:url_launcher/url_launcher.dart';
import '../buttons/secondary_button.dart';
import 'navbar_items.dart';
import 'navbar_logo.dart';

class Desktop extends StatefulWidget {
  var homeKey = GlobalKey();
  var aboutKey = GlobalKey();
  var projectsKey = GlobalKey();
  Desktop({
    Key? key,
    required this.homeKey,
    required this.aboutKey,
    required this.projectsKey,
  }) : super(key: key);

  @override
  State<Desktop> createState() => _DesktopState();
}

openUrl(pageUrl) async {
  final url = Uri.parse(pageUrl);
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

class _DesktopState extends State<Desktop> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Responsive(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  NavLogo(
                    myColor: NavItemColors.initialTextColor,
                    logoTextSize: 24,
                    iconsSize: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      NavBarItems(
                        onTap: () {
                          Scrollable.ensureVisible(
                              widget.homeKey.currentContext!,
                              alignment: 0.0,
                              duration: Duration(seconds: 1),
                              curve: Curves.ease);
                        },
                        title: 'Home',
                      ),
                      SizedBox(
                        width: 35,
                      ),
                      NavBarItems(
                        onTap: () {
                          Scrollable.ensureVisible(
                              widget.aboutKey.currentContext!,
                              alignment: 0.0,
                              duration: Duration(seconds: 1),
                              curve: Curves.ease);
                        },
                        title: 'About',
                      ),
                      SizedBox(
                        width: 35,
                      ),
                      NavBarItems(
                        onTap: () {
                          Scrollable.ensureVisible(
                              widget.projectsKey.currentContext!,
                              alignment: 0.0,
                              duration: Duration(seconds: 1),
                              curve: Curves.ease);
                        },
                        title: 'Works',
                      ),
                      SizedBox(
                        width: 35,
                      ),
                      SizedBox(
                        width: 200,
                        child: SecondaryButton(
                            title: 'Contact Me',
                            onPressed: () {
                              openUrl(
                                  'mailto:hello@pozadkey.com?subject=Hello');
                            }),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
