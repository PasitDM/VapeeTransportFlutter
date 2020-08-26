import 'package:app_vapee_transport/constraint.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool checkBoxFemale = false, checkBoxMale = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: clrBackground,
      appBar: AppBar(
        backgroundColor: clrBackground,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Text(
                'Welcome\nRegister account',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(8),
              child: TextFormField(
                style: TextStyle(fontSize: 22.0),
                decoration: InputDecoration(
                  // filled: true,
                  // fillColor: Colors.white,
                  contentPadding: const EdgeInsets.only(
                    left: 10.0,
                    bottom: 10.0,
                    top: 10.0,
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
                  hintText: 'รหัสบัตรประชาชน',
                  hintStyle: TextStyle(fontSize: 22),
                  labelText: 'รหัสบัตรประชาชน',
                  labelStyle: TextStyle(color: Colors.black87),
                ),
              ),
            ), // รหัสบัตรประชาชน
            Container(
              margin: EdgeInsets.all(8),
              child: TextFormField(
                style: TextStyle(fontSize: 22.0),
                decoration: InputDecoration(
                  // filled: true,
                  // fillColor: Colors.white,
                  contentPadding: const EdgeInsets.only(
                    left: 10.0,
                    bottom: 10.0,
                    top: 10.0,
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
                  hintText: 'อีเมล์',
                  hintStyle: TextStyle(fontSize: 22),
                  labelText: 'อีเมล์',
                  labelStyle: TextStyle(color: Colors.black87),
                ),
              ),
            ), // E-mail
            Container(
              margin: EdgeInsets.all(8),
              child: TextFormField(
                style: TextStyle(fontSize: 22.0),
                decoration: InputDecoration(
                  // filled: true,
                  // fillColor: Colors.white,
                  contentPadding: const EdgeInsets.only(
                    left: 10.0,
                    bottom: 10.0,
                    top: 10.0,
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
                  hintText: 'ชื่อ',
                  hintStyle: TextStyle(fontSize: 22),
                  labelText: 'ชื่อ',
                  labelStyle: TextStyle(color: Colors.black87),
                ),
              ),
            ), // Name
            Container(
              margin: EdgeInsets.all(8),
              child: TextFormField(
                style: TextStyle(fontSize: 22.0),
                decoration: InputDecoration(
                  // filled: true,
                  // fillColor: Colors.white,
                  contentPadding: const EdgeInsets.only(
                    left: 10.0,
                    bottom: 10.0,
                    top: 10.0,
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
                  hintText: 'นามสกุล',
                  hintStyle: TextStyle(fontSize: 22),
                  labelText: 'นามสกุล',
                  labelStyle: TextStyle(color: Colors.black87),
                ),
              ),
            ), // นามสกุล
            Container(
              margin: EdgeInsets.all(8),
              child: TextFormField(
                style: TextStyle(fontSize: 22.0),
                decoration: InputDecoration(
                  // filled: true,
                  // fillColor: Colors.white,
                  contentPadding: const EdgeInsets.only(
                    left: 10.0,
                    bottom: 10.0,
                    top: 10.0,
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
                  hintText: 'ชื่อผู้ใช้',
                  hintStyle: TextStyle(fontSize: 22),
                  labelText: 'ชื่อผู้ใช้',
                  labelStyle: TextStyle(color: Colors.black87),
                ),
              ),
            ), // ชื่อผู้ใช้
            Container(
              margin: EdgeInsets.all(8),
              child: TextFormField(
                style: TextStyle(fontSize: 22.0),
                decoration: InputDecoration(
                  // filled: true,
                  // fillColor: Colors.white,
                  contentPadding: const EdgeInsets.only(
                    left: 10.0,
                    bottom: 10.0,
                    top: 10.0,
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
                  hintText: 'รหัสผ่าน',
                  hintStyle: TextStyle(fontSize: 22),
                  labelText: 'รหัสผ่าน',
                  labelStyle: TextStyle(color: Colors.black87),
                ),
              ),
            ), // รหัสผ่าน
            Container(
              margin: EdgeInsets.all(8),
              child: TextFormField(
                style: TextStyle(fontSize: 22.0),
                decoration: InputDecoration(
                  // filled: true,
                  // fillColor: Colors.white,
                  contentPadding: const EdgeInsets.only(
                    left: 10.0,
                    bottom: 10.0,
                    top: 10.0,
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
                  hintText: 'ยืนยันรหัสผ่าน',
                  hintStyle: TextStyle(fontSize: 22),
                  labelText: 'ยืนยันรหัสผ่าน',
                  labelStyle: TextStyle(color: Colors.black87),
                ),
              ),
            ), // ยืนยันรหัสผ่าน
            Container(
              margin: EdgeInsets.all(8),
              child: TextFormField(
                style: TextStyle(fontSize: 22.0),
                decoration: InputDecoration(
                  // filled: true,
                  // fillColor: Colors.white,
                  contentPadding: const EdgeInsets.only(
                    left: 10.0,
                    bottom: 10.0,
                    top: 10.0,
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
                  hintText: 'เบอร์โทรศัพท์',
                  hintStyle: TextStyle(fontSize: 22),
                  labelText: 'เบอร์โทรศัพท์',
                  labelStyle: TextStyle(color: Colors.black87),
                ),
              ),
            ), // เบอร์โทรศัพท์
            Container(
              margin: EdgeInsets.all(8),
              child: TextFormField(
                style: TextStyle(fontSize: 22.0),
                decoration: InputDecoration(
                  // filled: true,
                  // fillColor: Colors.white,
                  contentPadding: const EdgeInsets.only(
                    left: 10.0,
                    bottom: 10.0,
                    top: 10.0,
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
                  hintText: 'ที่อยู่',
                  hintStyle: TextStyle(fontSize: 22),
                  labelText: 'ที่อยู่',
                  labelStyle: TextStyle(color: Colors.black87),
                ),
              ),
            ), // ที่อยู่
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Row(
                children: [
                  Text(
                    'เพศ',
                    style: TextStyle(fontSize: 22),
                  ),
                  Checkbox(
                    checkColor: Colors.black,
                    activeColor: Colors.white,
                    value: checkBoxFemale,
                    onChanged: (bool value) {
                      setState(() {
                        checkBoxFemale = value;
                      });
                    },
                  ),
                  Text(
                    'หญิง',
                    style: TextStyle(fontSize: 22),
                  ),
                  Checkbox(
                    checkColor: Colors.black,
                    activeColor: Colors.white,
                    value: checkBoxMale,
                    onChanged: (bool value) {
                      setState(() {
                        checkBoxMale = value;
                      });
                    },
                  ),
                  Text(
                    'ชาย',
                    style: TextStyle(fontSize: 22),
                  ),
                ],
              ),
            ),
            RaisedButton(
              onPressed: () {},
              padding: EdgeInsets.symmetric(horizontal: 60, vertical: 6),
              color: clrBtn,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Text(
                'สมัครสมาชิก',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
