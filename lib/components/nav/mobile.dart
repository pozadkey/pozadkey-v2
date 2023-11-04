// ignore_for_file: prefer_const_constructors, must_be_immutable
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../themes/theme.dart';
import '../buttons/primary_button.dart';
import '../buttons/secondary_button.dart';
import 'navbar_button.dart';
import 'navbar_items.dart';
import 'navbar_logo.dart';

IconData myMenu = Icons.menu_rounded;
double collapsableHeight = 0.0;

class Mobile extends StatefulWidget {
  var homeKey = GlobalKey();
  var aboutKey = GlobalKey();
  var projectsKey = GlobalKey();

  Mobile({
    Key? key,
    required this.homeKey,
    required this.aboutKey,
    required this.projectsKey,
  }) : super(key: key);

  @override
  State<Mobile> createState() => _MobileState();
}

openUrl(pageUrl) async {
  final url = Uri.parse(pageUrl);
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

class _MobileState extends State<Mobile> {
  bool _isVisible = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(
          color: Theme.of(context).colorScheme.background,
          alignment: Alignment.center,
          padding: width <= 420
              ? EdgeInsets.fromLTRB(10, 15, 10, 15)
              : EdgeInsets.fromLTRB(20, 15, 20, 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              NavLogo(
                myColor: NavItemColors.initialTextColor,
                logoTextSize: width <= 340 ? 15 : 18,
                iconsSize: width <= 340 ? 15 : 18,
              ),
              NavBarButton(
                hamburgerSize: width <= 340 ? 15 : 30,
                onPressed: () {
                  if (_isVisible == false) {
                    setState(() {
                      _isVisible = true;
                      myMenu = FontAwesomeIcons.xmark;
                    });
                  } else if (_isVisible == true) {
                    setState(() {
                      _isVisible = false;
                      myMenu = FontAwesomeIcons.bars;
                    });
                  }
                },
                hamburgerColor: _isVisible == false
                    ? Color.fromRGBO(255, 255, 255, 1)
                    : const Color.fromARGB(255, 139, 241, 84),
              )
            ],
          ),
        ),
        Visibility(
            visible: _isVisible,
            child: AnimatedContainer(
              color: Theme.of(context).colorScheme.background,
              padding: width <= 420
                  ? EdgeInsets.fromLTRB(10, 20, 10, 20)
                  : EdgeInsets.only(
                      top: 20.0,
                      bottom: 20.0,
                    ),
              duration: Duration(milliseconds: 375),
              curve: Curves.easeInOut,
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      padding: width <= 420
                          ? EdgeInsets.fromLTRB(10, 15, 10, 15)
                          : EdgeInsets.fromLTRB(20, 15, 20, 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          NavBarItems(
                            onTap: () {
                              setState(() {
                                _isVisible = false;
                                myMenu = FontAwesomeIcons.bars;
                              });
                              Scrollable.ensureVisible(
                                  widget.homeKey.currentContext!,
                                  alignment: 0.0,
                                  duration: Duration(seconds: 1),
                                  curve: Curves.ease);
                            },
                            title: 'Home',
                          ),
                          SizedBox(
                            height: 35.0,
                          ),
                          NavBarItems(
                            onTap: () {
                              setState(() {
                                _isVisible = false;
                                myMenu = FontAwesomeIcons.bars;
                              });
                              Scrollable.ensureVisible(
                                  widget.aboutKey.currentContext!,
                                  alignment: 0.0,
                                  duration: Duration(seconds: 1),
                                  curve: Curves.ease);
                            },
                            title: 'About',
                          ),
                          SizedBox(
                            height: 35.0,
                          ),
                          NavBarItems(
                            onTap: () {
                              setState(() {
                                _isVisible = false;
                                myMenu = FontAwesomeIcons.bars;
                              });
                              Scrollable.ensureVisible(
                                  widget.projectsKey.currentContext!,
                                  alignment: 0.0,
                                  duration: Duration(seconds: 1),
                                  curve: Curves.ease);
                            },
                            title: 'Works',
                          ),
                          SizedBox(
                            height: 35.0,
                          ),
                          SizedBox(
                              width: width <= 550 ? 700 : 300,
                              child: SecondaryButton(
                                  title: 'Resume',
                                  onPressed: () {
                                    setState(() {
                                      _isVisible = false;
                                      myMenu = FontAwesomeIcons.bars;
                                    });
                                    openUrl(
                                        'https://docs.google.com/document/d/1BYRWahLz8h9vvaDhzJEOKYsEBFVTO144_VZGHr-j-BA/edit?usp=sharing');
                                  })),
                          SizedBox(
                            height: 20.0,
                          ),
                          SizedBox(
                              width: width <= 550 ? 700 : 300,
                              child: PrimaryButton(
                                title: 'Contact Me',
                                onPressed: () {
                                  setState(() {
                                    _isVisible = false;
                                    myMenu = FontAwesomeIcons.bars;
                                  });

                                  openUrl(
                                      'mailto:hello@pozadkey.com?subject=Hello');
                                },
                              ))
                        ],
                      ))
                ],
              ),
            ))
      ],
    );
  }
}
