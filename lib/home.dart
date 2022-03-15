// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int activeIndex = 0;
  final pictures = [
    'lib/images/home.jpg',
    'lib/images/homee.jpg',
    'lib/images/homeee.jpg',
    'lib/images/homi.jpg',
    'lib/images/homii.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider.builder(
          options: CarouselOptions(
            onPageChanged: (index, reason) =>
                setState(() => activeIndex = index),
            autoPlayInterval: const Duration(
              seconds: 5,
            ),
            autoPlay: true,
            height: 800,
            viewportFraction: 1.2,
          ),
          itemCount: pictures.length,
          itemBuilder: (context, index, realIndex) {
            return buildImage(pictures[index]);
          },
        ),
        Scaffold(
          backgroundColor: Colors.black87,
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: <Widget>[
                // ignore: prefer_const_constructors
                SizedBox(
                  height: 200,
                ),

                // ignore: prefer_const_constructors
                Image(
                  image: const AssetImage("lib/images/ibolospng.png"),
                  height: 200,
                ),

                const SizedBox(
                  height: 245,
                ),

                buildIndicator(),
                const SizedBox(
                  height: 30,
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
                        "LOGIN",
                        style: GoogleFonts.actor(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.0,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                ),

                const SizedBox(
                  height: 20,
                ),
                const Divider(
                  height: 5,
                  color: Colors.white,
                  indent: 19,
                  endIndent: 19,
                  thickness: 0,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/account');
                      },
                      child: Text(
                        'Sign Up',
                        style: GoogleFonts.lato(
                          fontSize: 12,
                          color: Colors.white,
                          letterSpacing: 0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 80,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Open Account',
                        style: GoogleFonts.lato(
                          fontSize: 12,
                          color: Colors.white,
                          letterSpacing: 0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 81,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Help',
                        style: GoogleFonts.lato(
                          fontSize: 12,
                          color: Colors.white,
                          letterSpacing: 0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget buildImage(String pictures) => Container(
        color: Colors.transparent,
        margin: const EdgeInsets.symmetric(horizontal: 12),
        child: Image(
          image: AssetImage(
            pictures,
          ),
          fit: BoxFit.cover,
          colorBlendMode: BlendMode.darken,
          filterQuality: FilterQuality.high,
        ),
      );

  Widget buildIndicator() => (AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: pictures.length,
        // ignore: prefer_const_constructors
        effect: SlideEffect(
          dotColor: Colors.blueGrey,
          activeDotColor: Colors.blue,
          radius: 20,
          dotWidth: 5,
          dotHeight: 5,
        ),
      ));
}
