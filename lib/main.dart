import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:messaging/app_them.dart';
import 'package:messaging/pages/main_age.dart';
import 'package:messaging/pages/mains.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth != 0) {
          final size = Size(constraints.maxWidth, constraints.maxHeight);
          ScreenUtil.init(
            BoxConstraints(
              maxWidth: constraints.maxWidth,
              maxHeight: constraints.maxHeight,
            ),
            designSize: size,
          );
        }
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: AppThemeData.appThemeData(context),
          home: HomeScreens(),
        );
      },
    );
  }
}
