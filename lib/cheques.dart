import 'package:flutter/material.dart';

class Cheques extends StatefulWidget {
  const Cheques({Key? key}) : super(key: key);

  @override
  _ChequesState createState() => _ChequesState();
}

class _ChequesState extends State<Cheques> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text('cheques'),
    );
  }
}
