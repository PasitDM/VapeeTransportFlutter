import 'package:app_vapee_transport/screens/payment/payment_page.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../utils/constraint.dart';

class DrawPage extends StatefulWidget {
  @override
  _DrawPageState createState() => _DrawPageState();
}

class _DrawPageState extends State<DrawPage> {
  Widget _buildDrawer() {
    return SafeArea(
      child: Drawer(
        child: Container(
          color: Colors.white,
          child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(color: clrBackground),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Vapee Transport\nSurin - Knonkean',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.person, color: Colors.black),
                    title: Text(
                      'โปรไฟล์',
                      style: TextStyle(fontSize: 20),
                    ),
                    onTap: () {
                      print('Click Profile');
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.home, color: Colors.black),
                    title: Text(
                      'หน้าหลัก',
                      style: TextStyle(fontSize: 20),
                    ),
                    onTap: () {
                      print('Click Home');
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.credit_card, color: Colors.black),
                    title: Text(
                      'ชำระเงิน',
                      style: TextStyle(fontSize: 20),
                    ),
                    onTap: () {
                      print('Click Payment');
                      Navigator.pop(context);
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PaymentPage()),
                      );
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.description, color: Colors.black),
                    title: Text(
                      'รายละเอียดการจอง',
                      style: TextStyle(fontSize: 20),
                    ),
                    onTap: () {
                      print('Click Description');
                      Navigator.pop(context);
                    },
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(MdiIcons.logout, color: Colors.black),
                    title: Text(
                      'ออกจากระบบ',
                      style: TextStyle(fontSize: 20),
                    ),
                    onTap: () {
                      print('Click LogOut');
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: clrBackground,
      appBar: AppBar(
        backgroundColor: clrBackground,
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
      drawer: _buildDrawer(),
      body: Container(),
    );
  }
}
