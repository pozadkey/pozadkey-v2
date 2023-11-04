// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pozadkey_v2/models/projects/articles_model.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../components/buttons/link_icon.dart';

class Mobile extends StatefulWidget {
  const Mobile({Key? key}) : super(key: key);

  @override
  State<Mobile> createState() => _MobileState();
}

class _MobileState extends State<Mobile> {
  @override
  Widget build(BuildContext context) {

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
        itemCount: articlesModelList.length,
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        physics: ScrollPhysics(),
        itemBuilder: (BuildContext ctx, index) {
          ArticlesModel articles = articlesModelList[index];
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              if (articles.image.isEmpty)
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
                      articles.title.toUpperCase(),
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
                          image: AssetImage(articles.image), fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(3.0),
                      border: Border.all(
                        color: Color.fromRGBO(19, 19, 19, 1),
                      )),
                ),
              SizedBox(
                height: 15,
              ),
              LinkIcon(
                icon: FontAwesomeIcons.arrowUpRightFromSquare,
                onPressed: () => openUrl(articles.live),
              ),
              SizedBox(
                height: 25,
              )
            ],
          );
        });
  }
}
