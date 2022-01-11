import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:messaging/colors.dart';
import 'package:messaging/images.dart';
import 'package:messaging/modles/group_messages.dart';
import 'package:messaging/modles/groups.dart';
import 'package:messaging/modles/messages.dart';
import 'package:messaging/modles/stories.dart';

class GroupMessages extends StatelessWidget {
  final Messages messagess;
  final Groups theme;
  const GroupMessages({Key? key, required this.messagess, required this.theme})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.sfBgColor,
        appBar: AppBar(
          backgroundColor: theme.color,
          actions: const [
            Icon(Icons.more_vert_rounded),
            Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: Icon(Icons.phone),
            )
          ],
          title: Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  theme.name,
                  style: GoogleFonts.aBeeZee(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: AppColors.white,
                  ),
                ),
                Container(
                  height: 30,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: messages.length,
                      itemBuilder: (context, index) {
                        return Visibility(
                          visible: messages[index].name != 'Your Story',
                          child: Text(
                            messages[index].name + ', ',
                            overflow: TextOverflow.ellipsis,
                            style: GoogleFonts.aBeeZee(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        );
                      }),
                )
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Container(
                height: 20,
                width: 75,
                child: const Center(
                  child: Text(
                    "TODAY",
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                    color: AppColors.white.withOpacity(.6),
                    borderRadius: BorderRadius.circular(10)),
              ),
              const SizedBox(
                height: 3,
              ),
              ListView.builder(
                  itemCount: groupMessagechats.length,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 8),
                      child: Column(
                        crossAxisAlignment:
                            groupMessagechats[index].messageType == "Reciever"
                                ? CrossAxisAlignment.end
                                : CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment:
                            groupMessagechats[index].messageType == "Sender"
                                ? MainAxisAlignment.start
                                : MainAxisAlignment.end,
                        children: [
                          Row(
                            mainAxisAlignment:
                                groupMessagechats[index].messageType ==
                                        "Reciever"
                                    ? MainAxisAlignment.end
                                    : MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Visibility(
                                  visible:
                                      groupMessagechats[index].messageType ==
                                          "Sender",
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    child: Center(
                                        child: Image.asset(
                                            groupMessagechats[index].imgPath)),
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: AppColors.white,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 3,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: groupMessagechats[index].enlarged == true
                                    ? Stack(
                                        overflow: Overflow.visible,
                                        children: [
                                          GestureDetector(
                                            onLongPress: () {
                                              showDialog(
                                                  context: context,
                                                  builder: (context) {
                                                    return Dialog(
                                                        backgroundColor:
                                                            Colors.transparent,
                                                        insetPadding:
                                                            EdgeInsets.all(10),
                                                        child: Stack(
                                                          overflow:
                                                              Overflow.visible,
                                                          alignment:
                                                              Alignment.center,
                                                          children: <Widget>[
                                                            Container(
                                                                width: double
                                                                    .infinity,
                                                                height: 340,
                                                                decoration: BoxDecoration(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            15),
                                                                    color: Colors
                                                                        .white),
                                                                padding:
                                                                    const EdgeInsets
                                                                            .fromLTRB(
                                                                        20,
                                                                        50,
                                                                        20,
                                                                        20),
                                                                child: Column(
                                                                  children: const [
                                                                    ListTile(
                                                                      title: Text(
                                                                          'Star'),
                                                                      trailing:
                                                                          Icon(Icons
                                                                              .star),
                                                                    ),
                                                                    ListTile(
                                                                      title: Text(
                                                                          'Reply'),
                                                                      trailing:
                                                                          Icon(Icons
                                                                              .reply),
                                                                    ),
                                                                    ListTile(
                                                                      title: Text(
                                                                          'Forward'),
                                                                      trailing:
                                                                          Icon(Icons
                                                                              .forward),
                                                                    ),
                                                                    ListTile(
                                                                      title: Text(
                                                                          'Delete'),
                                                                      trailing:
                                                                          Icon(
                                                                        Icons
                                                                            .delete,
                                                                        color: CupertinoColors
                                                                            .systemRed,
                                                                      ),
                                                                    ),
                                                                  ],
                                                                )),
                                                            // Positioned(
                                                            //     top: -100,
                                                            //     child:
                                                            //         Image.asset(
                                                            //             memoji5,
                                                            //             width:
                                                            //                 150,
                                                            //             height:
                                                            //                 150))
                                                          ],
                                                        ));
                                                  });
                                            },
                                            child: Container(
                                              height: 55,
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  1.5,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Text(
                                                  groupMessagechats[index]
                                                      .messages,
                                                  style: GoogleFonts.aBeeZee(
                                                    fontWeight: FontWeight.w500,
                                                    color: groupMessagechats[
                                                                    index]
                                                                .messageType ==
                                                            "Reciever"
                                                        ? Colors.white
                                                        : Colors.black,
                                                  ),
                                                ),
                                              ),
                                              decoration: BoxDecoration(
                                                  color: groupMessagechats[
                                                                  index]
                                                              .messageType ==
                                                          "Reciever"
                                                      ? theme.color
                                                      : AppColors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(8)),
                                            ),
                                          ),
                                          Positioned(
                                              right: 0,
                                              bottom: -4,
                                              child: Visibility(
                                                visible:
                                                    groupMessagechats[index]
                                                            .rected ==
                                                        true,
                                                child: Container(
                                                    height: 20,
                                                    width: 20,
                                                    child: Stack(
                                                      overflow:
                                                          Overflow.visible,
                                                      children: [
                                                        Center(
                                                            child: Image.asset(
                                                                'assets/images/haha.png')),
                                                        Positioned(
                                                            right: -4,
                                                            top: -8,
                                                            child: Container(
                                                                height: 18,
                                                                width: 18,
                                                                decoration:
                                                                    const BoxDecoration(
                                                                  shape: BoxShape
                                                                      .circle,
                                                                  color: Colors
                                                                      .black,
                                                                ),
                                                                child:
                                                                    const Center(
                                                                        child:
                                                                            Text(
                                                                  '3',
                                                                  style:
                                                                      TextStyle(
                                                                    color: Colors
                                                                        .white,
                                                                    fontSize:
                                                                        12,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                  ),
                                                                ))))
                                                      ],
                                                    ),
                                                    decoration:
                                                        const BoxDecoration(
                                                      shape: BoxShape.circle,
                                                    )),
                                              ))
                                        ],
                                      )
                                    : Stack(
                                        overflow: Overflow.visible,
                                        children: [
                                          Container(
                                            height: 40,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                3,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Text(
                                                groupMessagechats[index]
                                                    .messages,
                                                style: GoogleFonts.aBeeZee(
                                                  fontWeight: FontWeight.w500,
                                                  color: groupMessagechats[
                                                                  index]
                                                              .messageType ==
                                                          "Reciever"
                                                      ? Colors.white
                                                      : Colors.black,
                                                ),
                                              ),
                                            ),
                                            decoration: BoxDecoration(
                                                color: groupMessagechats[index]
                                                            .messageType ==
                                                        "Reciever"
                                                    ? theme.color
                                                    : AppColors.white,
                                                borderRadius:
                                                    BorderRadius.circular(8)),
                                          ),
                                          Positioned(
                                              right: 0,
                                              bottom: -4,
                                              child: Visibility(
                                                visible:
                                                    groupMessagechats[index]
                                                            .rected ==
                                                        true,
                                                child: Container(
                                                    height: 20,
                                                    width: 20,
                                                    child: Center(
                                                        child: Image.asset(
                                                            'assets/images/haha.png')),
                                                    decoration:
                                                        const BoxDecoration(
                                                      shape: BoxShape.circle,
                                                    )),
                                              ))
                                        ],
                                      ),
                              ),
                            ],
                          ),
                          Visibility(
                            visible: groupMessagechats[index].isLast == true,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 58.0),
                              child: Container(
                                padding: EdgeInsets.zero,
                                margin: EdgeInsets.zero,
                                height: 20,
                                width: 60,
                                child: ListView.builder(
                                    itemCount: 5,
                                    scrollDirection: Axis.horizontal,
                                    padding: EdgeInsets.zero,
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    itemBuilder: (context, index) {
                                      return Container(
                                        height: 20,
                                        width: 20,
                                        child: Center(
                                            child: Image.asset(
                                                groupMessagechats[index]
                                                    .imgPath)),
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: AppColors.white,
                                        ),
                                      );
                                    }),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 58.0),
                            child: Text(
                              groupMessagechats[index].time,
                              style: const TextStyle(
                                fontSize: 13,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
        ));
  }
}
