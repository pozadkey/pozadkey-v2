// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class StackModel {
  String title;
  double width;

  StackModel({
    required this.title,
    required this.width,
  });
}

List<StackModel> stackList = [
  StackModel(
    title: 'JavaScript',
    width: 80,
  ),
  StackModel(
    title: 'Dart',
    width: 50,
  ),
  StackModel(
    title: 'Flutter',
    width: 80,
  ),
  StackModel(
    title: 'Firebase',
    width: 50,
  ),
  StackModel(
    title: 'Cloud Firestore',
    width: 80,
  ),
  StackModel(
    title: 'Node.js',
    width: 50,
  ),
  StackModel(
    title: 'Riverpod',
    width: 50,
  ),
  StackModel(
    title: 'MongoDb',
    width: 80,
  ),
  StackModel(
    title: 'Express.js',
    width: 50,
  ),
  StackModel(
    title: 'Mongoose',
    width: 80,
  ),
  StackModel(
    title: 'Mocha',
    width: 50,
  ),
  StackModel(
    title: 'Android Studio',
    width: 50,
  ),
  StackModel(
    title: 'Xcode',
    width: 80,
  ),
  StackModel(
    title: 'Postman',
    width: 50,
  ),
  StackModel(
    title: 'Git',
    width: 50,
  ),
];
