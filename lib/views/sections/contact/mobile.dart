// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pozadkey_v2/components/nav/navbar_items.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../components/buttons/link_icon.dart';

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

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      width: 800,
      padding: width >= 800
          ? EdgeInsets.fromLTRB(110, 30, 110, 30)
          : EdgeInsets.fromLTRB(20, 30, 20, 30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3.0),
        color: Color.fromRGBO(15, 15, 15, 1),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Let\'s work\ntogether'.toUpperCase(),
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineMedium),
          SizedBox(
            height: 30,
          ),
          NavBarItems(
              onTap: () {
                openUrl('mailto:hello@pozadkey.com?subject=Hello');
              },
              title: '→ Hello@pozadkey.com',
              fontSize: 24),
          SizedBox(
            height: 30,
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
    );
  }
}
