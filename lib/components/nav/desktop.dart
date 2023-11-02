// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:pozadkey_v2/themes/theme.dart';
import '../buttons/secondary_button.dart';
import 'navbar_items.dart';
import 'navbar_logo.dart';

class Desktop extends StatefulWidget {
  const Desktop({
    Key? key,
  }) : super(key: key);

  @override
  State<Desktop> createState() => _DesktopState();
}

class _DesktopState extends State<Desktop> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Container(
            padding: screenWidth <= 1200
                ? EdgeInsets.fromLTRB(35, 20, 35, 20)
                : EdgeInsets.fromLTRB(200, 20, 200, 20),
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
                      onTap: () {},
                      title: 'Home',
                    ),
                    SizedBox(
                      width: 35,
                    ),
                    NavBarItems(
                      onTap: () {},
                      title: 'About',
                    ),
                    SizedBox(
                      width: 35,
                    ),
                    NavBarItems(
                      onTap: () {},
                      title: 'Projects',
                    ),
                    SizedBox(
                      width: 35,
                    ),
                    SizedBox(
                      width: 200,
                      child: SecondaryButton(
                          title: 'Contact Me', onPressed: () {}),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
