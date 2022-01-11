import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:messaging/colors.dart';
import 'package:messaging/images.dart';
import 'package:messaging/modles/chat_messages.dart';
import 'package:messaging/modles/messages.dart';
import 'package:messaging/widgets/boxes.dart';

class ChatsPage extends StatefulWidget {
  final Messages id;
  const ChatsPage({Key? key, required this.id}) : super(key: key);

  @override
  _ChatsPageState createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.sfBgColor,
      body: SafeArea(
          child: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.arrow_back_ios)),
                      Column(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            child: Center(
                              child: Image.asset(widget.id.imgPath),
                            ),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: AppColors.colorPrimary,
                                width: 3,
                              ),
                              color: AppColors.white,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.id.fullname,
                            style: GoogleFonts.aBeeZee(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'active now',
                            style: GoogleFonts.aBeeZee(
                              color: CupertinoColors.activeGreen,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: const [
                      Boxes(
                        borderRadius: 7.0,
                        color: AppColors.greyText,
                        size: 18,
                        icon: Icons.call,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Boxes(
                        borderRadius: 7.0,
                        size: 18,
                        color: AppColors.greyText,
                        icon: Icons.video_call_rounded,
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: 20,
                width: 75,
                child: Center(
                  child: Text(
                    "TODAY",
                    style: GoogleFonts.aBeeZee(
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
              Stack(
                children: [
                  ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: chatMessages.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment:
                                chatMessages[index].messageType == "Sender"
                                    ? CrossAxisAlignment.start
                                    : CrossAxisAlignment.end,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    chatMessages[index].messageType == "Sender"
                                        ? MainAxisAlignment.start
                                        : MainAxisAlignment.end,
                                children: [
                                  Container(
                                    height: 43,
                                    width:
                                        MediaQuery.of(context).size.width / 2,
                                    child: Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: chatMessages[index].isVoicenote ==
                                              false
                                          ? Text(
                                              chatMessages[index].message,
                                              style: GoogleFonts.aBeeZee(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                                color: chatMessages[index]
                                                            .messageType ==
                                                        "Sender"
                                                    ? AppColors.colorPrimary
                                                    : AppColors.white,
                                              ),
                                            )
                                          : Image.asset(
                                              'assets/images/voicevn.png',
                                              fit: BoxFit.cover,
                                              color: chatMessages[index]
                                                          .messageType ==
                                                      "Sender"
                                                  ? AppColors.colorPrimary
                                                  : AppColors.white,
                                            ),
                                    ),
                                    decoration: BoxDecoration(
                                      color: chatMessages[index].messageType ==
                                              "Sender"
                                          ? AppColors.white
                                          : AppColors.colorPrimary,
                                      borderRadius: BorderRadius.circular(7),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 4,
                                  ),
                                  Visibility(
                                    visible: chatMessages[index].messageType ==
                                        "Receiver",
                                    child: Container(
                                      height: 30,
                                      width: 30,
                                      child: Image.asset(memoji1),
                                      decoration: const BoxDecoration(
                                        color: AppColors.white,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 4.0, left: 4),
                                child: Row(
                                  mainAxisAlignment:
                                      chatMessages[index].messageType ==
                                              "Sender"
                                          ? MainAxisAlignment.start
                                          : MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      chatMessages[index].time,
                                      style: GoogleFonts.aBeeZee(
                                        fontSize: 13,
                                        color: AppColors.fbBlue,
                                      ),
                                    ),
                                    Visibility(
                                        visible:
                                            chatMessages[index].isRead == true,
                                        child: const Icon(
                                          Icons.check,
                                          color: CupertinoColors.activeGreen,
                                          size: 15,
                                        )),
                                  ],
                                ),
                              )
                            ],
                          ),
                        );
                      }),
                  Positioned(
                    bottom: 170,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: 60,
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Boxes(
                                    icon: Icons.mic,
                                    iconColor: Colors.grey[600],
                                    borderRadius: 4,
                                    color: AppColors.white),
                                const SizedBox(
                                  width: 8,
                                ),
                                Boxes(
                                    icon: Icons.photo_camera,
                                    borderRadius: 4,
                                    iconColor: Colors.grey[600],
                                    color: AppColors.white),
                              ],
                            ),
                            Text(
                              'Type a message...',
                              style: GoogleFonts.poppins(
                                color: Colors.grey[700],
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Container(
                              height: 70,
                              width: 70,
                              child: const Center(
                                child: Boxes(
                                    icon: Icons.send_sharp,
                                    iconColor: AppColors.white,
                                    size: 19,
                                    borderRadius: 4,
                                    color: AppColors.colorPrimary),
                              ),
                              decoration: const BoxDecoration(
                                color: AppColors.colorPrimary,
                                shape: BoxShape.circle,
                              ),
                            )
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 0.9,
                              spreadRadius: 1,
                            ),
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 0.9,
                              spreadRadius: 1,
                            ),
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 0.9,
                              spreadRadius: 1,
                            )
                          ]),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
