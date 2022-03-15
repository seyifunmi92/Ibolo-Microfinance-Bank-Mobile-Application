// ignore: unused_import
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// ignore: unused_import
import 'package:firebase_auth/firebase_auth.dart';
// ignore: unused_import
import 'package:local_auth/local_auth.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);
  @override
  _LoginState createState() => _LoginState();
}
class _LoginState extends State<Login> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  // getFingerPrint() async {
  //   LocalAuthentication auth = LocalAuthentication();
  //   var localAuth;
  //   bool canCheckBiometrics = await localAuth.canCheckBiometrics;
  //   List<BiometricType> availableBiometrics =
  //   await auth.getAvailableBiometrics();
  //   String authorized = "Not Authorized";
  //   print("This is the Value");
  //   print(auth);
  //   print(canCheckBiometrics);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          // ignore: prefer_const_constructors
          decoration: BoxDecoration(
            image: const DecorationImage(
              image: AssetImage('lib/images/iboloss.jpg'),
              fit: BoxFit.fitHeight,
              colorFilter: ColorFilter.mode(
                Colors.black54,
                BlendMode.darken,
              ),
            ),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.black54,
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                // ignore: prefer_const_constructors
                Image(
                  image: const AssetImage("lib/images/ibolospng.png"),
                  height: 180,
                ),
                const SizedBox(
                  height: 10,
                ),

                const SizedBox(
                  height: 10,
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
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: TextField(
                          controller: emailController,
                          decoration: InputDecoration(
                            hintText: 'USER ID',
                            hintStyle: GoogleFonts.lato(
                              letterSpacing: 2.0,
                              fontSize: 10,
                              color: Colors.grey,
                            ),
                            border: InputBorder.none,
                            prefixIcon: const Padding(
                              padding: EdgeInsets.all(0),
                              child: Icon(
                                Icons.people,
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
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: TextField(
                          controller: passwordController,
                          decoration: InputDecoration(
                            hintText: 'PASSWORD',
                            hintStyle: GoogleFonts.lato(
                              letterSpacing: 2.0,
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
                            suffixIcon: Padding(
                              padding: const EdgeInsets.all(0),
                              child: InkWell(
                                onTap: () {},
                                // ignore: prefer_const_constructors
                                child: Icon(
                                  Icons.visibility,
                                  color: Colors.grey,
                                  size: 17,
                                ),
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
                Container(
                  width: 320,
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
                      logins();
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
                Row(children: <Widget>[
                  const SizedBox(
                    width: 122,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Log in with Touch ID",
                      style: GoogleFonts.actor(
                        color: Colors.blueGrey,
                        letterSpacing: 0.5,
                      ),
                    ),
                  ),

                  // ignore: avoid_unnecessary_containers
                  Container(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () {},
                      // ignore: prefer_const_constructors
                      child: Icon(
                        Icons.touch_app,
                        color: Colors.deepOrangeAccent,
                      ),
                    ),
                  ),
                ]),
                const SizedBox(
                  height: 120,
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
                Container(
                  width: 320,
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
                        "SIGN UP",
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

  Future logins() async {
    // var code = await FirebaseAuth.instance.signInWithEmailAndPassword(
    //     email: emailController.text, password: passwordController.text);

    // print("Result");
    // print(code);

    // if (code.user!.email != null) {
    //   Navigator.pushNamed(context, '/homee');
    // } else
    //   // ignore: curly_braces_in_flow_control_structures
    //   return showDialog(
    //       context: context,
    //       builder: (BuildContext context) {
    //         return AlertDialog(
    //           content: Column(
    //             children: const <Widget>[
    //               SizedBox(
    //                 height: 10,
    //               ),
    //               Text("Invalid Login details"),
    //               SizedBox(
    //                 height: 20,
    //               ),
    //               Text("Please provide correct login details"),
    //             ],
    //           ),
    //         );
    //});

    await FirebaseAuth.instance
        .signInWithEmailAndPassword(
            email: emailController.text, password: passwordController.text)
        .then((user) {
      if (user.user!.email != null) {
        Navigator.pushNamed(context, '/homee');
      }
    }).catchError((error) {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return CupertinoAlertDialog(
              title: Text(
                "Warning",
                style: GoogleFonts.lato(
                  fontSize: 12,
                  letterSpacing: 2.0,
                  color: Colors.white,
                ),
              ),
              content: Column(
                children: <Widget>[
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Invalid Login details",
                    style: GoogleFonts.actor(
                      color: Colors.white,
                      fontSize: 13,
                      letterSpacing: 0.0,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Please provide correct login details!!",
                    style: GoogleFonts.actor(),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/login');
                    },
                    child: Text(
                      "BACK",
                      style: GoogleFonts.actor(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2.0,
                      ),
                    ),
                  ),
                ],
              ),
            );
          });
    });
  }
}

@override
Widget build(BuildContext context) {
  // TODO: implement build
  throw UnimplementedError();
}
