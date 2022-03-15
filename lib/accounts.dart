import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Accounts extends StatefulWidget {
  const Accounts({Key? key}) : super(key: key);

  @override
  _AccountsState createState() => _AccountsState();
}

class _AccountsState extends State<Accounts> {
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
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      children: <Widget>[
                        const SizedBox(
                          height: 50,
                        ),
                        Container(
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.all(10),
                              border: InputBorder.none,
                              labelText: '  Account Number',
                              labelStyle: GoogleFonts.actor(
                                fontSize: 13,
                                color: Colors.blueGrey,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.number,
                            obscureText: false,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.all(10),
                              border: InputBorder.none,
                              labelText: '  Card Type',
                              labelStyle: GoogleFonts.lato(
                                fontSize: 13,
                                color: Colors.blueGrey,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.bold,
                              ),
                              suffixIcon: Padding(
                                padding: const EdgeInsets.all(10),
                                child: IconButton(
                                  onPressed: () {
                                    showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return CupertinoAlertDialog(
                                            insetAnimationCurve:
                                                Curves.easeInOut,
                                            insetAnimationDuration:
                                                const Duration(seconds: 5),
                                            title: Text(
                                              'Select Card Type',
                                              style: GoogleFonts.actor(
                                                letterSpacing: 2.0,
                                                fontSize: 10,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            content: Column(
                                              children: <Widget>[
                                                const Divider(
                                                  height: 10,
                                                ),
                                                const SizedBox(
                                                  height: 20,
                                                ),
                                                TextButton(
                                                  onPressed: () {},
                                                  child: Text(
                                                    'Mastercard',
                                                    style: GoogleFonts.actor(
                                                      letterSpacing: 3.0,
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                                const Divider(
                                                  height: 10,
                                                ),
                                                TextButton(
                                                  onPressed: () {},
                                                  child: Text(
                                                    'Visa card',
                                                    style: GoogleFonts.actor(
                                                      letterSpacing: 3.0,
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                                const Divider(
                                                  height: 10,
                                                ),
                                                TextButton(
                                                  onPressed: () {},
                                                  child: Text(
                                                    'Verve card',
                                                    style: GoogleFonts.actor(
                                                      letterSpacing: 3.0,
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                                const Divider(
                                                  height: 10,
                                                ),
                                                const SizedBox(
                                                  height: 20,
                                                ),
                                                TextButton(
                                                  onPressed: () {
                                                    Navigator.pushNamed(
                                                        context, '/accounts');
                                                  },
                                                  child: Text(
                                                    'BACK',
                                                    style: GoogleFonts.actor(
                                                      letterSpacing: 3.0,
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          );
                                        });
                                  },
                                  icon: Icon(
                                    Icons.arrow_drop_down_circle_outlined,
                                    color: Colors.blueGrey[200],
                                  ),
                                ),
                              ),
                            ),
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.number,
                            obscureText: false,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.all(10),
                              border: InputBorder.none,
                              labelText: '  Card Number',
                              labelStyle: GoogleFonts.lato(
                                fontSize: 13,
                                color: Colors.blueGrey,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.number,
                            obscureText: false,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.all(10),
                              border: InputBorder.none,
                              labelText: '  Card Pin',
                              labelStyle: GoogleFonts.lato(
                                fontSize: 13,
                                color: Colors.blueGrey,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.number,
                            obscureText: false,
                          ),
                        ),
                        const SizedBox(
                          height: 60,
                        ),
                        Container(
                          width: 320,
                          height: 42,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
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
                              Navigator.pushNamed(context, '/login');
                            },
                            child: Center(
                              child: Text(
                                "VALIDATE",
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
                        const SizedBox(
                          height: 270,
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/account');
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
