import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsList {
  final String? title;

  final IconData? icon;
  final String? subtitle;

  SettingsList({this.title, this.icon, this.subtitle});
}

class SettingBottomList {
  final String? title;

  final IconData? icon;
  final String? subtitle;

  SettingBottomList({this.title, this.icon, this.subtitle});
}

List<SettingsList> settingsList = [
  SettingsList(
    icon: Icons.edit,
    title: 'Edit Profile',
    subtitle: 'Add Name, Number, Email and more',
  ),
  SettingsList(
    icon: Icons.chat,
    title: 'Chat Settings',
    subtitle: 'Chat Notification and more',
  ),
  SettingsList(
    icon: Icons.notifications,
    title: 'Notification Settings',
    subtitle: 'Notification Sounds and more',
  ),
  SettingsList(
    icon: Icons.storage,
    title: 'Storage Settings',
    subtitle: 'Storage and Backup',
  ),
  SettingsList(
    title: 'Theme Settings',
    icon: Icons.color_lens,
    subtitle: 'Dark Mode, Light Mode and more',
  )
];

List<SettingBottomList> settingBtmList = [
  SettingBottomList(
    icon: Icons.help,
    title: 'Help',
    subtitle: 'Help Center',
  ),
  SettingBottomList(
    icon: Icons.info,
    title: 'About',
    subtitle: 'About Us',
  ),
  SettingBottomList(
    icon: Icons.exit_to_app,
    title: 'Logout',
    subtitle: 'Logout',
  ),
];
