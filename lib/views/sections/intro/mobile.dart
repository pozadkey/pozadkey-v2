// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../components/buttons/primary_button.dart';
import '../../../components/buttons/secondary_button.dart';

class Mobile extends StatefulWidget {
  var projectsKey = GlobalKey();
  Mobile({Key? key, required this.projectsKey}) : super(key: key);

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

    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: width >= 800
                ? EdgeInsets.fromLTRB(110, 0, 110, 0)
                : EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Column(
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
                                      .headlineMedium!
                                      .fontFamily,
                                  fontWeight: Theme.of(context)
                                      .textTheme
                                      .headlineMedium!
                                      .fontWeight,
                                  fontSize: Theme.of(context)
                                      .textTheme
                                      .headlineMedium!
                                      .fontSize,
                                  color:
                                      const Color.fromARGB(255, 139, 241, 84))),
                          TextSpan(
                            text: ' & '.toUpperCase(),
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                          TextSpan(
                              text: 'Mobile\n'.toUpperCase(),
                              style: TextStyle(
                                  fontFamily: Theme.of(context)
                                      .textTheme
                                      .headlineMedium!
                                      .fontFamily,
                                  fontWeight: Theme.of(context)
                                      .textTheme
                                      .headlineMedium!
                                      .fontWeight,
                                  fontSize: Theme.of(context)
                                      .textTheme
                                      .headlineMedium!
                                      .fontSize,
                                  color:
                                      const Color.fromARGB(255, 139, 241, 84))),
                          TextSpan(
                            text: 'Engineer'.toUpperCase(),
                            style: Theme.of(context).textTheme.headlineMedium,
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
                            style: Theme.of(context).textTheme.displaySmall,
                          ),
                          TextSpan(
                              text: 'Damilare Ajakaiye',
                              style: TextStyle(
                                  fontFamily: Theme.of(context)
                                      .textTheme
                                      .headlineMedium!
                                      .fontFamily,
                                  fontWeight: Theme.of(context)
                                      .textTheme
                                      .headlineMedium!
                                      .fontWeight,
                                  fontSize: Theme.of(context)
                                      .textTheme
                                      .displaySmall!
                                      .fontSize,
                                  color:
                                      const Color.fromARGB(255, 139, 241, 84))),
                          TextSpan(
                            text:
                                ', a highly skilled and results-driven software engineer specializing in web and mobile development. My focus is on user-centered design and building accessible, innovative solutions. I\'m eager to contribute my expertise and collaborate with diverse industries to drive success.',
                            style: Theme.of(context).textTheme.displaySmall,
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
                    width: width <= 550 ? 700 : 300,
                    child: PrimaryButton(
                      title: 'Explore Projects',
                      onPressed: () => Scrollable.ensureVisible(
                          widget.projectsKey.currentContext!,
                          alignment: 1,
                          duration: Duration(seconds: 1),
                          curve: Curves.ease),
                    )),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: width <= 550 ? 700 : 300,
                  child: SecondaryButton(
                      title: 'Start Project',
                      onPressed: () {
                        openUrl('mailto:hello@pozadkey.com?subject=Hello');
                      }),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
