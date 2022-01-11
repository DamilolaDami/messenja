import 'package:flutter/material.dart';

class ChatMessages {
  final String messageType;
  final String time;
  final String message;
  final bool isRead;
  final bool? isVoicenote;

  ChatMessages(
      {required this.messageType,
      required this.time,
      required this.message,
      this.isVoicenote,
      required this.isRead});
}

List<ChatMessages> chatMessages = [
  ChatMessages(
      messageType: 'Sender',
      time: '11:05 AM',
      message: "I have told the guy to drop it",
      isVoicenote: false,
      isRead: true),
  ChatMessages(
      messageType: 'Receiver',
      time: '11:15 AM',
      isVoicenote: false,
      message: "Okay thank you",
      isRead: true),
  ChatMessages(
      messageType: 'Sender',
      time: '11:45 AM',
      message: "I will be going back home ",
      isVoicenote: false,
      isRead: true),
  ChatMessages(
      messageType: 'Receiver',
      time: '12:15 AM',
      message: "Okay i will comeover soon",
      isVoicenote: true,
      isRead: true),
  ChatMessages(
      messageType: 'Sender',
      time: '11:05 AM',
      message: "Yes! i did exactly that",
      isVoicenote: false,
      isRead: true),
  ChatMessages(
      messageType: 'Receiver',
      time: '11:15 AM',
      message: "Okay thank you",
      isVoicenote: false,
      isRead: true),
  ChatMessages(
      messageType: 'Sender',
      time: '11:45 AM',
      message: "I will be going back home now",
      isVoicenote: true,
      isRead: true),
  ChatMessages(
      messageType: 'Sender',
      time: '11:45 AM',
      isVoicenote: false,
      message: "I will be going back home now",
      isRead: true),
  ChatMessages(
      messageType: 'Receiver',
      time: '12:15 AM',
      message: "Okay i will comeover soon",
      isVoicenote: true,
      isRead: true),
];
