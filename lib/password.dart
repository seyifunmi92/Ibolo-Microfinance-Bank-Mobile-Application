import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Password extends StatefulWidget {
  const Password({Key? key}) : super(key: key);

  @override
  _PasswordState createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
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
                    height: 20,
                  ),
                  Text(
                    'Set Password',
                    style: GoogleFonts.lato(
                      fontSize: 20,
                      color: Colors.grey,
                      letterSpacing: 2.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Set your account transaction pin',
                    style: GoogleFonts.lato(
                      fontSize: 15,
                      color: Colors.grey,
                      letterSpacing: 1.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Container(
                    padding: EdgeInsets.all(30),
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Password',
                              labelStyle: GoogleFonts.lato(
                                letterSpacing: 1.0,
                              )),
                          obscureText: true,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Confirm Password',
                            labelStyle: GoogleFonts.lato(
                              letterSpacing: 1.0,
                            ),
                          ),
                          obscureText: true,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  RaisedButton(
                    onPressed: () {},
                    child: const Text(
                      'Create Account',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    padding: const EdgeInsets.fromLTRB(130, 15, 130, 15),
                    color: Colors.grey[800],
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
