import 'dart:core';
// ignore: unnecessary_import
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Support extends StatefulWidget {
  const Support({Key? key}) : super(key: key);
  @override
  _SupportState createState() => _SupportState();
}

class Files {
  String name;
  String url = "url";
  Files(
    this.name,
    this.url,
  );
  factory Files.fromJson(dynamic json) {
    return Files(
      json["name"] as String,
      json["url"] as String,
    );
  }
}

class _SupportState extends State<Support> {
  hexColor(String mycolor) {
    String newcolor = "0xff" + mycolor;
    newcolor = newcolor.replaceAll("#", "");
    int colorint = int.parse(newcolor);
    return colorint;
  }

  List support = [
    Files("Account Officer", "accounts"),
    Files("Livechat", "live"),
    Files("Ibolo Inflow Details", "inflow"),
    Files("FAQ", "faq"),
    Files("Report an issue", "report"),
    Files("Send Feedback", "feed"),
    Files("Ibolobank_help", "help"),
    Files("Customer care", "customer"),
    Files("Social Media", "social"),
    Files("Community Service", "community"),
    Files("Suggestions and Complaints", "suggestions"),
  ];
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Image(
              image: AssetImage("lib/images/ibolospng.png"),
              height: 68,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const SizedBox(
                  width: 0,
                ),
                Text(
                  'Welcome to Ibolo Support',
                  style: GoogleFonts.actor(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 13,
            ),
            Row(
              children: <Widget>[
                const SizedBox(
                  width: 290,
                ),
                Text(
                  'App version: 2.0',
                  style: GoogleFonts.actor(
                    fontSize: 10,
                    color: Colors.blueGrey,
                  ),
                ),
              ],
            ),
          ],
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        toolbarHeight: 130,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      backgroundColor: Colors.white12,
      body: ListView.builder(
        itemCount: support.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[
                  Color(hexColor("#3b7514")),
                  Color(hexColor("#0d3303")),
                ],
              ),
              borderRadius: BorderRadius.circular(5),
            ),
            key: Key(support[index].name),
            child: Card(
              child: ListTile(
                title: Text(
                  support[index].name,
                  style: GoogleFonts.lato(
                    fontSize: 14,
                    letterSpacing: 0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: CircleAvatar(
                  backgroundColor: Colors.white12,
                  radius: 13,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/${support[index].url}");
                    },
                    icon: const Icon(
                      Icons.arrow_forward_ios,
                      size: 12,
                      color: Colors.blueGrey,
                    ),
                  ),
                ),
              ),
              margin: const EdgeInsets.all(0.3),
              color: Colors.black12,
            ),
          );
        },
      ),
      bottomNavigationBar: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin: 10,
          color: Colors.transparent,
          child: Container(
            height: 70,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[
                  Color(0xff403109),
                  Color(0xff211b0b),
                ],
              ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
            ),
            child: Row(
              children: <Widget>[
                const SizedBox(
                  width: 10,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: <Widget>[
                      const SizedBox(
                        height: 0,
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/homee');
                        },
                        icon: const Icon(
                          Icons.home,
                          color: Colors.white,
                        ),
                        color: Colors.white,
                      ),
                      Text(
                        'Home',
                        style: GoogleFonts.actor(
                          fontSize: 12,
                          color: Colors.white,
                          letterSpacing: 0.5,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 40,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: <Widget>[
                      const SizedBox(
                        height: 0,
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/bills');
                        },
                        icon: const Icon(
                          Icons.ad_units,
                        ),
                        color: Colors.white,
                      ),
                      Text(
                        'Menu',
                        style: GoogleFonts.actor(
                          fontSize: 11,
                          color: Colors.white,
                          letterSpacing: 0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 33,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: <Widget>[
                      const SizedBox(
                        height: 0,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.scanner_sharp,
                        ),
                        color: Colors.white,
                      ),
                      Text(
                        'Scan',
                        style: GoogleFonts.actor(
                          fontSize: 12,
                          color: Colors.white,
                          letterSpacing: 0.5,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 33,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: <Widget>[
                      const SizedBox(
                        height: 0,
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/support');
                        },
                        icon: const Icon(
                          Icons.headset_mic_outlined,
                        ),
                        color: Colors.orange,
                      ),
                      Text(
                        'Support',
                        style: GoogleFonts.actor(
                          fontSize: 12,
                          color: Colors.orange,
                          letterSpacing: 0.5,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: <Widget>[
                      const SizedBox(
                        height: 0,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.manage_accounts,
                        ),
                        color: Colors.white,
                      ),
                      Text(
                        'Profile',
                        style: GoogleFonts.actor(
                          fontSize: 12,
                          color: Colors.white,
                          letterSpacing: 0.5,
                        ),
                      ),
                    ],
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
