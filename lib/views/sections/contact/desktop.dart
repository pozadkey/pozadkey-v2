// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pozadkey_v2/responsive/responsive.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../components/buttons/link_icon.dart';
import '../../../components/nav/navbar_items.dart';

class Desktop extends StatefulWidget {
  const Desktop({
    Key? key,
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
    return Responsive(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 1200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3.0),
              color: Color.fromRGBO(15, 15, 15, 1),
            ),
            padding: EdgeInsets.symmetric(vertical: 60),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Let\'s work\ntogether'.toUpperCase(),
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.displayLarge),
                SizedBox(
                  height: 40,
                ),
                NavBarItems(
                    onTap: () {
                      openUrl('mailto:dajakaiye1@gmail.com?subject=Hello');
                    },
                    title: '→ Send A Message',
                    fontSize: 50),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    LinkIcon(
                      icon: FontAwesomeIcons.linkedinIn,
                      onPressed: () =>
                          openUrl('https://linkedin.com/in/damilare-ajakaiye'),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    LinkIcon(
                      icon: FontAwesomeIcons.xTwitter,
                      onPressed: () => openUrl('https://x.com/pozadkey'),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
