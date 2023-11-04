// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../components/buttons/primary_button.dart';
import '../../../components/buttons/secondary_button.dart';

class Desktop extends StatefulWidget {
  var projectsKey = GlobalKey();
  Desktop({Key? key, required this.projectsKey}) : super(key: key);

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
    return SizedBox(
      height: 700,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 700,
                child: Center(
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: 'Web'.toUpperCase(),
                            style: TextStyle(
                                fontFamily: Theme.of(context)
                                    .textTheme
                                    .displayLarge!
                                    .fontFamily,
                                fontWeight: Theme.of(context)
                                    .textTheme
                                    .displayLarge!
                                    .fontWeight,
                                fontSize: Theme.of(context)
                                    .textTheme
                                    .displayLarge!
                                    .fontSize,
                                color:
                                    const Color.fromARGB(255, 139, 241, 84))),
                        TextSpan(
                          text: ' & '.toUpperCase(),
                          style: Theme.of(context).textTheme.displayLarge,
                        ),
                        TextSpan(
                            text: 'Mobile\n'.toUpperCase(),
                            style: TextStyle(
                                fontFamily: Theme.of(context)
                                    .textTheme
                                    .displayLarge!
                                    .fontFamily,
                                fontWeight: Theme.of(context)
                                    .textTheme
                                    .displayLarge!
                                    .fontWeight,
                                fontSize: Theme.of(context)
                                    .textTheme
                                    .displayLarge!
                                    .fontSize,
                                color:
                                    const Color.fromARGB(255, 139, 241, 84))),
                        TextSpan(
                          text: 'Engineer'.toUpperCase(),
                          style: Theme.of(context).textTheme.displayLarge,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              SizedBox(
                width: 700,
                child: Center(
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'I\'m ',
                          style: Theme.of(context).textTheme.displayMedium,
                        ),
                        TextSpan(
                            text: 'Damilare Ajakaiye',
                            style: TextStyle(
                                fontFamily: Theme.of(context)
                                    .textTheme
                                    .displayLarge!
                                    .fontFamily,
                                fontWeight: Theme.of(context)
                                    .textTheme
                                    .displayLarge!
                                    .fontWeight,
                                fontSize: Theme.of(context)
                                    .textTheme
                                    .displayMedium!
                                    .fontSize,
                                color:
                                    const Color.fromARGB(255, 139, 241, 84))),
                        TextSpan(
                          text:
                              ', a highly skilled and results-driven software engineer specializing in web and mobile development. My focus is on user-centered design and building accessible, innovative solutions. I\'m eager to contribute my expertise and collaborate with diverse industries to drive success.',
                          style: Theme.of(context).textTheme.displayMedium,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                      width: 200,
                      child: PrimaryButton(
                        title: 'Explore Projects',
                        onPressed: () => Scrollable.ensureVisible(
                            widget.projectsKey.currentContext!,
                            alignment: 1,
                            duration: Duration(seconds: 1),
                            curve: Curves.ease),
                      )),
                  SizedBox(
                    width: 20,
                  ),
                  SizedBox(
                    width: 200,
                    child: SecondaryButton(
                        title: 'Start Project',
                        onPressed: () {
                          openUrl('mailto:hello@pozadkey.com?subject=Hello');
                        }),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
