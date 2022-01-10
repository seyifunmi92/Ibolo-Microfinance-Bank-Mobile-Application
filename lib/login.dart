import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          // ignore: prefer_const_constructors
          decoration: BoxDecoration(
            image: const DecorationImage(
              image: AssetImage('lib/images/bbbestar.jpeg'),
              fit: BoxFit.fitHeight,
              colorFilter: ColorFilter.mode(
                Colors.black87,
                BlendMode.darken,
              ),
            ),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.black12,
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                const CircleAvatar(
                  backgroundColor: Colors.black,
                  backgroundImage: AssetImage('lib/images/besta.jpeg'),
                  radius: 40,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'IBOLO',
                      style: GoogleFonts.lato(
                        letterSpacing: 4.0,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'MICROFINANCE BANK',
                  style: GoogleFonts.lato(
                    letterSpacing: 9.0,
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    color: Colors.blueGrey,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'WELCOME',
                        style: GoogleFonts.lato(
                          letterSpacing: 5.0,
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueGrey,
                        ),
                      ),
                    ]),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                  ),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(2),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'EMAIL',
                            hintStyle: GoogleFonts.lato(
                              letterSpacing: 3.0,
                              fontSize: 10,
                              color: Colors.grey,
                            ),
                            border: InputBorder.none,
                            prefixIcon: const Padding(
                              padding: EdgeInsets.all(0),
                              child: Icon(
                                Icons.mail_rounded,
                              ),
                            ),
                          ),
                          keyboardType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.next,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(2),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'PASSWORD',
                            hintStyle: GoogleFonts.lato(
                              letterSpacing: 3.0,
                              fontSize: 10,
                              color: Colors.grey,
                            ),
                            border: InputBorder.none,
                            prefixIcon: const Padding(
                              padding: EdgeInsets.all(0),
                              child: Icon(
                                Icons.lock,
                              ),
                            ),
                          ),
                          keyboardType: TextInputType.text,
                          textInputAction: TextInputAction.done,
                          obscureText: true,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 0,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 205,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/unlock');
                      },
                      child: Text(
                        'FORGOT PASSWORD?',
                        style: GoogleFonts.lato(
                          letterSpacing: 3.0,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueGrey,
                        ),
                      ),
                    ),
                  ],
                ),
                RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/homee');
                  },
                  child: Text(
                    'LOGIN',
                    style: GoogleFonts.lato(
                      letterSpacing: 3.0,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  padding: const EdgeInsets.fromLTRB(140, 15, 140, 15),
                  color: Colors.deepOrange,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Not Oluwatobi?',
                      style: GoogleFonts.lato(
                        fontSize: 12,
                        letterSpacing: 2.0,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return CupertinoAlertDialog(
                                title: Text(
                                  'Warning',
                                  style: GoogleFonts.lato(
                                    fontSize: 13,
                                    letterSpacing: 1.0,
                                    color: Colors.white,
                                  ),
                                ),
                                content: Column(
                                  children: <Widget>[
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      'This action will clear your saved username, password, and other saved setting from this device. Do you want to continue?',
                                      style: GoogleFonts.lato(
                                        fontSize: 12,
                                        letterSpacing: 0.5,
                                        color: Colors.white,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        RaisedButton(
                                          onPressed: () {
                                            Navigator.pushNamed(
                                                context, '/login');
                                          },
                                          child: Text(
                                            'Cancel',
                                            style: GoogleFonts.lato(
                                              fontSize: 13,
                                              letterSpacing: 1.0,
                                              color: Colors.white,
                                            ),
                                          ),
                                          color: Colors.white12,
                                        ),
                                        const SizedBox(
                                          width: 50,
                                        ),
                                        RaisedButton(
                                          onPressed: () {
                                            Navigator.pushNamed(
                                                context, '/device');
                                          },
                                          child: Text(
                                            'Proceed',
                                            style: GoogleFonts.lato(
                                              fontSize: 13,
                                              letterSpacing: 1.0,
                                              color: Colors.white,
                                            ),
                                          ),
                                          color: Colors.white12,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              );
                            });
                      },
                      child: Text(
                        'Unlock device',
                        style: GoogleFonts.lato(
                          letterSpacing: 2.0,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueGrey,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 145,
                ),
                Text(
                  'DONT HAVE AN ACCOUNT?',
                  style: GoogleFonts.lato(
                    letterSpacing: 5.0,
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/account');
                  },
                  child: Text(
                    'SIGN UP',
                    style: GoogleFonts.lato(
                      letterSpacing: 3.0,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  padding: const EdgeInsets.fromLTRB(140, 15, 140, 15),
                  color: Colors.white12,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/unlock');
                  },
                  child: Text(
                    'FREEZE ACCOUNT',
                    style: GoogleFonts.lato(
                      letterSpacing: 2.0,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
