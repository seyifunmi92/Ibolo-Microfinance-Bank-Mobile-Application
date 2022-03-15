import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Bills extends StatefulWidget {
  const Bills({Key? key}) : super(key: key);
  @override
  _BillsState createState() => _BillsState();
}

getBillingData() {}

class Billing {
  String name;
  bool isEditMode = false;
  bool isCompleted = false;
  String url = "url";
  String account;
  String position;
  Billing(this.name, this.isEditMode, this.isCompleted, this.url, this.account,
      this.position);
  factory Billing.fromJson(dynamic json) {
    return Billing(
        json["name"] as String,
        json["isCompleted"] as bool,
        json["isEditMode"] as bool,
        json["url"] as String,
        json["account"] as String,
        json["position"] as String);
  }
}
class _BillsState extends State<Bills> {
  hexColor(String mycolor) {
    String newcolor = "0xff" + mycolor;
    newcolor = newcolor.replaceAll("#", "");
    int colorint = int.parse(newcolor);
    return colorint;
  }

  List bills = [
    Billing("Account", false, false, "accountnext", '1', "Intern"),
    Billing("Transfers", false, false, "transfernext", '2', "Junior Dev"),
    Billing("Payment Method", true, false, "paymentmethods", '3', "Mid Dev"),
    Billing("Bill Payments", false, false, "billspayment", '4', " Senior Dev"),
    Billing("Lifestyle", false, false, "lifestyles", '5', "Senior Dev"),
    Billing("Cheques & Cards", false, false, "cheques", '6', "Senior Dev"),
    Billing("Loans & Investments ", false, false, "loans", '7', "Senior Dev"),
  ];
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        title: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Text(
                  'PREMIER SAVINGS',
                  style: GoogleFonts.lato(
                    fontSize: 8,
                    letterSpacing: 2.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Text(
                  '0725185035',
                  style: GoogleFonts.lato(
                    fontSize: 12,
                    letterSpacing: 2.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'AVAILABLE BALANCE',
                  style: GoogleFonts.lato(
                    fontSize: 10,
                    letterSpacing: 1.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '\$30.56',
                  style: GoogleFonts.lato(
                    fontSize: 20,
                    letterSpacing: 0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 8,
                ),
                Container(
                  height: 70,
                  width: 110,

                  // ignore: unnecessary_new
                  child: new InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/accountss');
                    },
                    child: Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: <Widget>[
                        const SizedBox(
                          height: 10,
                        ),
                        const Icon(
                          Icons.menu,
                          color: Colors.grey,
                          size: 20,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Accounts',
                          style: GoogleFonts.lato(
                            fontSize: 13,
                            letterSpacing: 0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: <Color>[
                        Color(hexColor("#3b7514")),
                        Color(hexColor("#081202")),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                const SizedBox(
                  width: 7,
                ),
                Container(
                  height: 70,
                  width: 110,

                  // ignore: unnecessary_new
                  child: new InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/beneficiaries');
                    },
                    child: Column(
                      children: <Widget>[
                        const SizedBox(
                          height: 10,
                        ),
                        const Icon(
                          Icons.account_box,
                          color: Colors.grey,
                          size: 20,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Beneficiaries',
                          style: GoogleFonts.lato(
                            fontSize: 13,
                            letterSpacing: 0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),

                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: <Color>[
                        Color(hexColor("#3b7514")),
                        Color(hexColor("#081202")),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                const SizedBox(
                  width: 7,
                ),
                Container(
                  height: 70,
                  width: 110,

                  // ignore: unnecessary_new
                  child: new InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/transactions');
                    },
                    child: Column(
                      children: <Widget>[
                        const SizedBox(
                          height: 10,
                        ),
                        const Icon(
                          Icons.alarm_rounded,
                          color: Colors.grey,
                          size: 20,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Transactions',
                          style: GoogleFonts.lato(
                            fontSize: 13,
                            letterSpacing: 0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: <Color>[
                        Color(hexColor("#3b7514")),
                        Color(hexColor("#081202")),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ],
            ),
          ],
        ),
        automaticallyImplyLeading: false,
        elevation: 0.0,
        shadowColor: Colors.blueAccent,
        toolbarHeight: 240,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(8),
            bottomRight: Radius.circular(8),
          ),
        ),
        backgroundColor: Color(hexColor("#fffcfd")),
      ),
      body: ListView.builder(
        itemCount: bills.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 70,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[
                  Color(hexColor("#3b7514")),
                  Color(hexColor("#0d3303")),
                ],
              ),
              borderRadius: BorderRadius.circular(5),
            ),
            key: Key(bills[index].name),
            child: Card(
              child: ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        const SizedBox(
                          height: 22,
                        ),
                        Text(
                          bills[index].name,
                          style: GoogleFonts.lato(
                            letterSpacing: 0.0,
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 60,
                    ),
                  ],
                ),
                trailing: CircleAvatar(
                  backgroundColor: Colors.white12,
                  radius: 13,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/${bills[index].url}');
                    },
                    icon: const Icon(
                      Icons.arrow_forward_ios,
                      size: 12,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              margin: const EdgeInsets.all(0),
              color: Colors.transparent,
            ),
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
            height: 70,
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
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
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
