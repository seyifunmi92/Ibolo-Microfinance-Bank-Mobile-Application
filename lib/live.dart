import 'package:flutter/material.dart';
class Live extends StatefulWidget {
  const Live({Key? key}) : super(key: key);

  @override
  _LiveState createState() => _LiveState();
}

class _LiveState extends State<Live> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('live'),
    );
  }
}
