import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Unlock extends StatefulWidget {
  const Unlock({Key? key}) : super(key: key);

  @override
  _UnlockState createState() => _UnlockState();
}

class _UnlockState extends State<Unlock> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('lib/images/bbb.jpg'),
              fit: BoxFit.fill,
              colorFilter: ColorFilter.mode(
                Colors.black54,
                BlendMode.darken,
              ),
            ),
          ),
        ),
        Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: false,
              title: Text(
                'Reset Password',
                style: GoogleFonts.lato(
                  fontSize: 20,
                  color: Colors.white,
                  letterSpacing: 0.0,
                ),
              ),
              centerTitle: true,
              backgroundColor: Colors.white12,
            ),
            backgroundColor: Colors.transparent,
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
                          'Start the reset process by entering the ',
                          style: GoogleFonts.lato(
                            fontSize: 14,
                            color: Colors.grey,
                            letterSpacing: 0.0,
                          ),
                        ),
                        Text(
                          'information below',
                          style: GoogleFonts.actor(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                        const SizedBox(
                          height: 60,
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 40),
                          child: Column(
                            children: <Widget>[
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(3),
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.all(10),
                                    border: InputBorder.none,
                                    hintText: '  Account Number',
                                    hintStyle: GoogleFonts.lato(
                                      fontSize: 12,
                                      color: Colors.grey,
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
                                decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(3),
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.all(10),
                                    border: InputBorder.none,
                                    hintText: '  Username',
                                    hintStyle: GoogleFonts.lato(
                                      fontSize: 12,
                                      color: Colors.grey,
                                      letterSpacing: 1.0,
                                    ),
                                  ),
                                  keyboardType: TextInputType.emailAddress,
                                  textInputAction: TextInputAction.done,
                                  obscureText: false,
                                ),
                              ),
                              const SizedBox(
                                height: 60,
                              ),
                              RaisedButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, '/bills');
                                },
                                child: Text(
                                  'RESET',
                                  style: GoogleFonts.actor(
                                    letterSpacing: 3.0,
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                padding:
                                    const EdgeInsets.fromLTRB(133, 17, 133, 17),
                                color: Colors.white12,
                              ),
                              const SizedBox(
                                height: 300,
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
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )),
      ],
    );
  }
}
