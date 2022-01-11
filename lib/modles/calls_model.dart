import 'package:flutter/material.dart';
import 'package:messaging/images.dart';

class CallsModel {
  final String? title;
  final int? timmesCalled;
  final String? photoPath;
  final String? status;
  final String? day;

  CallsModel(
      {this.title, this.timmesCalled, this.photoPath, this.day, this.status});
}

List<CallsModel> callsmodel = [
  CallsModel(
    title: 'John',
    timmesCalled: 1,
    photoPath: memoji12,
    status: 'Missed',
    day: 'Today',
  ),
  CallsModel(
    title: 'Tobi',
    timmesCalled: 5,
    photoPath: memoji4,
    status: 'Outgoing',
    day: 'Yesterday',
  ),
  CallsModel(
    title: 'Mike',
    timmesCalled: 11,
    photoPath: memoji1,
    status: 'Incoming',
    day: '1/1/12',
  ),
  CallsModel(
    title: 'John',
    timmesCalled: 6,
    photoPath: memoji8,
    status: 'Incoming',
    day: '2/13/21',
  ),
  CallsModel(
    title: 'Victor',
    timmesCalled: 7,
    photoPath: memoji9,
    status: 'Incoming',
    day: '2/13/21',
  ),
  CallsModel(
    title: 'Louis',
    timmesCalled: 6,
    photoPath: memoji17,
    status: 'Missed',
    day: '2/13/21',
  ),
  CallsModel(
    title: 'Barry',
    timmesCalled: 6,
    photoPath: memoji20,
    status: 'Missed',
    day: '2/13/21',
  ),
  CallsModel(
    title: 'Lin',
    timmesCalled: 6,
    photoPath: memoji14,
    status: 'Incoming',
    day: '2/13/21',
  ),
  CallsModel(
    title: 'Kim',
    timmesCalled: 6,
    photoPath: memoji15,
    status: 'Incoming',
    day: '4/13/21',
  ),
];
