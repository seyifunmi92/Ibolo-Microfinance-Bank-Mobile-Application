import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/cupertino.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  hexColor(String mycolor) {
    String newcolor = "0xff" + mycolor;
    newcolor = newcolor.replaceAll("#", "");
    int colorint = int.parse(newcolor);
    return colorint;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                // ignore: unnecessary_const
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  // 10% of the width, so there are ten blinds.
                  colors: <Color>[
                    Color(0xffd1c217),
                    Color(0xff030f4d),
                  ], // red to yellow
                  tileMode:
                      TileMode.repeated, // repeats the gradient over the canvas
                ),
              ),
              height: 240,
              width: 410,
              child: InkWell(
                onTap: () {},
                child: Column(
                  children: [
                    const SizedBox(
                      height: 25,
                    ),
                    Text(
                      'Profile',
                      style: GoogleFonts.actor(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.0,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 160,
                        ),
                        const CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage("lib/images/pixxx.jpeg"),
                        ),
                        const SizedBox(
                          width: 100,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.notifications_outlined,
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 17,
                    ),
                    Text(
                      "ADEBAYO ADEYINKA",
                      style: GoogleFonts.actor(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextButton(
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return CupertinoAlertDialog(
                                  content: Column(
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "BVN",
                                        style: GoogleFonts.actor(
                                          color: Colors.white,
                                          fontSize: 13,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 120,
                                      ),
                                      Text(
                                        "22245669820",
                                        style: GoogleFonts.lato(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Divider(
                                    height: 30,
                                    color: Colors.blue,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Phone",
                                        style: GoogleFonts.actor(
                                          color: Colors.white,
                                          fontSize: 13,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 90,
                                      ),
                                      Text(
                                        "+2348166778398",
                                        style: GoogleFonts.lato(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ));
                            });
                      },
                      child: Text(
                        "Show Details",
                        style: GoogleFonts.lato(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 13,
                ),
                Text(
                  "Privacy and Security",
                  style: GoogleFonts.lato(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              height: 70,
              width: 398,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2),
                // ignore: prefer_const_constructors
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  // 10% of the width, so there are ten blinds.
                  // ignore: prefer_const_literals_to_create_immutables
                  colors: <Color>[
                    Color(hexColor('#48db0d')),
                    Color(hexColor('#030f4d')),
                  ], // red to yellow
                  tileMode:
                      TileMode.repeated, // repeats the gradient over the canvas
                ),
              ),
              child: InkWell(
                onTap: () {},
                child: Row(
                  children: <Widget>[
                    const SizedBox(
                      width: 20,
                    ),
                    const Icon(
                      Icons.aod,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Change/Reset PIN",
                      style: GoogleFonts.actor(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      width: 160,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.white12,
                      radius: 13,
                      child: IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "/");
                        },
                        icon: const Icon(
                          Icons.arrow_forward_ios,
                          size: 12,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 70,
              width: 398,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2),
                // ignore: prefer_const_constructors
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  // 10% of the width, so there are ten blinds.
                  // ignore: prefer_const_literals_to_create_immutables
                  colors: <Color>[
                    Color(hexColor('#48db0d')),
                    Color(hexColor('#030f4d')),
                  ], // red to yellow
                  tileMode:
                      TileMode.repeated, // repeats the gradient over the canvas
                ),
              ),
              child: InkWell(
                onTap: () {},
                child: Row(
                  children: <Widget>[
                    const SizedBox(
                      width: 20,
                    ),
                    const Icon(
                      Icons.lock,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Change Password",
                      style: GoogleFonts.actor(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      width: 164,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.white12,
                      radius: 13,
                      child: IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "/");
                        },
                        icon: const Icon(
                          Icons.arrow_forward_ios,
                          size: 12,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 13,
                ),
                Text(
                  "Limits",
                  style: GoogleFonts.lato(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              height: 70,
              width: 398,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2),
                // ignore: prefer_const_constructors
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  // 10% of the width, so there are ten blinds.
                  // ignore: prefer_const_literals_to_create_immutables
                  colors: <Color>[
                    Color(hexColor('#48db0d')),
                    Color(hexColor('#030f4d')),
                  ], // red to yellow
                  tileMode:
                      TileMode.repeated, // repeats the gradient over the canvas
                ),
              ),
              child: InkWell(
                onTap: () {},
                child: Row(
                  children: <Widget>[
                    const SizedBox(
                      width: 20,
                    ),
                    const Icon(
                      Icons.dashboard_customize,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Transaction Limits",
                      style: GoogleFonts.actor(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      width: 164,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.white12,
                      radius: 13,
                      child: IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "/");
                        },
                        icon: const Icon(
                          Icons.arrow_forward_ios,
                          size: 12,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 13,
                ),
                Text(
                  "Appearance",
                  style: GoogleFonts.lato(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              height: 50,
              width: 398,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2),
                // ignore: prefer_const_constructors
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  // 10% of the width, so there are ten blinds.
                  // ignore: prefer_const_literals_to_create_immutables
                  colors: <Color>[
                    Color(hexColor('#48db0d')),
                    Color(hexColor('#030f4d')),
                  ], // red to yellow
                  tileMode:
                      TileMode.repeated, // repeats the gradient over the canvas
                ),
              ),
              child: InkWell(
                onTap: () {},
                child: Row(
                  children: <Widget>[
                    const SizedBox(
                      width: 20,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Dark',
                        style: GoogleFonts.actor(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    Container(
                      height: 50,
                      width: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        // ignore: prefer_const_constructors
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          // 10% of the width, so there are ten blinds.
                          // ignore: prefer_const_literals_to_create_immutables
                          colors: <Color>[
                            Color(hexColor('#48db0d')),
                            Color(hexColor('#030f4d')),
                          ], // red to yellow
                          tileMode: TileMode
                              .repeated, // repeats the gradient over the canvas
                        ),
                      ),
                      child: InkWell(
                        onTap: () {},
                        child: Center(
                            child: Text(
                          "Light",
                          style: GoogleFonts.actor(
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'System Default',
                        style: GoogleFonts.actor(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 70,
              width: 398,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2),
                // ignore: prefer_const_constructors
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  // 10% of the width, so there are ten blinds.
                  // ignore: prefer_const_literals_to_create_immutables
                  colors: <Color>[
                    Color(hexColor('#48db0d')),
                    Color(hexColor('#030f4d')),
                  ], // red to yellow
                  tileMode:
                      TileMode.repeated, // repeats the gradient over the canvas
                ),
              ),
              child: InkWell(
                onTap: () {},
                child: Row(
                  children: <Widget>[
                    const SizedBox(
                      width: 20,
                    ),
                    const Icon(
                      Icons.theater_comedy,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Theme",
                      style: GoogleFonts.actor(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      width: 150,
                    ),
                    const CircleAvatar(
                      backgroundColor: Colors.white12,
                      radius: 13,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const CircleAvatar(
                      backgroundColor: Colors.green,
                      radius: 13,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const CircleAvatar(
                      backgroundColor: Colors.brown,
                      radius: 13,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.blue[900],
                      radius: 13,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 70,
              width: 398,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2),
                // ignore: prefer_const_constructors
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  // 10% of the width, so there are ten blinds.
                  // ignore: prefer_const_literals_to_create_immutables
                  colors: <Color>[
                    Color(hexColor('#48db0d')),
                    Color(hexColor('#030f4d')),
                  ], // red to yellow
                  tileMode:
                      TileMode.repeated, // repeats the gradient over the canvas
                ),
              ),
              child: InkWell(
                onTap: () {},
                child: Row(
                  children: <Widget>[
                    const SizedBox(
                      width: 20,
                    ),
                    const Icon(
                      Icons.theater_comedy,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "App Icon",
                      style: GoogleFonts.actor(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      width: 180,
                    ),
                    const CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 18,
                      backgroundImage: AssetImage("lib/images/ibolospng.png"),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const CircleAvatar(
                      backgroundColor: Colors.black,
                      radius: 18,
                      backgroundImage: AssetImage("lib/images/ibolospng.png"),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                // ignore: prefer_const_constructors
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  // 10% of the width, so there are ten blinds.
                  // ignore: prefer_const_literals_to_create_immutables
                  colors: <Color>[
                    Colors.white,
                    Colors.white10,
                  ], // red to yellow
                  tileMode:
                      TileMode.repeated, // repeats the gradient over the canvas
                ),
              ),
              child: InkWell(
                onTap: () {},
                child: Row(
                  children: <Widget>[
                    const SizedBox(
                      width: 20,
                    ),
                    const SizedBox(
                      width: 107,
                    ),
                    Text(
                      "Logout",
                      style: GoogleFonts.actor(
                        fontSize: 18,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
