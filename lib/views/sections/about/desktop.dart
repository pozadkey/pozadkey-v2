// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:pozadkey_v2/responsive/responsive.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../components/buttons/secondary_button.dart';
import '../../../models/stack_model.dart';

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
  @override
  Widget build(BuildContext context) {

    return Responsive(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            child: Text(
              // key: aboutKey,
              'About Me'.toUpperCase(),
              style: Theme.of(context).textTheme.displayLarge,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 600,
                      child: Text(
                        'I\'m a software engineer with a passion for crafting exceptional web and mobile applications using JavaScript, TypeScript, and Flutter. My expertise in Flutter enables me to develop apps for Android and iOS, and I also specialize in server-side development with Node.js. I have a strong track record of delivering high-quality cross-platform solutions and robust server-side applications. I am committed to continuous learning and eager to collaborate on innovative tech projects.',
                        style: Theme.of(context).textTheme.displayMedium,
                        textAlign: TextAlign.left,
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    SizedBox(
                      width: 300,
                      child: SecondaryButton(
                          title: 'Resume',
                          onPressed: () {
                            openUrl(
                                'https://docs.google.com/document/d/1BYRWahLz8h9vvaDhzJEOKYsEBFVTO144_VZGHr-j-BA/edit?usp=sharing');
                          }),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 60,
              ),
              Expanded(
                child: SizedBox(
                  width: 500,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            crossAxisSpacing: 5,
                            mainAxisSpacing: 5,
                            childAspectRatio: 4.2),
                        itemCount: stackList.length,
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemBuilder: (BuildContext ctx, index) {
                          StackModel stacks = stackList[index];
                          return Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(30, 30, 30, 1),
                              borderRadius: BorderRadius.circular(2.0),
                            ),
                            child: Text(
                              stacks.title,
                              style: Theme.of(context).textTheme.displaySmall,
                              textAlign: TextAlign.center,
                            ),
                          );
                        },
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            width: 30,
          ),
        ],
      ),
    );
  }
}
