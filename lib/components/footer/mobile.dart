// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pozadkey_v2/components/nav/navbar_items.dart';
import 'package:url_launcher/url_launcher.dart';

class Mobile extends StatefulWidget {
  const Mobile({Key? key}) : super(key: key);

  @override
  State<Mobile> createState() => _MobileState();
}

class _MobileState extends State<Mobile> {
  openUrl(pageUrl) async {
    final url = Uri.parse(pageUrl);
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  DateTime now = DateTime.now();

  @override
  Widget build(BuildContext context) {
    String formattedDate = DateFormat('y').format(now);

    return Container(
      padding: EdgeInsets.fromLTRB(100, 20, 100, 20),
      alignment: Alignment.bottomCenter,
      width: 600,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          FittedBox(
            child: Row(
              children: [
                NavBarItems(
                  onTap: () => openUrl('https://github.com/pozadkey'),
                  title: 'Github',
                ),
                SizedBox(
                  width: 20,
                ),
                NavBarItems(
                  onTap: () =>
                      openUrl('https://linkedin.com/in/damilare-ajakaiye'),
                  title: 'LinkedIn',
                ),
                SizedBox(
                  width: 20,
                ),
                NavBarItems(
                  onTap: () => openUrl('https://x.com/pozadkey'),
                  title: 'X',
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          FittedBox(
            child: Row(
              children: [
                NavBarItems(
                  onTap: () {
                    Navigator.pushNamed(context, '/');
                  },
                  title: '© $formattedDate. Damilare Ajakaiye.',
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          )
        ],
      ),
    );
  }
}
