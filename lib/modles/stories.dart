import 'package:flutter/material.dart';
import 'package:messaging/images.dart';

class Stories {
  final String name;
  final String imgPath;
  final bool hasStory;
  final bool isFirst;
  final Color color;
  Stories(
      {required this.name,
      required this.imgPath,
      required this.color,
      required this.isFirst,
      required this.hasStory});
}

List<Stories> stories = [
  Stories(
    color: Colors.greenAccent,
    imgPath: memoji1,
    name: "Your Story",
    isFirst: true,
    hasStory: true,
  ),
  Stories(
    color: Colors.blueAccent,
    imgPath: memoji3,
    name: "Gold",
    isFirst: false,
    hasStory: true,
  ),
  Stories(
    color: Colors.purpleAccent,
    imgPath: memoji4,
    name: "Kim",
    hasStory: true,
    isFirst: false,
  ),
  Stories(
    color: Colors.deepOrangeAccent,
    imgPath: memoji5,
    name: "Wealth",
    hasStory: false,
    isFirst: false,
  ),
  Stories(
    color: Colors.amberAccent,
    imgPath: memoji6,
    name: "Dean",
    hasStory: false,
    isFirst: false,
  ),
  Stories(
    color: Colors.indigoAccent,
    imgPath: memoji7,
    hasStory: false,
    name: "Sam",
    isFirst: false,
  ),
];
