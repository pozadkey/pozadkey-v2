// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../models/stack_model.dart';
import '../../../components/buttons/secondary_button.dart';

class Mobile extends StatefulWidget {
  const Mobile({Key? key}) : super(key: key);

  @override
  State<Mobile> createState() => _MobileState();
}

class _MobileState extends State<Mobile> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    openUrl(pageUrl) async {
      final url = Uri.parse(pageUrl);
      if (await canLaunchUrl(url)) {
        await launchUrl(url);
      } else {
        throw 'Could not launch $url';
      }
    }

    return Container(
        width: double.infinity,
        padding: width >= 800
            ? EdgeInsets.fromLTRB(110, 0, 110, 0)
            : EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              child: Text(
                'About Me'.toUpperCase(),
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 700,
              child: Text(
                'I\'m a software engineer with a passion for crafting exceptional web and mobile applications using JavaScript, TypeScript, and Flutter. My expertise in Flutter enables me to develop apps for Android and iOS, and I also specialize in server-side development with Node.js. I have a strong track record of delivering high-quality cross-platform solutions and robust server-side applications. I am committed to continuous learning and eager to collaborate on innovative tech projects.',
                style: Theme.of(context).textTheme.displaySmall,
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            SizedBox(
              width: width <= 600 ? 700 : 300,
              child: SecondaryButton(
                  title: 'Resume',
                  onPressed: () {
                    openUrl(
                        'https://docs.google.com/document/d/1BYRWahLz8h9vvaDhzJEOKYsEBFVTO144_VZGHr-j-BA/edit?usp=sharing');
                  }),
            ),
            SizedBox(
              height: 40,
            ),
            SizedBox(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: width >= 550 ? 6 : 4,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5,
                    childAspectRatio: 2.0),
                itemCount: stackList.length,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: ScrollPhysics(),
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
                      style: Theme.of(context).textTheme.titleSmall,
                      textAlign: TextAlign.center,
                    ),
                  );
                },
              ),
            )
          ],
        ));
  }
}
