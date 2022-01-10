import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Bills extends StatefulWidget {
  const Bills({Key? key}) : super(key: key);

  @override
  _BillsState createState() => _BillsState();
}

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
  List bills = [
    Billing("Account", false, false, "", '1', "Intern"),
    Billing("Transfers", false, false, "transfer", '2', "Junior Dev"),
    Billing("Payment Method", true, false, "payment", '3', "Mid Dev"),
    Billing("Bill Payments", false, false, "bills", '4', " Senior Dev"),
    Billing("Lifestyle", false, false, "lifestyle", '5', "Senior Dev"),
    Billing("Cheques & Cards", false, false, "cheques", '6', "Senior Dev"),
    Billing("Customer care ", false, false, "new", '7', "Senior Dev"),
    Billing("Account Opening", false, false, "new", '7', "Senior Dev"),
    Billing("New Account", false, false, "new", '7', "Senior Dev"),
    Billing("New Account holder", false, false, "new", '7', "Senior Dev"),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white12,
      appBar: AppBar(
        title: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Text(
                  'PREMIER SAVINGS',
                  style: GoogleFonts.lato(
                    fontSize: 10,
                    letterSpacing: 2.0,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Text(
                  '0725185035',
                  style: GoogleFonts.lato(
                    fontSize: 10,
                    letterSpacing: 2.0,
                    color: Colors.white,
                  ),
                ),
              ],
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
                    color: Colors.white,
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
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 70,
                  width: 110,
                  color: Colors.transparent,

                  // ignore: unnecessary_new
                  child: new InkWell(
                    onTap: () {},
                    child: Card(
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
                            ),
                          ),
                        ],
                      ),
                      color: Colors.grey[700],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Container(
                  height: 70,
                  width: 110,
                  color: Colors.transparent,

                  // ignore: unnecessary_new
                  child: new InkWell(
                    onTap: () {},
                    child: Card(
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
                            ),
                          ),
                        ],
                      ),
                      color: Colors.grey[700],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Container(
                  height: 70,
                  width: 110,
                  color: Colors.transparent,

                  // ignore: unnecessary_new
                  child: new InkWell(
                    onTap: () {},
                    child: Card(
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
                            ),
                          ),
                        ],
                      ),
                      color: Colors.grey[700],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
        automaticallyImplyLeading: false,
        elevation: 0.0,
        shadowColor: Colors.blueAccent,
        toolbarHeight: 170,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(0),
            bottomRight: Radius.circular(0),
          ),
        ),
        backgroundColor: Colors.grey[900],
      ),
      body: ListView.builder(
        itemCount: bills.length,
        itemBuilder: (BuildContext context, int index) {
          return Dismissible(
            key: Key(bills[index].name),
            child: Card(
              child: ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      bills[index].name,
                      style: GoogleFonts.lato(
                        letterSpacing: 0.0,
                        fontSize: 14,
                        color: Colors.white,
                      ),
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
                      color: Colors.blueGrey,
                    ),
                  ),
                ),
                focusColor: Colors.amber,
              ),
              margin: const EdgeInsets.all(0.5),
              color: Colors.black12,
            ),
          );
        },
      ),
      bottomNavigationBar: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin: 10,
          color: Colors.grey[900],
          child: Container(
            height: 70,
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
                        color: Colors.blue,
                      ),
                      Text(
                        'Menu',
                        style: GoogleFonts.actor(
                          fontSize: 12,
                          color: Colors.blue,
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
