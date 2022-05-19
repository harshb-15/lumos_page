// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:lumos_task/qclass.dart';
import 'package:lumos_task/qwidget.dart';
import 'package:lumos_task/qpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Page 1',
      routes: {
        '/': (context) => MyHomePage(title: 'Page 1'),
        '/qpage': (context) => Qpage(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  const MyHomePage({Key key, @required this.title}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List question_list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1b1f3c),
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
          margin: EdgeInsets.symmetric(horizontal: 24, vertical: 13),
          child: ListView.builder(
            itemCount: question_list.length,
            itemBuilder: (context, index) => Qwidget(
              q: Qclass(question: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam", company: "Microsoft", author: "Parv Kohli"),
            ),
          )),
    );
  }
}
