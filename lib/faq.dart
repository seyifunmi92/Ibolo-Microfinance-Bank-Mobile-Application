// ignore: unused_import
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:google_fonts/google_fonts.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Faq extends StatefulWidget {
  const Faq({Key? key}) : super(key: key);

  @override
  _FaqState createState() => _FaqState();
}

// ignore: unused_element
Future<FirebaseApp> _seyiApp = Firebase.initializeApp();

// ignore: unused_element
class _FaqState extends State<Faq> {
  final Stream<QuerySnapshot> users =
      FirebaseFirestore.instance.collection("user").snapshots();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: StreamBuilder(
          stream: users,
          builder: (BuildContext context,
              AsyncSnapshot<QuerySnapshot<Object?>> snapshot) {
            if (snapshot.hasError) {
              // ignore: prefer_const_constructors
              return Center(
                  child:
                      const Text("Connection to firebase is not successful"));
            } else if (snapshot.connectionState == ConnectionState.waiting) {
              // ignore: prefer const_constructors
              return const Center(child: Text("loading"));
            }
            final data = snapshot.requireData;
            return ListView.builder(
              itemCount: data.size,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text("${data.docs[index]['content']}"),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
