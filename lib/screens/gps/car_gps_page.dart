import 'package:app_vapee_transport/screens/gps/car_gps_second_page.dart';
import 'package:app_vapee_transport/screens/vapee_layout.dart';
import 'package:flutter/material.dart';

import '../../constraint.dart';

class CarGpsPage extends StatefulWidget {
  @override
  _CarGpsPageState createState() => _CarGpsPageState();
}

class _CarGpsPageState extends State<CarGpsPage> {
  TextEditingController _fieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return VapeeLayout(
      appBar: AppBar(
        backgroundColor: clrBackground,
        elevation: 0,
        title: Text(
          'พิกัดตำแหน่งรถโดยสาร',
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset("assets/images/busmap.png"),
            Container(
              margin: EdgeInsets.all(12),
              child: TextField(
                controller: _fieldController,
                style: TextStyle(fontSize: 22.0),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: const EdgeInsets.only(
                    left: 10.0,
                    bottom: 2.0,
                    top: 2.0,
                    right: 10,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: '1234',
                  hintStyle: TextStyle(fontSize: 22),
                  labelText: 'กรอกทะเบียนรถ',
                  labelStyle: TextStyle(
                    fontSize: 22,
                    color: Colors.grey[700],
                  ),
                ),
              ),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CarGpsSecondPage()),
                );
              },
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 6),
              color: clrBtn,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                'ติดตามรถโดยสาร',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
