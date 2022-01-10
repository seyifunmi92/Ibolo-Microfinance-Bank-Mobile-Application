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
          backgroundColor: Colors.black54,
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: <Widget>[
                // ignore: prefer_const_constructors
                SizedBox(
                  height: 48,
                ),
                Text(
                  'WELCOME TO',
                  style: GoogleFonts.actor(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 2.0,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'IBOLO',
                      style: GoogleFonts.lato(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        letterSpacing: 2.0,
                      ),
                    ),
                  ],
                ),
                Text(
                  'MICROFINANCE BANK',
                  style: GoogleFonts.lato(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 7.0,
                  ),
                ),

                const SizedBox(
                  height: 500,
                ),

                buildIndicator(),
                const SizedBox(
                  height: 30,
                ),
                RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  },
                  child: Text(
                    'CONTINUE',
                    style: GoogleFonts.lato(
                      letterSpacing: 3.0,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  padding: const EdgeInsets.fromLTRB(135, 15, 135, 15),
                  color: Colors.grey[800],
                ),
                const SizedBox(
                  height: 10,
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
                      onPressed: () {},
                      child: Text(
                        'Register',
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
                      onPressed: () {
                        Navigator.pushNamed(context, '/account');
                      },
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
        color: Colors.grey,
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
