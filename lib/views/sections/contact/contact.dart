// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:pozadkey_v2/responsive/responsive.dart';
import 'package:pozadkey_v2/views/sections/contact/desktop.dart';


class Contact extends StatefulWidget {
  const Contact({
    Key? key,
  }) : super(key: key);

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Responsive(
      child: LayoutBuilder(builder: (context, constraints) {
        if (width <= 1200) {
          return Desktop();
        } else {
          return Desktop();
        }
      }),
    );
  }
}
