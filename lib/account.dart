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
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Sign Up Using:',
                    style: GoogleFonts.lato(
                      fontSize: 14,
                      color: Colors.grey,
                      letterSpacing: 2.0,
                    ),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  RaisedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/accounts');
                    },
                    child: Row(
                      children: <Widget>[
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
                    padding: const EdgeInsets.fromLTRB(119, 17, 119, 17),
                    color: Colors.white12,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  RaisedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/bills');
                    },
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: <Widget>[
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
                    padding: const EdgeInsets.fromLTRB(100, 17, 100, 17),
                    color: Colors.white12,
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
