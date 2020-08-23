import 'package:flutter/material.dart';

import '../constraint.dart';

class TrackParcelPage extends StatefulWidget {
  @override
  _TrackParcelPageState createState() => _TrackParcelPageState();
}

class _TrackParcelPageState extends State<TrackParcelPage> {
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
