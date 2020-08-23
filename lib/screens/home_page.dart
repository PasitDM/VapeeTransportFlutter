import '../constraint.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: clrBackground,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40.0, left: 10, right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Vapee Transport',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 42,
                  ),
                ),
                Text(
                  'Surin - Khonkean',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 42,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {
              print('login page');
              Navigator.pushNamed(context, '/login');
            },
            child: Center(
              child: Container(
                margin: EdgeInsets.all(5),
                color: Colors.white,
                width: MediaQuery.of(context).size.width * 0.9,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        'assets/images/ic_login.png',
                        scale: 12,
                      ),
                    ),
                    Text(
                      'เข้าสู่ระบบ/สมัครสมาชิก',
                      style: TextStyle(
                        fontSize: 40,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ), // เข้าสู่ระบบ/สมัครสมาชิก
          InkWell(
            onTap: () {
              print('book-ticket page');
              Navigator.pushNamed(context, '/bookTicket');
            },
            child: Center(
              child: Container(
                margin: EdgeInsets.all(5),
                color: Colors.white,
                width: MediaQuery.of(context).size.width * 0.9,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        'assets/images/ic_calendar.png',
                        scale: 12,
                      ),
                    ),
                    Text(
                      'ตารางเวลาเดินรถ',
                      style: TextStyle(
                        fontSize: 40,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ), // ตารางเวลาเดินรถ
          InkWell(
            onTap: () {
              print('gps page');
              Navigator.pushNamed(context, '/carGps');
            },
            child: Center(
              child: Container(
                margin: EdgeInsets.all(5),
                color: Colors.white,
                width: MediaQuery.of(context).size.width * 0.9,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        'assets/images/ic_position.png',
                        scale: 12,
                      ),
                    ),
                    Text(
                      'พิกัดตำแหน่งรถ',
                      style: TextStyle(
                        fontSize: 36,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ), // พิกัดตำแหน่งรถ
          InkWell(
            onTap: () {
              print('trackParcel page');
              Navigator.pushNamed(context, '/trackParcel');
            },
            child: Center(
              child: Container(
                margin: EdgeInsets.all(5),
                color: Colors.white,
                width: MediaQuery.of(context).size.width * 0.9,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        'assets/images/ic_van.png',
                        scale: 12,
                      ),
                    ),
                    Text(
                      'ติดตามพัสดุ',
                      style: TextStyle(
                        fontSize: 40,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ), // ติดตามพัสดุ
          InkWell(
            onTap: () {
              print('Contact Us');
              Navigator.pushNamed(context, '/contact');
            },
            child: Center(
              child: Container(
                margin: EdgeInsets.all(5),
                color: Colors.white,
                width: MediaQuery.of(context).size.width * 0.9,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        'assets/images/ic_info.png',
                        scale: 12,
                      ),
                    ),
                    Text(
                      'ติดต่อเรา',
                      style: TextStyle(
                        fontSize: 40,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ), // ติดต่อเรา contact us
        ],
      ),
    );
  }
}
