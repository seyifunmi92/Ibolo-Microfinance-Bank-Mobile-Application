import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Unlock extends StatefulWidget {
  const Unlock({Key? key}) : super(key: key);

  @override
  _UnlockState createState() => _UnlockState();
}

class _UnlockState extends State<Unlock> {
  hexColor(String mycolor) {
    String newcolor = "0xff" + mycolor;
    newcolor = newcolor.replaceAll("#", "");
    int colorint = int.parse(newcolor);
    return colorint;
  }

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
              backgroundColor: Colors.white,
              automaticallyImplyLeading: false,
              title: Text(
                'Reset Password',
                style: GoogleFonts.lato(
                  fontSize: 18,
                  color: Colors.blueGrey,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              centerTitle: true,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
            ),
            backgroundColor: Color(hexColor("#fffcfd")),
            body: Center(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        const SizedBox(
                          height: 0,
                        ),
                        Text(
                          'Start the reset process by entering the ',
                          style: GoogleFonts.actor(
                            fontSize: 15,
                            color: Colors.blueGrey,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          'information below',
                          style: GoogleFonts.actor(
                            fontSize: 15,
                            color: Colors.blueGrey,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 100,
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 40),
                          child: Column(
                            children: <Widget>[
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.blueGrey.withOpacity(0.1),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.all(10),
                                    border: InputBorder.none,
                                    hintText: '  Account Number',
                                    hintStyle: GoogleFonts.actor(
                                      fontSize: 12,
                                      color: Colors.grey[600],
                                      letterSpacing: 0.0,
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
                                  color: Colors.blueGrey.withOpacity(0.1),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.all(10),
                                    border: InputBorder.none,
                                    hintText: '  Username',
                                    hintStyle: GoogleFonts.actor(
                                      fontSize: 12,
                                      color: Colors.grey[600],
                                      letterSpacing: 0.0,
                                    ),
                                  ),
                                  keyboardType: TextInputType.emailAddress,
                                  textInputAction: TextInputAction.done,
                                  obscureText: false,
                                ),
                              ),
                              const SizedBox(
                                height: 40,
                              ),
                              Container(
                                width: 320,
                                height: 42,
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
                                    Navigator.pushNamed(context, '/login');
                                  },
                                  child: Center(
                                    child: Text(
                                      "RESET",
                                      style: GoogleFonts.actor(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1.0,
                                        fontSize: 11,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 280,
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, '/login');
                                },
                                child: Text(
                                  'BACK TO LOGIN',
                                  style: GoogleFonts.lato(
                                    fontSize: 12,
                                    color: Colors.blueGrey,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
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
