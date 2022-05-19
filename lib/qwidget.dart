// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:lumos_task/qclass.dart';
import 'package:google_fonts/google_fonts.dart';

class Qwidget extends StatelessWidget {
  Qclass q;
  Qwidget({@required this.q});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 13),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xff2b2b41),
        border: Border.all(
          color: Color(0xff5256FE),
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Card(
        // shape: RoundedRectangleBorder(
        //   borderRadius: BorderRadius.circular(12),
        // ),
        color: Color(0xff2b2b41),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
          child: InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/qpage', arguments: {'qdata': q});
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  q.question,
                  style: GoogleFonts.ubuntu(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  q.company,
                  style: GoogleFonts.ubuntu(
                    color: Color(0xff017EA7),
                    fontSize: 11,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
