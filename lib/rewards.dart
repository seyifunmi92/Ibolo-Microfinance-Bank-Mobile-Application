import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Rewards extends StatefulWidget {
  const Rewards({Key? key}) : super(key: key);

  @override
  _RewardsState createState() => _RewardsState();
}

class _RewardsState extends State<Rewards> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          const SizedBox(height: 40),
          const SizedBox(
            height: 0,
          ),
          const Image(
            image: AssetImage("lib/images/ibolospng.png"),
            height: 50,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'REWARDS AND REFFERALS',
            style: GoogleFonts.lato(
              fontSize: 15,
              color: Colors.blueGrey,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.0,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
              '       Ibolo Rewards is our way of saying thanks for   ',
              style: GoogleFonts.actor(
                fontSize: 14,
                letterSpacing: 0.2,
                color: Colors.blueGrey,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Text(
            'banking with us. As an Ibolo Rewards member, you',
            style: GoogleFonts.actor(
              fontSize: 14,
              letterSpacing: 0.2,
              color: Colors.blueGrey,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'will get the most ways to save, earn and redeem for',
            style: GoogleFonts.actor(
              fontSize: 14,
              letterSpacing: 0.2,
              color: Colors.blueGrey,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'what you really want-when you want it.',
            style: GoogleFonts.actor(
              fontSize: 14,
              letterSpacing: 0.2,
              color: Colors.blueGrey,
              fontWeight: FontWeight.bold,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
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
                height: 300,
                width: 400,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      '  How the Ibolo Rewards work',
                      style: GoogleFonts.actor(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.0,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: <Widget>[
                        const SizedBox(
                          width: 7,
                        ),
                        CircleAvatar(
                          child: Text(
                            '1',
                            style: GoogleFonts.actor(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          backgroundColor: Colors.white12,
                          radius: 15,
                        ),
                        const SizedBox(
                          width: 6,
                        ),
                        Text(
                          'Opt-in for the Ibolo Rewards program.',
                          style: GoogleFonts.actor(
                            fontSize: 13,
                            letterSpacing: 0.0,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: <Widget>[
                        const SizedBox(
                          width: 7,
                        ),
                        CircleAvatar(
                          child: Text(
                            '2',
                            style: GoogleFonts.actor(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          backgroundColor: Colors.white12,
                          radius: 15,
                        ),
                        const SizedBox(
                          width: 6,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Complete a qualifying transaction such as bill payment,NIP',
                              style: GoogleFonts.actor(
                                fontSize: 13,
                                letterSpacing: 0.0,
                              ),
                            ),
                            Text(
                              'or referring a friend to open an account on Ibolo Mobile app.',
                              style: GoogleFonts.actor(
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: <Widget>[
                        const SizedBox(
                          width: 7,
                        ),
                        CircleAvatar(
                          child: Text(
                            '3',
                            style: GoogleFonts.actor(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                          backgroundColor: Colors.white12,
                          radius: 15,
                        ),
                        const SizedBox(
                          width: 6,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Use your Access Rewards points to pay bills, buy airtime and',
                              style: GoogleFonts.actor(
                                fontSize: 13,
                              ),
                            ),
                            Text(
                              'pay for other lifestyle proposition instantly on Ibolo mfb app.',
                              style: GoogleFonts.actor(
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: <Widget>[
                        const SizedBox(
                          width: 7,
                        ),
                        CircleAvatar(
                          child: Text(
                            '4',
                            style: GoogleFonts.actor(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                          backgroundColor: Colors.white12,
                          radius: 15,
                        ),
                        const SizedBox(
                          width: 6,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Accrue points as you continue to transact on Ibolo mfb app',
                              style: GoogleFonts.actor(
                                fontSize: 13,
                              ),
                            ),
                            Text(
                              'enjoy more benefits from Silver to Gold and platinum',
                              style: GoogleFonts.actor(
                                fontSize: 13,
                              ),
                            ),
                            Text(
                              'tier status.',
                              style: GoogleFonts.actor(
                                fontSize: 13,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(0),
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
            height: 55,
            width: 400,
            child: Row(
              children: <Widget>[
                const SizedBox(
                  width: 5,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  'Ibolo Rewards FAQ',
                  style: GoogleFonts.actor(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  width: 210,
                ),
                CircleAvatar(
                  backgroundColor: Colors.white12,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_forward_ios,
                      size: 10,
                      color: Colors.white,
                    ),
                  ),
                  radius: 12,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'By clicking on JOIN NOW, you agree to the',
            style: GoogleFonts.actor(
              color: Colors.grey,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            'Ibolo Rewards Program Terms and Conditions',
            style: GoogleFonts.actor(
              color: Colors.blue,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: <Widget>[
              const SizedBox(
                width: 97,
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/homee');
                },
                child: Text(
                  'Cancel',
                  style: GoogleFonts.actor(
                    color: Colors.grey,
                    fontSize: 13,
                  ),
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              Container(
                width: 180,
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
                      "JOIN NOW",
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
        ],
      ),
    );
  }
}
