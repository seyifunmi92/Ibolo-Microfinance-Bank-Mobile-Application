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
            fontSize: 20,
            color: Colors.white,
            letterSpacing: 0.0,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white12,
      ),
      backgroundColor: Colors.white12,
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
                            borderRadius: BorderRadius.circular(3),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.all(10),
                              border: InputBorder.none,
                              labelText: '  Account Number',
                              labelStyle: GoogleFonts.lato(
                                fontSize: 13,
                                color: Colors.blueGrey,
                                letterSpacing: 1.0,
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
                            borderRadius: BorderRadius.circular(3),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.all(10),
                              border: InputBorder.none,
                              labelText: '  Card Type',
                              labelStyle: GoogleFonts.lato(
                                fontSize: 13,
                                color: Colors.blueGrey,
                                letterSpacing: 1.0,
                              ),
                              suffixIcon: Padding(
                                padding: EdgeInsets.all(10),
                                child: IconButton(
                                  onPressed: () {
                                    showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return CupertinoAlertDialog(
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
                            borderRadius: BorderRadius.circular(3),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.all(10),
                              border: InputBorder.none,
                              labelText: '  Card Number',
                              labelStyle: GoogleFonts.lato(
                                fontSize: 13,
                                color: Colors.blueGrey,
                                letterSpacing: 1.0,
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
                            borderRadius: BorderRadius.circular(3),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.all(10),
                              border: InputBorder.none,
                              labelText: '  Card Pin',
                              labelStyle: GoogleFonts.lato(
                                fontSize: 13,
                                color: Colors.blueGrey,
                                letterSpacing: 1.0,
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
                        RaisedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/otp');
                          },
                          child: Text(
                            'VALIDATE',
                            style: GoogleFonts.actor(
                              letterSpacing: 3.0,
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          padding: const EdgeInsets.fromLTRB(130, 17, 130, 17),
                          color: Colors.white12,
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
