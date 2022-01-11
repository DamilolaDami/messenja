import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:messaging/colors.dart';
import 'package:messaging/modles/calls_model.dart';

class AllCalls extends StatefulWidget {
  const AllCalls({Key? key}) : super(key: key);

  @override
  _AllCallsState createState() => _AllCallsState();
}

class _AllCallsState extends State<AllCalls> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: callsmodel.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: AppColors.colorPrimary,
              backgroundImage: AssetImage(callsmodel[index].photoPath ?? ''),
            ),
            trailing: Text(
              callsmodel[index].day.toString(),
              style: GoogleFonts.aBeeZee(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            subtitle: Row(
              children: [
                const Icon(
                  Icons.call,
                  size: 14,
                ),
                const SizedBox(
                  width: 3,
                ),
                Text(callsmodel[index].status ?? ''),
              ],
            ),
            title: Text(
              callsmodel[index].title ?? '',
              style: GoogleFonts.aBeeZee(
                color: callsmodel[index].status == 'Missed'
                    ? Colors.red
                    : Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          );
        });
  }
}
