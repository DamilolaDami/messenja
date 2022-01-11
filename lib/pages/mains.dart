import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:messaging/colors.dart';
import 'package:messaging/pages/grops.dart';
import 'package:messaging/pages/main_age.dart';
import 'package:messaging/pages/noticifation.dart';
import 'package:messaging/pages/photo.dart';
import 'package:messaging/pages/vid_call.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class HomeScreens extends StatefulWidget {
  const HomeScreens({Key? key}) : super(key: key);

  @override
  _HomeScreensState createState() => _HomeScreensState();
}

class _HomeScreensState extends State<HomeScreens> {
  List<Widget> screens = [
    const HomePage(),
    const Groups(),
    const Phot(),
    const VideoCall(),
  ];
  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      screens: screens,
      confineInSafeArea: true,
      backgroundColor: Colors.white,
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: true,
      stateManagement: true,
      navBarStyle: NavBarStyle.style5,
      hideNavigationBarWhenKeyboardShows: true,
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: const ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      items: _navBarsItems(),
    );
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            children: [
              const Icon(CupertinoIcons.chat_bubble_2),
              Positioned(
                  right: 0,
                  child: Container(
                    height: 13,
                    width: 13,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.colorPrimary,
                    ),
                  ))
            ],
          ),
        ),
        title: ("Messages"),
        activeColorPrimary: AppColors.colorPrimary,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            children: [
              const Icon(CupertinoIcons.person_2),
              Positioned(
                  right: 0,
                  child: Container(
                    height: 13,
                    width: 13,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.colorPrimary,
                    ),
                  ))
            ],
          ),
        ),
        title: ("Groups"),
        activeColorPrimary: AppColors.colorPrimary,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      // PersistentBottomNavBarItem(
      //   icon: Padding(
      //     padding: const EdgeInsets.all(8.0),
      //     child: Stack(
      //       children: [
      //         const Icon(CupertinoIcons.bell),
      //         Positioned(
      //             right: 0,
      //             child: Container(
      //               height: 13,
      //               width: 13,
      //               decoration: const BoxDecoration(
      //                 shape: BoxShape.circle,
      //                 color: AppColors.colorPrimary,
      //               ),
      //             ))
      //       ],
      //     ),
      //   ),
      //   title: ("Notifications"),
      //   activeColorPrimary: AppColors.colorPrimary,
      //   inactiveColorPrimary: CupertinoColors.systemGrey,
      // ),
      PersistentBottomNavBarItem(
        icon: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(CupertinoIcons.phone),
        ),
        title: ("Photo"),
        activeColorPrimary: AppColors.colorPrimary,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(CupertinoIcons.settings),
        ),
        title: ("Settings"),
        activeColorPrimary: AppColors.colorPrimary,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
    ];
  }
}
