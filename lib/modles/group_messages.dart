import 'package:flutter/material.dart';
import 'package:messaging/images.dart';

class GroupMessagesChat {
  final String messages;
  final Color color;
  final String messageType;
  final bool isLast;
  final bool isVoiceNote;
  final String time;
  final bool isReply;
  final bool rected;
  final bool enlarged;
  final String imgPath;

  GroupMessagesChat(
      {required this.messages,
      required this.time,
      required this.isLast,
      required this.rected,
      required this.color,
      required this.enlarged,
      required this.imgPath,
      required this.messageType,
      required this.isVoiceNote,
      required this.isReply});
}

List<GroupMessagesChat> groupMessagechats = [
  GroupMessagesChat(
      messages: 'Yo Loosers',
      isLast: false,
      rected: false,
      color: Colors.amberAccent,
      enlarged: false,
      time: "3:00 P.M",
      imgPath: memoji10,
      messageType: "Sender",
      isVoiceNote: false,
      isReply: false),
  GroupMessagesChat(
      messages: 'Yo Noob lol',
      enlarged: false,
      color: Colors.amberAccent,
      rected: false,
      isLast: false,
      time: "3:03 P.M",
      messageType: "Sender",
      imgPath: memoji4,
      isVoiceNote: false,
      isReply: true),
  GroupMessagesChat(
      messages: 'Can yall stfu',
      isLast: false,
      color: Colors.amberAccent,
      enlarged: false,
      messageType: "Reciever",
      rected: false,
      time: "3:10 P.M",
      imgPath: memoji7,
      isVoiceNote: false,
      isReply: false),
  GroupMessagesChat(
      messages: 'Bro stfu, you don\'t even have a girl bro',
      color: Colors.amberAccent,
      rected: true,
      isLast: false,
      enlarged: true,
      time: "3:30 P.M",
      messageType: "Sender",
      imgPath: memoji2,
      isVoiceNote: false,
      isReply: true),
  GroupMessagesChat(
      messages: 'LMFAOOO',
      isLast: false,
      enlarged: false,
      color: Colors.amberAccent,
      rected: false,
      time: "3:23 P.M",
      messageType: "Sender",
      imgPath: memoji8,
      isVoiceNote: false,
      isReply: true),
  GroupMessagesChat(
      messages: 'Tf this gotta do with anything bro y\'all stupid lol',
      enlarged: true,
      color: Colors.amberAccent,
      isLast: false,
      time: "3:25 P.M",
      messageType: "Reciever",
      rected: true,
      imgPath: memoji8,
      isVoiceNote: false,
      isReply: true),
  GroupMessagesChat(
      messages: 'Ayo, ya boi just got a dub on fort, who need smoke?',
      enlarged: true,
      color: Colors.amberAccent,
      rected: true,
      isLast: false,
      time: "3:23 P.M",
      messageType: "Sender",
      imgPath: memoji13,
      isVoiceNote: false,
      isReply: true),
  GroupMessagesChat(
      messages: 'this nigga 42 talking bout who needs smoke lol',
      isLast: true,
      enlarged: true,
      color: Colors.amberAccent,
      time: "3:23 P.M",
      messageType: "Reciever",
      imgPath: memoji13,
      rected: true,
      isVoiceNote: false,
      isReply: true),
];
