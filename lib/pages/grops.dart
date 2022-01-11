import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:messaging/colors.dart';
import 'package:messaging/images.dart';
import 'package:messaging/modles/groups.dart';
import 'package:messaging/modles/messages.dart';
import 'package:messaging/pages/gmessages.dart';
import 'package:messaging/pages/wavecard.dart';

class Groups extends StatefulWidget {
  const Groups({Key? key}) : super(key: key);

  @override
  _GroupsState createState() => _GroupsState();
}

class _GroupsState extends State<Groups> {
  List<String> pictures = [
    memoji10,
    memoji4,
    memoji8,
    memoji1,
    memoji7,
    memoji4,
    memoji8
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.sfBgColor,
      body: SafeArea(
          child: SingleChildScrollView(
        physics: const ScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Groups',
                    style: GoogleFonts.aBeeZee(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: const BoxDecoration(
                      color: AppColors.white,
                      shape: BoxShape.circle,
                    ),
                    child: const Center(
                      child: Icon(Icons.add),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 35,
                width: MediaQuery.of(context).size.width,
                child: Center(
                  child: Text(
                    "Search for a group",
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
              ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: groups.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(
                          top: 18.0, left: 8, right: 8, bottom: 9),
                      child: GestureDetector(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => GroupMessages(
                                      messagess: messages[index],
                                      theme: groups[index],
                                    ))),
                        child: Container(
                          height: 150,
                          width: MediaQuery.of(context).size.width,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Stack(
                              fit: StackFit.loose,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Stack(
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  groups[index].name,
                                                  style: GoogleFonts.aBeeZee(
                                                    fontSize: 18,
                                                    color: AppColors.white,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),

                                        // Visibility(
                                        //     visible: groups[index].isMuted == false,
                                        //     child: Container(
                                        //         height: 20,
                                        //         width: 20,
                                        //         decoration: BoxDecoration(
                                        //           color: CupertinoColors.activeGreen,
                                        //           shape: BoxShape.circle,
                                        //         ))),
                                        groups[index].isMuted == false
                                            ? const Icon(
                                                Icons
                                                    .notifications_active_rounded,
                                                color: Colors.white)
                                            : const Icon(
                                                Icons.notifications_off_rounded,
                                                color: Colors.white),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Container(
                                      height: 30,
                                      width: MediaQuery.of(context).size.width /
                                          2.5,
                                      child: Center(
                                        child: Text(
                                          groups[index].whoisTyping,
                                          style: GoogleFonts.aBeeZee(
                                            color: Colors.grey,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w900,
                                          ),
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                        color: AppColors.white.withOpacity(.8),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        overlapped(),
                                        Container(
                                            height: 25,
                                            width: 25,
                                            decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: AppColors.white,
                                            ),
                                            child: Center(
                                              child: Text(
                                                groups[index]
                                                    .numOfMembers
                                                    .toString(),
                                                style: GoogleFonts.poppins(
                                                    fontSize: 12,
                                                    fontWeight:
                                                        FontWeight.w400),
                                              ),
                                            ))
                                      ],
                                    ),
                                  ],
                                ),
                                Visibility(
                                  visible: groups[index].isMuted == false,
                                  child: Positioned(
                                      bottom: 0,
                                      right: 30,
                                      child: Stack(
                                        children: [
                                          Container(
                                              height: 100,
                                              width: 100,
                                              decoration: BoxDecoration(),
                                              child: Image.asset(
                                                  messages[index].imgPath)),
                                          Positioned(
                                            right: 20,
                                            top: 22,
                                            child: Container(
                                              height: 19,
                                              width: 40,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  Container(
                                                    height: 9,
                                                    width: 9,
                                                    decoration: BoxDecoration(
                                                      color: Colors.grey[400],
                                                      shape: BoxShape.circle,
                                                    ),
                                                  ),
                                                  Container(
                                                    height: 9,
                                                    width: 9,
                                                    decoration: BoxDecoration(
                                                      color: Colors.grey[400],
                                                      shape: BoxShape.circle,
                                                    ),
                                                  ),
                                                  Container(
                                                    height: 9,
                                                    width: 9,
                                                    decoration: BoxDecoration(
                                                      color: Colors.grey[400],
                                                      shape: BoxShape.circle,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              decoration: BoxDecoration(
                                                  color: AppColors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                            ),
                                          )
                                        ],
                                      )),
                                )
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [
                                    groups[index].color,
                                    groups[index].color.withOpacity(.6),
                                  ],
                                  stops: const [
                                    0.0,
                                    1.0
                                  ],
                                  begin: FractionalOffset.topCenter,
                                  end: FractionalOffset.bottomCenter,
                                  tileMode: TileMode.repeated),
                              color: groups[index].color,
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 0.4,
                                  color: Colors.grey,
                                  spreadRadius: 0.2,
                                ),
                                BoxShadow(
                                  blurRadius: 0.4,
                                  color: Colors.grey,
                                  spreadRadius: 0.2,
                                ),
                                BoxShadow(
                                  blurRadius: 0.4,
                                  color: Colors.grey,
                                  spreadRadius: 0.2,
                                )
                              ],
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ),
                    );
                  })
            ],
          ),
        ),
      )),
    );
  }

  Widget overlapped() {
    const overlap = 20.0;
    final items = [
      ClipOval(
        child: Container(
          height: 40,
          width: 40,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.white,
            image: DecorationImage(image: AssetImage(memoji1)),
          ),
        ),
      ),
      ClipOval(
        child: Container(
          height: 40,
          width: 40,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.white,
            image: DecorationImage(image: AssetImage(memoji2)),
          ),
        ),
      ),
      ClipOval(
        child: Container(
          height: 40,
          width: 40,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.white,
            image: DecorationImage(image: AssetImage(memoji10)),
          ),
        ),
      ),
      ClipOval(
        child: Container(
          height: 40,
          width: 40,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.white,
            image: DecorationImage(image: AssetImage(memoji7)),
          ),
        ),
      ),
      ClipOval(
        child: Container(
          height: 40,
          width: 40,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.white,
            image: DecorationImage(image: AssetImage(memoji10)),
          ),
        ),
      ),
    ];

    List<Widget> stackLayers = List<Widget>.generate(items.length, (index) {
      return Padding(
        padding: EdgeInsets.only(
          left: index.toDouble() * overlap,
        ),
        child: items[index],
      );
    });

    return Stack(children: stackLayers.toList());
  }
}
