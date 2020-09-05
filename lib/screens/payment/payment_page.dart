import 'package:app_vapee_transport/constraint.dart';
import 'package:app_vapee_transport/screens/payment/payment_second_page.dart';
import 'package:flutter/material.dart';

class PaymentPage extends StatefulWidget {
  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: clrBackground,
      appBar: AppBar(
        backgroundColor: clrBackground,
        elevation: 0,
      ),
      body: Column(
        children: [
          Center(
            child: Text(
              '5.  ข้อมูลการชำระเงิน',
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
            padding: EdgeInsets.all(12),
            alignment: Alignment.topLeft,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              'กสิกรไทย (K PLUS)\nชื่อบัญชี: บริษัท วาปีเดินรถ จำกัด\nเลขที่บัญชี: 123 564 9874 000',
              style: TextStyle(
                fontSize: 28,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'หมายเหตุ: เพื่อความรวดเร็วในการยืนยันการชำระเงินของท่าน ขอแนะนำให้ท่านอัปโหลดหลักฐานการชำระเงิน',
              style: TextStyle(fontSize: 26, color: Colors.white),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            height: 50,
            child: RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PaymentSecondPage()),
                );
              },
              color: clrBtn,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                'มีหลักฐานการชำระเงิน อัปโหลดเลย',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 12),
            width: MediaQuery.of(context).size.width * 0.9,
            height: 50,
            child: OutlineButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PaymentSecondPage()),
                );
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                'ไม่มีหลักฐานการชำระเงิน อัปโหลดทีหลัง',
                style: TextStyle(
                  color: clrBtn,
                  fontSize: 28,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
