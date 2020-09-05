import 'package:flutter/material.dart';

import '../utils/constraint.dart';

class VapeeLayout extends StatelessWidget {
  final AppBar appBar;
  final Widget body;

  const VapeeLayout({
    this.appBar,
    this.body,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        backgroundColor: clrBackground,
        appBar: appBar,
        body: body,
      ),
    );
  }
}
