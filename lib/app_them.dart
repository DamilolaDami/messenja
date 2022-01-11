import 'package:messaging/colors.dart';

import 'package:flutter/material.dart';
import 'package:messaging/theme.dart';

class AppThemeData {
  static ThemeData appThemeData(BuildContext context) {
    return ThemeData(
      scaffoldBackgroundColor: Colors.white,
      textTheme: appTextTheme,
      primaryColor: AppColors.colorPrimary,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      tabBarTheme: const TabBarTheme(
        labelColor: AppColors.colorPrimary,
        unselectedLabelColor: Colors.grey,
      ),
    );
  }
}
