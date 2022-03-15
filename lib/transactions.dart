import 'dart:convert';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

class Transactions extends StatefulWidget {
  const Transactions({Key? key}) : super(key: key);
  @override
  _TransactionsState createState() => _TransactionsState();
}

Future getFireData() async {
  var response = await http.get(Uri.https("console.firebase.google.com",
      "project/ibolo-mfb-mobile-app/firestore/data/~2F"));
  var jsonData = jsonDecode(response.body);
  List user = [];
  for (var u in jsonData) {
    Texts result =
        Texts(u["id"], u["content"], u["amount"], u["url"], u["sub"]);
    user.add(result);
    // ignore: avoid_print
    print(user.length);
  }
  return user;
} // ignore: unused_element

// ignore: unused_element
Future<FirebaseApp> _seyiApp = Firebase.initializeApp();

class Texts {
  int? id;
  String content;
  String amount;
  String url = "url";
  String sub;
  Texts(this.id, this.content, this.amount, this.url, this.sub);
  factory Texts.fromJson(dynamic json) {
    return Texts(
      json["id"] as int,
      json["content"] as String,
      json["amount"] as String,
      json["url"] as String,
      json["sub"] as String,
    );
  }
}

class _TransactionsState extends State<Transactions> {
  hexColor(String mycolor) {
    String newcolor = "0xff" + mycolor;
    newcolor = newcolor.replaceAll("#", "");
    int colorint = int.parse(newcolor);
    return colorint;
  }

  List seyi = [
    Texts(1, "Transfer to Harley Johnson", "- \$1,000,000", "",
        "Intrabank transfer at 2:41pm"),
    Texts(2, "Airtime Recharge on 08137330706", "- \$200", "/",
        "Airtime recharge at 3:11pm"),
    Texts(3, "Transfer to Aderonke Fatunmole", "- \$500,000", "/",
        "Airtime recharge at 10:00pm"),
    Texts(5, "Airtel Data Recharge on 08033486660", "- \$1,000", "/",
        "Data recharge at 11:06pm"),
    Texts(6, "Transfer to Ebun Fatunmdoole", "- \$5,000", "/",
        "Intrabank transfer at 2:00am"),
    Texts(7, "Transfer to Tomilola Fatunmole", "- \$5,000", "/",
        "Interbank transfer at 3:00am"),
    Texts(8, "Transfer to Damilare Ajayi", "- \$5,000", "/",
        "Interbank transfer at 7:00am"),
    Texts(9, "Credit Alert from Ebun Fatunmole", "+ \$50,000", "/",
        "Account credited at 9:00am"),
    Texts(10, "Credit Alert from Denukan Network Limited", "+ \$500,000", "/",
        "Account credited at 10:00am"),
    Texts(11, "Credit Alert from Adeboye Samson", "+ \$5,000", "/",
        "Account credited at 10:22am"),
    Texts(12, "ATM Charges for month of January", "- \$300", "/",
        "Account debited at 10:35am"),
    Texts(13, "Stamp Duty for month of january", "- \$1,000", "/",
        "Account debited at 11:11am"),
    Texts(14, "Transfer to Oluwatobi Osho", "- \$300,000", "/",
        "Interbank transfer at 11:45am"),
    Texts(15, "Credit Alert from Chapel Of Uncommon grace", "+ \$30,000", "/",
        "Account credited at 11:52am"),
    Texts(16, "Credit Alert from CliqBank HQ", " + \$5000", "/",
        "Account credited at 11:55am"),
  ];
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(hexColor("#fffcfd")),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const SizedBox(
                  width: 0,
                ),
                Text(
                  "Transaction History",
                  style: GoogleFonts.lato(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: 320,
              height: 75,
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
                  tileMode:
                      TileMode.repeated, // repeats the gradient over the canvas
                ),
                // ignore: prefer_const_literals_to_create_immutables
                boxShadow: [
                  const BoxShadow(
                    color: Colors.blue,
                    offset: Offset.zero,
                    blurStyle: BlurStyle.outer,
                    blurRadius: 10.0,
                    spreadRadius: 0.0,
                  ),
                ],
              ),
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/homee');
                },
                child: Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const SizedBox(
                      height: 17,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        // ignore: prefer_const_constructors
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "0725185035",
                          style: GoogleFonts.lato(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                      ],
                    ),
                    // ignore: prefer_const_constructors
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        // ignore: prefer_const_constructors
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "PREMIER SAVINGS - OLUWASEYI ABRAHAM FATUNMOLE",
                          style: GoogleFonts.lato(
                            fontWeight: FontWeight.bold,
                            fontSize: 9,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "MONDAY, 31st, JAN 2022",
                  style: GoogleFonts.lato(
                    color: Colors.grey[600],
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
        toolbarHeight: 160,
        backgroundColor: Color(hexColor("#e9e4f0")),
        elevation: 0.0,
        // ignore: prefer_const_constructors
        shape: RoundedRectangleBorder(
          // ignore: prefer_const_constructors
          borderRadius: BorderRadius.only(
            bottomLeft: const Radius.circular(15),
            bottomRight: const Radius.circular(15),
          ),
        ),
      ),
      // ignore: prefer_const_constructors
      body: ListView.builder(
        itemCount: seyi.length,
        itemBuilder: (BuildContext context, int index) {
          Texts ibolo = (seyi[index]);
          return Card(
            child: ListTile(
              key: Key(ibolo.content),
              title: Text(
                ibolo.content,
                style: GoogleFonts.lato(
                  color: Colors.blue[900],
                  fontSize: 13,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    ibolo.amount,
                    style: GoogleFonts.lato(
                      color: Colors.red,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    color: Colors.transparent,
                    height: 10,
                    width: 80,
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, "/${seyi[index].url}");
                      },
                      child: Text(
                        "        view details",
                        style: GoogleFonts.lato(
                          color: Colors.grey,
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              subtitle: Text(
                ibolo.sub,
                style: GoogleFonts.lato(
                  color: Colors.grey,
                  fontSize: 10,
                ),
              ),
              tileColor: Colors.white,
              selectedTileColor: Colors.black,
              focusColor: Colors.black,
              selectedColor: Colors.black,
              hoverColor: Colors.black,
            ),
            margin: const EdgeInsets.all(0.2),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(3),
            ),
            elevation: 0.0,
            color: Colors.black26,
          );
        },
      ),
      bottomNavigationBar: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin: 10,
          color: Colors.transparent,
          child: Container(
            height: 40,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[
                  Color(0xff403109),
                  Color(0xff211b0b),
                ],
              ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
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
                          color: Colors.white,
                        ),
                        color: Colors.white,
                      ),
                      Text(
                        'Home',
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
                        color: Colors.orange,
                      ),
                      Text(
                        'Menu',
                        style: GoogleFonts.actor(
                          fontSize: 11,
                          color: Colors.orange,
                          letterSpacing: 0,
                          fontWeight: FontWeight.bold,
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
                        onPressed: () {},
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          getFireData();
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
