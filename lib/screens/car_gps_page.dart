import 'package:flutter/material.dart';

import '../constraint.dart';

class CarGpsPage extends StatefulWidget {
  @override
  _CarGpsPageState createState() => _CarGpsPageState();
}

class _CarGpsPageState extends State<CarGpsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: clrBackground,
      appBar: AppBar(
        backgroundColor: clrBackground,
        elevation: 0,
      ),
    );
  }
}
