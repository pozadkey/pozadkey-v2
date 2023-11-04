// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../../components/buttons/link_icon.dart';
import '../../../../../models/projects/tools_projects_model.dart.dart';

class Mobile extends StatefulWidget {
  const Mobile({Key? key}) : super(key: key);

  @override
  State<Mobile> createState() => _MobileState();
}

class _MobileState extends State<Mobile> {
  @override
  Widget build(BuildContext context) {
    final stackFont = TextStyle(
        fontSize: 14,
        color: Color.fromRGBO(255, 255, 255, 1),
        fontFamily: 'SpaceGrotesk',
        letterSpacing: 0.3,
        fontWeight: FontWeight.w400);

    final imageFont = TextStyle(
        fontSize: 24,
        color: Colors.white,
        fontFamily: 'ClashDisplay',
        fontWeight: FontWeight.w500,
        letterSpacing: 0.5);

    openUrl(pageUrl) async {
      final url = Uri.parse(pageUrl);
      if (await canLaunchUrl(url)) {
        await launchUrl(url);
      } else {
        throw 'Could not launch $url';
      }
    }

    return ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: toolProjectsList.length,
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        physics: ScrollPhysics(),
        itemBuilder: (BuildContext ctx, index) {
          ToolProjectsModel toolProjects = toolProjectsList[index];
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              if (toolProjects.image.isEmpty)
                Container(
                  width: 500,
                  height: 300,
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3.0),
                      color: Color.fromRGBO(19, 19, 19, 1),
                      border: Border.all(
                        color: Color.fromRGBO(19, 19, 19, 1),
                      )),
                  child: Center(
                    child: Text(
                      toolProjects.title.toUpperCase(),
                      style: imageFont,
                      textAlign: TextAlign.center,
                    ),
                  ),
                )
              else
                Container(
                  width: 500,
                  height: 300,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(19, 19, 19, 1),
                      image: DecorationImage(
                          image: AssetImage(toolProjects.image),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(3.0),
                      border: Border.all(
                        color: Color.fromRGBO(19, 19, 19, 1),
                      )),
                ),
              SizedBox(
                height: 10,
              ),
              FittedBox(
                child: Row(
                  children: toolProjects.stack
                      .map((tech) => Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(43, 43, 43, 1),
                              borderRadius: BorderRadius.circular(2.0)),
                          child: Text(
                            tech,
                            style: stackFont,
                          )))
                      .expand((widget) => [
                            widget,
                            SizedBox(width: 10),
                          ])
                      .toList(),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 500,
                child: Text(
                  toolProjects.title,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              SizedBox(
                width: 500,
                child: Text(
                  toolProjects.info,
                  style: Theme.of(context).textTheme.displaySmall,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              if (toolProjects.github.isEmpty)
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    LinkIcon(
                      icon: FontAwesomeIcons.arrowUpRightFromSquare,
                      onPressed: () => openUrl(toolProjects.live),
                    ),
                  ],
                )
              else
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    LinkIcon(
                      icon: FontAwesomeIcons.github,
                      onPressed: () => openUrl(toolProjects.github),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    LinkIcon(
                      icon: FontAwesomeIcons.arrowUpRightFromSquare,
                      onPressed: () => openUrl(toolProjects.live),
                    ),
                  ],
                ),
              SizedBox(
                height: 25,
              )
            ],
          );
        });
  }
}
