import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:messaging/colors.dart';
import 'package:messaging/images.dart';
import 'package:messaging/modles/messages.dart';
import 'package:messaging/modles/stories.dart';
import 'package:messaging/pages/chats.dart';
import 'package:messaging/theme.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.sfBgColor,
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      child: Image.asset('assets/images/search.png'),
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Messen',
                            style: GoogleFonts.aBeeZee(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: AppColors.colorPrimary,
                            ),
                          ),
                          TextSpan(
                            text: 'ger',
                            style: GoogleFonts.poppins(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: AppColors.colorPrimary,
                            ),
                          ),
                          TextSpan(
                            text: '.',
                            style: GoogleFonts.poppins(
                              fontSize: 30,
                              fontWeight: FontWeight.w600,
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Stack(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              color: AppColors.white,
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: AppColors.white,
                              ),
                              image: const DecorationImage(
                                  image: AssetImage(memoji1))),
                        ),
                        Positioned(
                            right: 0,
                            top: 10,
                            child: Container(
                              height: 11,
                              width: 11,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: CupertinoColors.activeGreen,
                              ),
                            ))
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 170,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Stories",
                              style: AppTheme.headline3,
                            ),
                            Container(
                                height: 40,
                                width: 40,
                                decoration: const BoxDecoration(
                                  color: AppColors.white,
                                  shape: BoxShape.circle,
                                ),
                                child: IconButton(
                                    onPressed: () {
                                      showModalBottomSheet(
                                          context: context,
                                          builder: (context) {
                                            return Container(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height /
                                                  2,
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Column(
                                                  children: [
                                                    Container(
                                                        height: 10,
                                                        width: 60,
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Colors.grey[300],
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                        )),
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                          "Add to your Story",
                                                          style: GoogleFonts
                                                              .aBeeZee(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 18,
                                                          ),
                                                        ),
                                                        IconButton(
                                                            onPressed: () {
                                                              Navigator.pop(
                                                                  context);
                                                            },
                                                            icon: Icon(
                                                                Icons.close))
                                                      ],
                                                    ),
                                                    SizedBox(height: 10),
                                                    Expanded(
                                                      child: Stack(
                                                        children: [
                                                          GridView.builder(
                                                              shrinkWrap: true,
                                                              itemCount:
                                                                  messages
                                                                      .length,
                                                              gridDelegate:
                                                                  const SliverGridDelegateWithMaxCrossAxisExtent(
                                                                maxCrossAxisExtent:
                                                                    150,
                                                                childAspectRatio:
                                                                    30 / 30,
                                                                mainAxisSpacing:
                                                                    5,
                                                              ),
                                                              itemBuilder:
                                                                  (context,
                                                                      index) {
                                                                return Padding(
                                                                  padding:
                                                                      const EdgeInsets
                                                                              .all(
                                                                          8.0),
                                                                  child:
                                                                      Container(
                                                                    height: 500,
                                                                    width: 100,
                                                                    child:
                                                                        Center(
                                                                      child: Image.asset(
                                                                          messages[index]
                                                                              .imgPath),
                                                                    ),
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              10),
                                                                      border:
                                                                          Border
                                                                              .all(
                                                                        color: messages[index].isonline ==
                                                                                true
                                                                            ? AppColors.colorPrimary
                                                                            : Color(0XFFE0E0E0),
                                                                        width:
                                                                            3,
                                                                      ),
                                                                      color: Colors
                                                                              .grey[
                                                                          300],
                                                                    ),
                                                                  ),
                                                                );
                                                              }),
                                                          Positioned(
                                                              bottom: 10,
                                                              left: 0,
                                                              right: 0,
                                                              child: Container(
                                                                height: 60,
                                                                width: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width,
                                                                child: Center(
                                                                  child: Text(
                                                                    "Add 5 Items",
                                                                    style: GoogleFonts
                                                                        .aBeeZee(
                                                                      color: AppColors
                                                                          .white,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                    ),
                                                                  ),
                                                                ),
                                                                decoration:
                                                                    BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              10),
                                                                  color: AppColors
                                                                      .colorPrimary,
                                                                ),
                                                              ))
                                                        ],
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                              ),
                                            );
                                          });
                                    },
                                    icon: const Icon(Icons.add)))
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Expanded(
                          child: ListView.builder(
                              itemCount: stories.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 8, right: 11, bottom: 9),
                                      child: Stack(
                                        children: [
                                          Container(
                                            height: 60,
                                            width: 60,
                                            decoration: BoxDecoration(
                                                color: AppColors.white,
                                                shape: BoxShape.circle,
                                                border: Border.all(
                                                  width: 2,
                                                  color: stories[index]
                                                              .hasStory ==
                                                          true
                                                      ? AppColors.colorPrimary
                                                      : AppColors.white,
                                                ),
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                        stories[index]
                                                            .imgPath))),
                                          ),
                                          Visibility(
                                            visible:
                                                stories[index].isFirst == true,
                                            child: Positioned(
                                                right: 0,
                                                top: 0,
                                                child: Container(
                                                  height: 25,
                                                  width: 25,
                                                  child: const Center(
                                                    child: Icon(
                                                      Icons.add,
                                                      size: 15,
                                                      color: AppColors.white,
                                                    ),
                                                  ),
                                                  decoration:
                                                      const BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    color:
                                                        AppColors.colorPrimary,
                                                  ),
                                                )),
                                          )
                                        ],
                                      ),
                                    ),
                                    Text(
                                      stories[index].name,
                                      style: GoogleFonts.aBeeZee(
                                        fontWeight: FontWeight.w600,
                                      ),
                                    )
                                  ],
                                );
                              }),
                        )
                      ],
                    ),
                  ),
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    color: AppColors.lightBlur1,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 35,
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                    child: Text(
                      "Search for a chat",
                      style: GoogleFonts.aBeeZee(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[400]),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: messages.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return ListTile(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ChatsPage(
                                      id: messages[index],
                                    ))),
                        contentPadding: const EdgeInsets.all(4),
                        trailing: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              messages[index].time,
                              style: GoogleFonts.aBeeZee(
                                fontSize: 10,
                                color: AppColors.optionIconColor,
                              ),
                            ),
                            const SizedBox(
                              height: 7,
                            ),
                            Visibility(
                              visible: messages[index].unread == true,
                              child: Container(
                                height: 20,
                                width: 20,
                                child: Center(
                                  child: Text(
                                    messages[index].messages.toString(),
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: AppColors.colorPrimary),
                              ),
                            )
                          ],
                        ),
                        leading: Stack(
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  color: AppColors.white,
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      width: 2, color: AppColors.white),
                                  image: DecorationImage(
                                      image:
                                          AssetImage(messages[index].imgPath))),
                            ),
                            Visibility(
                                visible: messages[index].isonline == true,
                                child: Positioned(
                                    right: 0,
                                    top: 10,
                                    child: Container(
                                      height: 11,
                                      width: 11,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: CupertinoColors.activeGreen,
                                      ),
                                    )))
                          ],
                        ),
                        title: Text(
                          messages[index].fullname,
                          style: GoogleFonts.aBeeZee(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                        ),
                        subtitle: messages[index].isTypng == true
                            ? Row(
                                children: [
                                  Container(
                                    height: 10,
                                    width: 10,
                                    decoration: BoxDecoration(
                                      color: Colors.grey[400],
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 4,
                                  ),
                                  Container(
                                    height: 10,
                                    width: 10,
                                    decoration: BoxDecoration(
                                      color: Colors.grey[400],
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 4,
                                  ),
                                  Container(
                                    height: 10,
                                    width: 10,
                                    decoration: BoxDecoration(
                                      color: Colors.grey[400],
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 4,
                                  ),
                                ],
                              )
                            : Text(
                                messages[index].message,
                                style: GoogleFonts.aBeeZee(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13,
                                  color: messages[index].unread == true
                                      ? AppColors.colorPrimary
                                      : Colors.grey,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                      );
                    })
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.colorPrimary,
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.home),
        title: ("Home"),
        activeColorPrimary: CupertinoColors.activeBlue,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.settings),
        title: ("Settings"),
        activeColorPrimary: CupertinoColors.activeBlue,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
    ];
  }
}
