import 'package:flutter/material.dart';

class Loans extends StatefulWidget {
  const Loans({Key? key}) : super(key: key);

  @override
  _LoansState createState() => _LoansState();
}

class _LoansState extends State<Loans> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text('loans'),
    );
  }
}
