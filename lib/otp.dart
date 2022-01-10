import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Otp extends StatefulWidget {
  const Otp({Key? key}) : super(key: key);

  @override
  _OtpState createState() => _OtpState();
}

class _OtpState extends State<Otp> {
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
                    'VERIFICATION',
                    style: GoogleFonts.lato(
                      fontSize: 14,
                      color: Colors.grey,
                      letterSpacing: 2.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'An OTP has been sent to your phone',
                    style: GoogleFonts.lato(
                      fontSize: 14,
                      color: Colors.grey,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 80,
                    ),
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(3),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              contentPadding:
                                  const EdgeInsets.fromLTRB(90, 10, 90, 10),
                              border: InputBorder.none,
                              hintText: '   OTP',
                              hintStyle: GoogleFonts.lato(
                                fontSize: 13,
                                color: Colors.grey,
                                letterSpacing: 1.0,
                              ),
                            ),
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.number,
                            obscureText: true,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const SizedBox(
                          height: 60,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                  RaisedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/bills');
                    },
                    child: Text(
                      'VERIFY',
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
                    height: 350,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/login');
                    },
                    child: Text(
                      'BACK TO LOGIN',
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
