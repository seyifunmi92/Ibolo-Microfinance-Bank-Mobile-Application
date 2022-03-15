// ignore: unused_import
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// ignore: unused_import
import 'package:firebase_auth/firebase_auth.dart';

class New extends StatefulWidget {
  const New({Key? key}) : super(key: key);

  @override
  _NewState createState() => _NewState();
}
// ignore: unused_element
Future<FirebaseApp> _seyiApp = Firebase.initializeApp();
class _NewState extends State<New> {
  // ignore: unused_field
  final Stream<QuerySnapshot> _userSeyi =
      FirebaseFirestore.instance.collection("data").snapshots();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(children: <Widget>[
        Container(
          height: 80,
          width: 400,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            // ignore: prefer_const_constructors
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              // ignore: prefer_const_literals_to_create_immutables
              colors: <Color>[
                Colors.amber,
                Colors.blue,
              ],
            ),
          ),
          child: InkWell(
            onTap: () async {},
            child: Center(
              child: Text(
                "CRUD Operations with Firestore",
                style: GoogleFonts.lato(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  letterSpacing: 0,
                ),
              ),
            ),
          ),
        ),
        StreamBuilder(
          stream: (_userSeyi),
          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.hasError) {
              return const Text("Error connecting");
            } else if (snapshot.hasData) {
              final seyi = snapshot.data!.docs;
              return ListView.builder(
                itemCount: seyi.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text(
                      "name",
                      style: GoogleFonts.actor(
                        color: Colors.black,
                      ),
                    ),
                  );
                },
              );
            } else {
              return const Text("Error in connection");
            }
          },
        ),
      ]
        ),
    );
  }
}
