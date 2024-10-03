import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:url_launcher/url_launcher.dart';

void showDeveloperDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Dialog(
          child: Container(
            height: 230,
            width: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: CupertinoColors.white
            ),
            child:  Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const Text("Developer", style: TextStyle(
                   fontFamily: "Book",
                   fontSize: 22, 
                   fontWeight: FontWeight.bold,
                   color: CupertinoColors.black 
                  )),
                  const Gap(10),
                  const Text("If you want to get full information\n about the developer, click \n the button below!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18, fontFamily: "Book", color: CupertinoColors.black
                    ),
                  ),
                  const Padding(
                    padding:  EdgeInsets.all(8.0),
                    child:  Divider(color: Colors.pink),
                  ),
                  InkWell(
                    onTap: () {
                      _launchDeveloper();
                    },
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    child: const Text("About Developer", style: TextStyle(
                      fontFamily: "Book", fontSize: 22, fontWeight: FontWeight.bold, color: Colors.pink
                    )),
                  )
                ],
              ),
            ),
          ),
        )
      );
    },
  );
}
void _launchDeveloper() async {
  const url = 'https://t.me/iftixor_ergashboyev';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'not opening';
  }
}