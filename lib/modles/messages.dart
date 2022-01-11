import 'package:flutter/material.dart';
import 'package:messaging/images.dart';

class Messages {
  final String name;
  final String imgPath;
  final bool hasStory;
  final Color color;
  final String time;
  final String message;
  final String fullname;
  final bool isTypng;
  final bool isFirst;
  final int messages;
  final bool unread;
  final bool isonline;

  Messages(
      {required this.name,
      required this.time,
      required this.message,
      required this.fullname,
      required this.imgPath,
      required this.isFirst,
      required this.isonline,
      required this.messages,
      required this.color,
      required this.unread,
      required this.isTypng,
      required this.hasStory});
}

List<Messages> messages = [
  Messages(
      color: Colors.greenAccent,
      imgPath: memoji2,
      messages: 6,
      name: "Your Story",
      isFirst: true,
      hasStory: true,
      fullname: "Alex Yunith",
      message: "Hey, i just sent the package",
      isonline: true,
      unread: true,
      isTypng: false,
      time: "2 MINS AGO"),
  Messages(
      color: Colors.blueAccent,
      imgPath: memoji3,
      name: "Gold",
      hasStory: true,
      isFirst: false,
      isTypng: true,
      fullname: "GolBerg GoldBerg",
      message: "Hey Goodday!",
      isonline: true,
      messages: 2,
      unread: true,
      time: "1 HOURS AGO"),
  Messages(
      color: Colors.purpleAccent,
      isFirst: false,
      imgPath: memoji4,
      name: "Dean",
      hasStory: true,
      isTypng: false,
      isonline: true,
      fullname: "Dean Dayne",
      message: "Hey Goodday!",
      messages: 3,
      unread: true,
      time: "1 HOURS AGO"),
  Messages(
    color: Colors.deepOrangeAccent,
    isFirst: false,
    imgPath: memoji5,
    name: "Wealth",
    hasStory: false,
    fullname: "Wealth Williams",
    message: "Got the sheets!",
    messages: 6,
    isonline: false,
    unread: false,
    isTypng: false,
    time: "20 HOURS AGO",
  ),
  Messages(
      color: Colors.amberAccent,
      isFirst: false,
      imgPath: memoji6,
      name: "Kim",
      hasStory: false,
      fullname: "Kim K",
      message: "Hey Goodday!",
      unread: false,
      isonline: true,
      messages: 12,
      isTypng: true,
      time: "YERSTERDAY"),
  Messages(
      color: Colors.indigoAccent,
      isFirst: false,
      imgPath: memoji7,
      hasStory: false,
      messages: 10,
      unread: false,
      name: "Sam",
      isTypng: false,
      fullname: "GolBerg GoldBerg",
      message: "You: OKay, got it",
      isonline: false,
      time: "5 DAYS AGO"),
  Messages(
      color: Colors.indigoAccent,
      isFirst: false,
      imgPath: memoji8,
      hasStory: false,
      unread: true,
      name: "Sam",
      isTypng: false,
      isonline: true,
      fullname: "Felix Anderson",
      message: "Alright well do just that",
      messages: 3,
      time: "5 DAYS AGO"),
  Messages(
      color: Colors.indigoAccent,
      isFirst: false,
      imgPath: memoji9,
      hasStory: false,
      unread: true,
      name: "Sam",
      isTypng: false,
      messages: 1,
      fullname: "Pharell",
      isonline: false,
      message: "I just returned those items to the store",
      time: "5 DAYS AGO"),
];
