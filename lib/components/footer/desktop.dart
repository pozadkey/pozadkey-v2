// ignore_for_file: prefer_const_constructors, unused_field

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pozadkey_v2/responsive/responsive.dart';
import 'package:url_launcher/url_launcher.dart';

import '../nav/navbar_items.dart';

class Desktop extends StatefulWidget {
  const Desktop({Key? key}) : super(key: key);

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
  final _footerFont = TextStyle(
      fontStyle: FontStyle.normal,
      fontSize: 14,
      color: Colors.grey[350],
      fontWeight: FontWeight.w500);

  DateTime now = DateTime.now();

  @override
  Widget build(BuildContext context) {
    String formattedDate = DateFormat('y').format(now);

    return Responsive(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NavBarItems(
            onTap: () {Navigator.pushNamed(context, '/');},
            title: '© $formattedDate. Damilare Ajakaiye.',
          ),
          Row(
            children: [
              NavBarItems(
                onTap: () => openUrl('https://github.com/pozadkey'),
                title: 'Github',
              ),
              SizedBox(
                width: 35,
              ),
              NavBarItems(
                onTap:  () =>
                          openUrl('https://linkedin.com/in/damilare-ajakaiye'),
                title: 'LinkedIn',
              ),
              SizedBox(
                width: 35,
              ),
              NavBarItems(
                onTap: () => openUrl('https://x.com/pozadkey'),
                title: 'X',
              ),
            ],
          )
        ],
      ),
    );
  }
}
