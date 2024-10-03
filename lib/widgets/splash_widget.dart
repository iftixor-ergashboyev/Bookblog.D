import 'dart:async';

import 'package:bookblog/pages/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 4), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomePage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: CupertinoColors.systemPink,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text("Bookblog_D", style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 22, color: CupertinoColors.white, fontFamily: "Book"
            )),
          ),
          CupertinoActivityIndicator(color: CupertinoColors.white)
        ],
      )
    );
  }
}