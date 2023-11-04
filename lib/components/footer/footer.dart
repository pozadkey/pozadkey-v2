import 'package:flutter/material.dart';
import 'package:pozadkey_v2/components/footer/mobile.dart';

// ignore_for_file: prefer_const_constructors


import 'desktop.dart';


class Footer extends StatefulWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
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
