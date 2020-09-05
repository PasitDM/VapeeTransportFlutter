import 'package:app_vapee_transport/screens/vapee_layout.dart';
import 'package:flutter/material.dart';

import '../../constraint.dart';

class TrackParcelPage extends StatefulWidget {
  @override
  _TrackParcelPageState createState() => _TrackParcelPageState();
}

class _TrackParcelPageState extends State<TrackParcelPage> {
  TextEditingController _trackController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return VapeeLayout(
      appBar: AppBar(
        backgroundColor: clrBackground,
        elevation: 0,
        title: Text(
          'ติดตามพัสดุ',
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Image.asset(
                'assets/images/ic_van.png',
                scale: 5,
              ),
              Text(
                'กรอกหมายเลขพัสดุ',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '1. กรอกรหัสพัสดุที่ได้รับจากใบเสร็จการส่งพัสดุ\n2. กดปุ่ม “ติดตาม”',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(12),
                child: TextField(
                  controller: _trackController,
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
                    labelText: 'หมายเลขพัสดุ',
                    labelStyle: TextStyle(
                      fontSize: 22,
                      color: Colors.grey[700],
                    ),
                  ),
                ),
              ),
              RaisedButton(
                onPressed: () {},
                padding: EdgeInsets.symmetric(
                  horizontal: 25,
                  vertical: 6,
                ),
                color: clrBtn,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  'ติดตามพัสดุ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
