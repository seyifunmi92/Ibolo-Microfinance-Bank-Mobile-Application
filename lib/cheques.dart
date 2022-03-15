import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Cheques extends StatefulWidget {
  const Cheques({Key? key}) : super(key: key);

  @override
  _ChequesState createState() => _ChequesState();
}

class _ChequesState extends State<Cheques> {
  hexColor(String mycolor) {
    String newcolor = "0xff" + mycolor;
    newcolor = newcolor.replaceAll("#", "");
    int colorint = int.parse(newcolor);
    return colorint;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
        ),
        backgroundColor: Colors.white,
        toolbarHeight: 70,
        automaticallyImplyLeading: false,
        title: Text(
          "Cheques & Cards",
          style: GoogleFonts.actor(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Please select any of the following options",
                style: GoogleFonts.actor(
                  color: Colors.blueGrey,
                  fontSize: 16,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 50,
            width: 380,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              // ignore: prefer_const_constructors
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                // 10% of the width, so there are ten blinds.
                // ignore: prefer_const_literals_to_create_immutables
                colors: <Color>[
                  Color(hexColor('#48db0d')),
                  Color(hexColor('#030f4d')),
                ], // red to yellow
                tileMode:
                    TileMode.repeated, // repeats the gradient over the canvas
              ),
            ),
            child: InkWell(
              onTap: () {},
              child: Row(
                children: <Widget>[
                  const SizedBox(
                    width: 20,
                  ),
                  const Icon(
                    Icons.money,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Cheques",
                    style: GoogleFonts.actor(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            height: 50,
            width: 380,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              // ignore: prefer_const_constructors
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                // 10% of the width, so there are ten blinds.
                // ignore: prefer_const_literals_to_create_immutables
                colors: <Color>[
                  Color(hexColor('#48db0d')),
                  Color(hexColor('#030f4d')),
                ], // red to yellow
                tileMode:
                    TileMode.repeated, // repeats the gradient over the canvas
              ),
            ),
            child: InkWell(
              onTap: () {},
              child: Row(
                children: <Widget>[
                  const SizedBox(
                    width: 20,
                  ),
                  const Icon(
                    Icons.credit_card_sharp,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Debit Cards",
                    style: GoogleFonts.actor(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            height: 50,
            width: 380,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              // ignore: prefer_const_constructors
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                // 10% of the width, so there are ten blinds.
                // ignore: prefer_const_literals_to_create_immutables
                colors: <Color>[
                  Color(hexColor('#48db0d')),
                  Color(hexColor('#030f4d')),
                ], // red to yellow
                tileMode:
                    TileMode.repeated, // repeats the gradient over the canvas
              ),
            ),
            child: InkWell(
              onTap: () {},
              child: Row(
                children: <Widget>[
                  const SizedBox(
                    width: 20,
                  ),
                  const Icon(
                    Icons.credit_score,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Credit Cards",
                    style: GoogleFonts.actor(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 400,
          ),
          Container(
            width: 320,
            height: 42,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              // ignore: prefer_const_constructors
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                // 10% of the width, so there are ten blinds.
                // ignore: prefer_const_literals_to_create_immutables
                colors: <Color>[
                  const Color(0xffd1c217),
                  const Color(0xff403109),
                ], // red to yellow
                tileMode:
                    TileMode.repeated, // repeats the gradient over the canvas
              ),
            ),
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/bills');
              },
              child: Center(
                child: Text(
                  "BACK",
                  style: GoogleFonts.actor(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.0,
                    fontSize: 12,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
