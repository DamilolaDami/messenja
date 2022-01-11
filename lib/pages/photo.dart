import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:messaging/colors.dart';
import 'package:messaging/pages/calltabs/all.dart';
import 'package:messaging/pages/calltabs/miised.dart';
import 'package:messaging/pages/calltabs/voicemail.dart';

class Phot extends StatelessWidget {
  const Phot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.sfBgColor,
      body: SafeArea(
        child: DefaultTabController(
          length: 3,
          child: Padding(
            padding: const EdgeInsets.all(9.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Calls",
                      style: GoogleFonts.aBeeZee(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: const BoxDecoration(
                        color: AppColors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Icon(
                          Icons.call,
                          color: Colors.grey[600],
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 35,
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                    child: Text(
                      "Search for a call session",
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
                const SizedBox(
                  height: 10,
                ),
                TabBar(
                  labelColor: AppColors.colorPrimary,
                  tabs: [
                    Tab(
                      child: Text(
                        "All",
                        style: GoogleFonts.aBeeZee(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Missed",
                        style: GoogleFonts.aBeeZee(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Voicemail",
                        style: GoogleFonts.aBeeZee(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                const Expanded(
                  child: TabBarView(
                      physics: ScrollPhysics(
                        parent: AlwaysScrollableScrollPhysics(),
                      ),
                      children: [
                        AllCalls(),
                        MissedCalls(),
                        VoiceCalls(),
                      ]),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
