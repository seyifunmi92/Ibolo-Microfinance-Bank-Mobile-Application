import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Beneficiaries extends StatefulWidget {
  const Beneficiaries({Key? key}) : super(key: key);
  @override
  _BeneficiariesState createState() => _BeneficiariesState();
}

class People {
  int id;
  String name;
  String bankname;
  int acctno;
  String url = "url";
  People(this.id, this.name, this.bankname, this.acctno, this.url);
  // ignore: non_constant_identifier_names
  factory People.fromJson(dynamic json) {
    return People(
      json["id"] as int,
      json["name"] as String,
      json["bankname"] as String,
      json["acctno"] as int,
      json["url"] as String,
    );
  }
}

class _BeneficiariesState extends State<Beneficiaries> {
  hexColor(String mycolor) {
    String newcolor = "0xff" + mycolor;
    newcolor = newcolor.replaceAll("#", "");
    int colorint = int.parse(newcolor);
    return colorint;
  }

  List seyi = [
    People(
      1,
      "ABIODUN SAMUEL FABIYI",
      "Zenith Bank",
      220894058,
      "",
    ),
    People(
      2,
      "AKEREDOLU OPEMIPOSI",
      "Access Bank",
      0051734947,
      "",
    ),
    People(3, "EDO ENAHORO MONDAY", "Union Bank", 0013099488, ""),
    People(
      4,
      "ADEBAYO, ADEJIDE RASAK",
      "GT Bank",
      0051736597,
      "",
    ),
    People(
      5,
      "MAUREEN ANYACHAO",
      "Access Bank",
      0072652527,
      "",
    ),
    People(
      6,
      "HALIMA ADEJOBI",
      "First Bank",
      554246728,
      "",
    ),
    People(
      7,
      "IFEANYI, ITOHAN J",
      "Access Bank",
      0051734947,
      "",
    ),
    People(
      8,
      "EBUN FATUNMOLE",
      "GT Bank",
      0051733536,
      "",
    ),
    People(
      9,
      "TOBI OSHOKOYA",
      "POLARIS Bank",
      0051736252,
      "",
    ),
  ];
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
        ),
        backgroundColor: Colors.white,
        toolbarHeight: 150,
        automaticallyImplyLeading: false,
        title: Column(
          children: [
            Container(
              height: 75,
              width: 380,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
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
                // ignore: prefer_const_literals_to_create_immutables
              ),
              child: Column(
                children: <Widget>[
                  const SizedBox(
                    height: 7,
                  ),
                  Text(
                    "Beneficiaries",
                    style: GoogleFonts.actor(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.5,
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Container(
                    height: 35,
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(3),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Search",
                          hintStyle: GoogleFonts.lato(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                          border: InputBorder.none,
                          suffixIcon: const Padding(
                            padding: EdgeInsets.all(5),
                            child: Icon(
                              Icons.search,
                              color: Colors.white,
                              size: 17,
                            ),
                          ),
                          contentPadding: const EdgeInsets.all(12),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 0,
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/bills');
              },
              child: Text(
                'Back',
                style: GoogleFonts.actor(
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0,
                  fontSize: 15,
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      body: ListView.builder(
        itemCount: seyi.length,
        itemBuilder: (BuildContext context, int index) {
          People result = (seyi[index]);
          return Card(
            child: ListTile(
              key: Key(result.name),
              title: Text(
                result.name,
                style: GoogleFonts.lato(
                  color: Colors.blue[900],
                  fontSize: 13,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Row(
                children: [
                  Text(
                    result.bankname,
                    style: GoogleFonts.lato(
                      color: Colors.blueGrey,
                      fontSize: 10,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    result.acctno.toString(),
                    style: GoogleFonts.lato(
                      color: Colors.blueGrey,
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
              tileColor: Colors.white,
              selectedTileColor: Colors.black,
              focusColor: Colors.black,
              selectedColor: Colors.black,
              hoverColor: Colors.black,
              trailing: TextButton(
                onPressed: () {
                  Navigator.pushNamed(
                      context, "/${seyi[index].url.toString()}");
                },
                child: Text(
                  "View Details",
                  style: GoogleFonts.actor(
                    fontSize: 10,
                    color: Colors.red,
                  ),
                ),
              ),
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
    );
  }
}
