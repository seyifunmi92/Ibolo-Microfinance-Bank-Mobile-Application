import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';
// ignore: unused_import
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Homee extends StatefulWidget {
  const Homee({Key? key}) : super(key: key);

  @override
  _HomeeState createState() => _HomeeState();
}
class _HomeeState extends State<Homee> {
  hexColor(String mycolor) {
    String newcolor = "0xff" + mycolor;
    newcolor = newcolor.replaceAll("#", "");
    int colorint = int.parse(newcolor);
    return colorint;
  }
  final pictures = [
    // 'lib/images/home.jpg',
    // 'lib/images/homee.jpg',
    // 'lib/images/homeee.jpg',
    // 'lib/images/homi.jpg',
    // 'lib/images/homii.jpg'
    "lib/images/myibolo.jpeg",
    "lib/images/myibolo1.jpeg",
    "lib/images/myibolo2.jpeg",
    "lib/images/myibolo3.jpeg",
    "lib/images/myibolo4.jpeg",
    "lib/images/myibolo5.jpeg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(hexColor("#fffcfd")),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(
              height: 30,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Good afternoon, Abraham',
                    style: GoogleFonts.actor(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.5,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    width: 148,
                  ),
                  const Image(
                    image: AssetImage("lib/images/ibolopng.png"),
                    height: 35,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            Row(
              children: <Widget>[
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'My favorites',
                  style: GoogleFonts.actor(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.5,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  width: 180,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      // 10% of the width, so there are ten blinds.
                      colors: <Color>[
                        Color(0xffd1c217),
                        Color(0xff403109),
                      ], // red to yellow
                      tileMode: TileMode
                          .repeated, // repeats the gradient over the canvas
                    ),
                  ),
                  height: 25,
                  width: 110,
                  child: InkWell(
                    onTap: () {},
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          'More Options',
                          style: GoogleFonts.actor(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.0,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                const SizedBox(
                  width: 8,
                ),
                Container(
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.transparent,
                        blurStyle: BlurStyle.normal,
                        blurRadius: 3.0,
                        offset: Offset.zero,
                        spreadRadius: 0.0,
                      ),
                    ],
                    gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      // 10% of the width, so there are ten blinds.
                      colors: <Color>[
                        Color(0xffd1c217),
                        Color(0xff403109),
                      ], // red to yellow
                      tileMode: TileMode
                          .repeated, // repeats the gradient over the canvas
                    ),
                    borderRadius: BorderRadius.circular(3),
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/rewards');
                    },
                    child: Column(
                      children: <Widget>[
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: const <Widget>[
                            SizedBox(
                              width: 30,
                            ),
                          ],
                        ),
                        const Icon(
                          Icons.dialpad_sharp,
                          size: 15,
                          color: Colors.white,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: <Widget>[
                            const SizedBox(
                              width: 3,
                            ),
                            Text(
                              'Rewards & Refferal',
                              style: GoogleFonts.actor(
                                fontSize: 10.5,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              width: 3,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 19,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 7,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.transparent,
                        blurStyle: BlurStyle.normal,
                        blurRadius: 0.0,
                        offset: Offset.zero,
                        spreadRadius: 0.0,
                      ),
                    ],
                    gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      // 10% of the width, so there are ten blinds.
                      colors: <Color>[
                        Color(0xffd1c217),
                        Color(0xff403109),
                      ], // red to yellow
                      tileMode: TileMode
                          .repeated, // repeats the gradient over the canvas
                    ),
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/supports');
                    },
                    child: Column(
                      children: <Widget>[
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: const <Widget>[
                            SizedBox(
                              width: 30,
                            ),
                          ],
                        ),
                        const Icon(
                          Icons.post_add_sharp,
                          size: 15,
                          color: Colors.white,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: <Widget>[
                            const SizedBox(
                              width: 12,
                            ),
                            Text(
                              'POS Fast Pay',
                              style: GoogleFonts.actor(
                                fontSize: 11,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 19,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 7,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.transparent,
                        blurStyle: BlurStyle.normal,
                        blurRadius: 3.0,
                        offset: Offset.zero,
                        spreadRadius: 0.0,
                      ),
                    ],
                    gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      // 10% of the width, so there are ten blinds.
                      colors: <Color>[
                        Color(0xffd1c217),
                        Color(0xff403109),
                      ], // red to yellow
                      tileMode: TileMode
                          .repeated, // repeats the gradient over the canvas
                    ),
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/savings');
                    },
                    child: Column(
                      children: <Widget>[
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: const <Widget>[
                            SizedBox(
                              width: 30,
                            ),
                          ],
                        ),
                        const Icon(
                          Icons.ac_unit,
                          size: 15,
                          color: Colors.white,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: <Widget>[
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              '  Transactions',
                              style: GoogleFonts.actor(
                                fontSize: 10,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              width: 13,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 19,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 7,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.transparent,
                        blurStyle: BlurStyle.normal,
                        blurRadius: 3.0,
                        offset: Offset.zero,
                        spreadRadius: 0.0,
                      ),
                    ],
                    gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      // 10% of the width, so there are ten blinds.
                      colors: <Color>[
                        Color(0xffd1c217),
                        Color(0xff403109),
                      ], // red to yellow
                      tileMode: TileMode
                          .repeated, // repeats the gradient over the canvas
                    ),
                  ),
                  child: InkWell(
                    onTap: () {},
                    child: Column(
                      children: <Widget>[
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: const <Widget>[
                            SizedBox(
                              width: 30,
                            ),
                          ],
                        ),
                        const Icon(
                          Icons.ad_units,
                          size: 15,
                          color: Colors.white,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: <Widget>[
                            const SizedBox(
                              width: 3,
                            ),
                            Text(
                              'Other Bank Transfers',
                              style: GoogleFonts.actor(
                                fontSize: 10,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              width: 3,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 19,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 3,
            ),
            Row(
              children: <Widget>[
                const SizedBox(
                  width: 8,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      gradient: const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        // 10% of the width, so there are ten blinds.
                        colors: <Color>[
                          Color(0xffd1c217),
                          Color(0xff403109),
                        ], // red to yellow
                        tileMode: TileMode
                            .repeated, // repeats the gradient over the canvas
                      ),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.transparent,
                          blurStyle: BlurStyle.normal,
                          blurRadius: 3.0,
                          offset: Offset.zero,
                          spreadRadius: 0.0,
                        ),
                      ]),
                  child: InkWell(
                    onTap: () {},
                    child: Column(
                      children: <Widget>[
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: const <Widget>[
                            SizedBox(
                              width: 30,
                            ),
                          ],
                        ),
                        const Icon(
                          Icons.account_balance_wallet_sharp,
                          size: 15,
                          color: Colors.white,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: <Widget>[
                            const SizedBox(
                              width: 10.5,
                            ),
                            Text(
                              'Mobile Top-up',
                              style: GoogleFonts.actor(
                                fontSize: 11,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 19,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 7,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      gradient: const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        // 10% of the width, so there are ten blinds.
                        colors: <Color>[
                          Color(0xffd1c217),
                          Color(0xff403109),
                        ], // red to yellow
                        tileMode: TileMode
                            .repeated, // repeats the gradient over the canvas
                      ),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.transparent,
                          blurStyle: BlurStyle.normal,
                          blurRadius: 3.0,
                          offset: Offset.zero,
                          spreadRadius: 0.0,
                        ),
                      ]),
                  child: InkWell(
                    onTap: () {},
                    child: Column(
                      children: <Widget>[
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: const <Widget>[
                            SizedBox(
                              width: 30,
                            ),
                          ],
                        ),
                        const Icon(
                          Icons.wifi_tethering,
                          size: 15,
                          color: Colors.white,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: <Widget>[
                            const SizedBox(
                              width: 3,
                            ),
                            Text(
                              '  Data Purchase',
                              style: GoogleFonts.actor(
                                fontSize: 10.5,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              width: 13,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 19,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 7,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      gradient: const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        // 10% of the width, so there are ten blinds.
                        colors: <Color>[
                          Color(0xffd1c217),
                          Color(0xff403109),
                        ], // red to yellow
                        tileMode: TileMode
                            .repeated, // repeats the gradient over the canvas
                      ),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.transparent,
                          blurStyle: BlurStyle.normal,
                          blurRadius: 3.0,
                          offset: Offset.zero,
                          spreadRadius: 0.0,
                        ),
                      ]),
                  child: InkWell(
                    onTap: () {},
                    child: Column(
                      children: <Widget>[
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: const <Widget>[
                            SizedBox(
                              width: 30,
                            ),
                          ],
                        ),
                        const Icon(
                          Icons.app_blocking_outlined,
                          size: 15,
                          color: Colors.white,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: <Widget>[
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              '  Bills Payment',
                              style: GoogleFonts.actor(
                                fontSize: 10,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 19,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 9,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      gradient: const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        // 10% of the width, so there are ten blinds.
                        colors: <Color>[
                          Color(0xffd1c217),
                          Color(0xff403109),
                        ], // red to yellow
                        tileMode: TileMode
                            .repeated, // repeats the gradient over the canvas
                      ),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.transparent,
                          blurStyle: BlurStyle.normal,
                          blurRadius: 3.0,
                          offset: Offset.zero,
                          spreadRadius: 0.0,
                        ),
                      ]),
                  child: InkWell(
                    onTap: () {},
                    child: Column(
                      children: <Widget>[
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: const <Widget>[
                            SizedBox(
                              width: 30,
                            ),
                          ],
                        ),
                        const Icon(
                          Icons.account_balance_wallet_outlined,
                          size: 15,
                          color: Colors.white,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: <Widget>[
                            const SizedBox(
                              width: 3,
                            ),
                            Text(
                              'International Airtime',
                              style: GoogleFonts.actor(
                                fontSize: 9.5,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 19,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 2,
            ),
            Row(
              children: <Widget>[
                const SizedBox(
                  width: 9,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      gradient: const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        // 10% of the width, so there are ten blinds.
                        colors: <Color>[
                          Color(0xffd1c217),
                          Color(0xff403109),
                        ], // red to yellow
                        tileMode: TileMode
                            .repeated, // repeats the gradient over the canvas
                      ),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.transparent,
                          blurStyle: BlurStyle.normal,
                          blurRadius: 3.0,
                          offset: Offset.zero,
                          spreadRadius: 0.0,
                        ),
                      ]),
                  child: InkWell(
                    onTap: () {},
                    child: Column(
                      children: <Widget>[
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: <Widget>[
                            const SizedBox(
                              width: 30,
                            ),
                          ],
                        ),
                        const Icon(
                          Icons.account_balance,
                          size: 15,
                          color: Colors.white,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: <Widget>[
                            const SizedBox(
                              width: 11.5,
                            ),
                            Text(
                              'Instant Loans',
                              style: GoogleFonts.actor(
                                fontSize: 11.5,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              width: 11.5,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 19,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 7,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      gradient: const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        // 10% of the width, so there are ten blinds.
                        colors: <Color>[
                          Color(0xffd1c217),
                          Color(0xff403109),
                        ], // red to yellow
                        tileMode: TileMode
                            .repeated, // repeats the gradient over the canvas
                      ),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.transparent,
                          blurStyle: BlurStyle.normal,
                          blurRadius: 3.0,
                          offset: Offset.zero,
                          spreadRadius: 0.0,
                        ),
                      ]),
                  child: InkWell(
                    onTap: () {},
                    child: Column(
                      children: <Widget>[
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: const <Widget>[
                            SizedBox(
                              width: 30,
                            ),
                          ],
                        ),
                        const Icon(
                          Icons.shopping_cart_outlined,
                          size: 17,
                          color: Colors.white,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: <Widget>[
                            const SizedBox(
                              width: 23,
                            ),
                            Text(
                              ' Central',
                              style: GoogleFonts.actor(
                                fontSize: 11,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              width: 26,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 19,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      // 10% of the width, so there are ten blinds.
                      colors: <Color>[
                        Color(0xffd1c217),
                        Color(0xff403109),
                      ], // red to yellow
                      tileMode: TileMode
                          .repeated, // repeats the gradient over the canvas
                    ),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.transparent,
                        blurStyle: BlurStyle.normal,
                        blurRadius: 3.0,
                        offset: Offset.zero,
                        spreadRadius: 0.0,
                      ),
                    ],
                  ),
                  child: InkWell(
                    onTap: () {},
                    child: Column(
                      children: <Widget>[
                        const SizedBox(
                          height: 17,
                        ),
                        Row(
                          children: const <Widget>[
                            SizedBox(
                              width: 30,
                            ),
                          ],
                        ),
                        const Icon(
                          Icons.add_chart,
                          size: 15,
                          color: Colors.white,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: <Widget>[
                            const SizedBox(
                              width: 3,
                            ),
                            Text(
                              ' Foreign Currency',
                              style: GoogleFonts.actor(
                                fontSize: 9.5,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 21,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 7,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      gradient: const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        // 10% of the width, so there are ten blinds.
                        colors: <Color>[
                          Color(0xffd1c217),
                          Color(0xff403109),
                        ], // red to yellow
                        tileMode: TileMode
                            .repeated, // repeats the gradient over the canvas
                      ),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.transparent,
                          blurStyle: BlurStyle.normal,
                          blurRadius: 3.0,
                          offset: Offset.zero,
                          spreadRadius: 0.0,
                        ),
                      ]),
                  child: InkWell(
                    onTap: () {},
                    child: Column(
                      children: <Widget>[
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: const <Widget>[
                            SizedBox(
                              width: 30,
                            ),
                          ],
                        ),
                        const Icon(
                          Icons.access_alarm_sharp,
                          size: 17,
                          color: Colors.white,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: <Widget>[
                            const SizedBox(
                              width: 3,
                            ),
                            Text(
                              '   Transaction History',
                              style: GoogleFonts.actor(
                                fontSize: 9,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 19,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 6,
            ),
            Container(
              height: 400,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  // 10% of the width, so there are ten blinds.
                  colors: <Color>[
                    Color(0xff4b2aa1),
                    Color(0xff07030f),
                  ], // red to yellow
                  tileMode:
                      TileMode.repeated, // repeats the gradient over the canvas
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 0,
                    ),
                    Row(
                      children: <Widget>[
                        const SizedBox(
                          width: 10,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Featured',
                            style: GoogleFonts.actor(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              letterSpacing: 0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 235,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'More',
                            style: GoogleFonts.actor(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              letterSpacing: 0,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CarouselSlider.builder(
                      options: CarouselOptions(
                        enlargeCenterPage: true,
                        autoPlay: true,
                        autoPlayInterval: const Duration(
                          seconds: 3,
                        ),
                        viewportFraction: 1.1,
                        height: 260,
                      ),
                      itemCount: pictures.length,
                      itemBuilder: (context, index, realIndex) {
                        return buildImage(pictures[index]);
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      bottomNavigationBar: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin: 10,
          color: Colors.transparent,
          child: Container(
            height: 70,
            // ignore: prefer_const_constructors
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                // 10% of the width, so there are ten blinds.
                colors: <Color>[
                  Color(0xff403109),
                  Color(0xff211b0b),
                ], // red to yellow
                tileMode:
                    TileMode.repeated, // repeats the gradient over the canvas
              ),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
            ),
            child: Row(
              children: <Widget>[
                const SizedBox(
                  width: 10,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: <Widget>[
                      const SizedBox(
                        height: 0,
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/homee');
                        },
                        icon: const Icon(
                          Icons.home,
                          color: Colors.orange,
                        ),
                        color: Colors.white,
                      ),
                      Text(
                        'Home',
                        style: GoogleFonts.actor(
                          fontSize: 11,
                          color: Colors.orange,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 40,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: <Widget>[
                      const SizedBox(
                        height: 0,
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/bills');
                        },
                        icon: const Icon(
                          Icons.ad_units,
                        ),
                        color: Colors.white,
                      ),
                      Text(
                        'Menu',
                        style: GoogleFonts.actor(
                          fontSize: 12,
                          color: Colors.white,
                          letterSpacing: 0.5,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 33,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: <Widget>[
                      const SizedBox(
                        height: 0,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.scanner_sharp,
                        ),
                        color: Colors.white,
                      ),
                      Text(
                        'Scan',
                        style: GoogleFonts.actor(
                          fontSize: 12,
                          color: Colors.white,
                          letterSpacing: 0.5,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 33,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: <Widget>[
                      const SizedBox(
                        height: 0,
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/support');
                        },
                        icon: const Icon(
                          Icons.headset_mic_outlined,
                        ),
                        color: Colors.white,
                      ),
                      Text(
                        'Support',
                        style: GoogleFonts.actor(
                          fontSize: 12,
                          color: Colors.white,
                          letterSpacing: 0.5,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: <Widget>[
                      const SizedBox(
                        height: 0,
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/profile');
                        },
                        icon: const Icon(
                          Icons.manage_accounts,
                        ),
                        color: Colors.white,
                      ),
                      Text(
                        'Profile',
                        style: GoogleFonts.actor(
                          fontSize: 12,
                          color: Colors.white,
                          letterSpacing: 0.5,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildImage(String pictures) => Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        color: Colors.grey,
        margin: const EdgeInsets.symmetric(horizontal: 12),
        child: Image(
          image: AssetImage(
            pictures,
          ),
          fit: BoxFit.cover,
          filterQuality: FilterQuality.high,
          colorBlendMode: BlendMode.darken,
        ),
      );
}
