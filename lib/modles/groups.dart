import 'package:flutter/material.dart';
import 'package:messaging/colors.dart';

class Groups {
  final Color color;
  final String name;
  final String whoisTyping;
  final bool isMuted;
  final int numOfMembers;

  Groups(
      {required this.color,
      required this.name,
      required this.numOfMembers,
      required this.isMuted,
      required this.whoisTyping});
}

List<Groups> groups = [
  Groups(
      color: Colors.cyan,
      name: "Flutter Devs",
      numOfMembers: 72,
      isMuted: false,
      whoisTyping: 'Junip is Typing....'),
  Groups(
      color: Colors.redAccent,
      name: "Fortniters",
      numOfMembers: 52,
      isMuted: false,
      whoisTyping: 'Hoekage is Typing...'),
  Groups(
      color: Colors.deepPurple,
      name: "Tesla Owners",
      numOfMembers: 72,
      isMuted: false,
      whoisTyping: 'Elon Musk is Typing....'),
  Groups(
      color: AppColors.colorPrimary,
      name: "Javascript Developers",
      isMuted: true,
      whoisTyping: 'Last seen: 2 Hours Ago',
      numOfMembers: 16),
  Groups(
    color: Colors.blueGrey,
    name: "Ruby on Rails",
    isMuted: true,
    numOfMembers: 20,
    whoisTyping: 'Last seen: Yersterday',
  ),
];
