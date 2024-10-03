import 'package:bookblog/widgets/developer_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../widgets/dialog.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.pinkAccent,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const Gap(30),
              InkWell(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () {
                  showMyDialog(context);
                },
                child: ClipOval(
                  child: Image.asset("assets/image/profile_picture.png",
                  height: 140,
                    width: 140,
                  ),
                ),
              ),
              const Gap(10),
             const  Row(
               mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   Text("Bookblog_D", style: TextStyle(
                    fontFamily: "Book", fontSize: 30, fontWeight: FontWeight.bold, color: CupertinoColors.white
                  )),
                  SizedBox(width: 5),
                  Icon(CupertinoIcons.checkmark_seal_fill, color: CupertinoColors.white, size: 30)
                ],
              ),
              const Gap(20),
              InkWell(
                onTap:  () {
                  _launchTelegram();
                },
                child: Container(
                  height: 70,
                  width: 260,
                  decoration: BoxDecoration(
                    border: Border.all(color: CupertinoColors.white, width: 3),
                    color: Colors.pinkAccent,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Center(
                    child: Text("Telegram", style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 22, fontFamily: "Book", color: CupertinoColors.white
                    )),
                  ),
                ),
              ),
              const Gap(10),
              InkWell(
                onTap:  () {
                  _launchInstagram();
                },
                child: Container(
                  height: 70,
                  width: 260,
                  decoration: BoxDecoration(
                    border: Border.all(color: CupertinoColors.white, width: 3),
                    color: Colors.pinkAccent,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Center(
                    child: Text("Instagram", style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 22, fontFamily: "Book", color: CupertinoColors.white
                    )),
                  ),
                ),
              ),
              const Gap(10),
              InkWell(
                onTap:  () {
                  _launchYouTube();
                },
                child: Container(
                  height: 70,
                  width: 260,
                  decoration: BoxDecoration(
                    border: Border.all(color: CupertinoColors.white, width: 3),
                    color: Colors.pinkAccent,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Center(
                    child: Text("You Tube", style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 22, fontFamily: "Book", color: CupertinoColors.white
                    )),
                  ),
                ),
              ),
              const Gap(10),
              InkWell(
                onTap:  () {
                  _launchThreads();
                },
                child: Container(
                  height: 70,
                  width: 260,
                  decoration: BoxDecoration(
                    border: Border.all(color: CupertinoColors.white, width: 3),
                    color: Colors.pinkAccent,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Center(
                    child: Text("Threads", style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 22, fontFamily: "Book", color: CupertinoColors.white
                    )),
                  ),
                ),
              ),
              const Gap(10),
              InkWell(
                onTap:  () {
                  _launchPinterest();
                },
                child: Container(
                  height: 70,
                  width: 260,
                  decoration: BoxDecoration(
                    border: Border.all(color: CupertinoColors.white, width: 3),
                    color: Colors.pinkAccent,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Center(
                    child: Text("Pinterest", style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 22, fontFamily: "Book", color: CupertinoColors.white
                    )),
                  ),
                ),
              ),
              const Gap(30)
            ],
          ),
        ),
      ),
      bottomNavigationBar:  Padding(
        padding: const EdgeInsets.all(12.0),
        child: InkWell(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () {
            showDeveloperDialog(context);
          },
          child: Text("Powered by Iftixor Ergashboyev", textAlign: TextAlign.center, style: GoogleFonts.firaCode(
            color: CupertinoColors.white
          )),
        ),
      ),
    );
  }
}

void _launchTelegram() async {
  const url = 'https://t.me/bookblog_d';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'not opening';
  }
}
void _launchInstagram() async {
  const url = 'https://www.instagram.com/bookblog_d/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'not opening';
  }
}
void _launchThreads() async {
  const url = 'https://www.threads.net/@bookblog_d?xmt=AQGzJ7M4A8St3uddhZRx49SwbC_L4GANrHszIDHY9FTLEN0';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'not opening';
  }
}
void _launchPinterest() async {
  const url = 'https://pin.it/1wlB5pyqQ';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'not opening';
  }
}
void _launchYouTube() async {
  const url = 'https://youtube.com/@bookblogD';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'not opening';
  }
}

