// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Qpage extends StatefulWidget {
  @override
  State<Qpage> createState() => _QpageState();
}

class _QpageState extends State<Qpage> {
  Map data = {};
  String inputText;
  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      backgroundColor: Color(0xff1b1f3c),
      appBar: AppBar(title: Text('Page 2')),
      body: Container(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 40, bottom: 11, left: 52, right: 52),
              child: Column(
                children: [
                  Text(
                    data['qdata'].question,
                    style: GoogleFonts.ubuntu(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 15,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        '${'By ' + data['qdata'].author} ,',
                        style: GoogleFonts.ubuntu(
                          color: Color(0xff017EA7),
                          fontWeight: FontWeight.w700,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      Text(
                        '${' in ' + data['qdata'].company} ',
                        style: GoogleFonts.ubuntu(
                          color: Color(0xff017EA7),
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                  TextField(
                    onChanged: (value) {
                      setState(() {
                        inputText = value;
                      });
                    },
                    maxLength: 300,
                    maxLines: 5,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          borderSide: BorderSide(
                            color: Color.fromRGBO(166, 166, 166, 0.46),
                            width: 2,
                          )),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          borderSide: BorderSide(
                            color: Color.fromRGBO(166, 166, 166, 0.46),
                            width: 2,
                          )),
                      hintText: 'Type Answer Here',
                      hintStyle: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 0.55),
                        fontSize: 18,
                      ),
                      counterStyle: GoogleFonts.ubuntu(
                        color: Color(0xff017EA7),
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  FlatButton(
                    height: 52,
                    minWidth: 242,
                    onPressed: () {},
                    color: Color(0xff007EA7),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(672)),
                    child: Text(
                      "Submit",
                      style: GoogleFonts.ubuntu(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
