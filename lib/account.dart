import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Create Account',
          style: GoogleFonts.lato(
            fontSize: 15,
            color: Colors.blueGrey,
            letterSpacing: 0.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: <Widget>[
              Column(
                children: <Widget>[
                  const SizedBox(
                    height: 80,
                  ),
                  Text(
                    'SIGN UP USING:',
                    style: GoogleFonts.actor(
                      fontSize: 14,
                      color: Colors.blueGrey,
                      letterSpacing: 2.0,
                    ),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  Container(
                    width: 400,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
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
                        tileMode: TileMode
                            .repeated, // repeats the gradient over the canvas
                      ),
                    ),
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/accounts');
                      },
                      child: Row(
                        children: <Widget>[
                          const SizedBox(
                            width: 120,
                          ),
                          const CircleAvatar(
                            radius: 13,
                            child: Icon(
                              Icons.credit_card,
                              color: Colors.white,
                              size: 18,
                            ),
                            backgroundColor: Colors.white12,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            'DEBIT CARD',
                            style: GoogleFonts.actor(
                              letterSpacing: 3.0,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 400,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
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
                        tileMode: TileMode
                            .repeated, // repeats the gradient over the canvas
                      ),
                    ),
                    child: InkWell(
                      onTap: () {},
                      child: Row(
                        children: <Widget>[
                          const SizedBox(
                            width: 100,
                          ),
                          const CircleAvatar(
                            radius: 13,
                            child: Icon(
                              Icons.account_circle_rounded,
                              color: Colors.white,
                              size: 18,
                            ),
                            backgroundColor: Colors.white12,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            'ACCOUNT NUMBER',
                            style: GoogleFonts.actor(
                              letterSpacing: 3.0,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 300,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/home');
                    },
                    child: Text(
                      'BACK',
                      style: GoogleFonts.lato(
                        fontSize: 14,
                        color: Colors.grey,
                        letterSpacing: 2.0,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
