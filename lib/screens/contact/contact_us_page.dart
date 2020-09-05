import '../../utils/constraint.dart';
import 'package:flutter/material.dart';

class ContactUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: clrBackground,
      appBar: AppBar(
        backgroundColor: clrBackground,
        elevation: 0,
        title: Text(
          'ติดต่อเรา',
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(12),
                width: MediaQuery.of(context).size.width * 0.85,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'ชื่อบริษัท : วาปีเดินรถ จำกัด\nประเภท : บริษัทจำกัด',
                          style: TextStyle(fontSize: 20),
                        ),
                        Image.asset(
                          'assets/images/electric-bus.png',
                          scale: 2,
                        ),
                      ],
                    ),
                    Text(
                      'ประเภทธุรกิจ : รับ – ส่งผุ้โดยสารประจำทาง\nชื่อบริษัท : วาปีเดินรถ จำกัด' +
                          '\nที่อยู่ : 58 ถ.พิทักษ์นรากร ต.หนองแสง อ.วาปีปทุม จ.มหาสารคาม 44120' +
                          '\nเบอร์โทรศัพท์ : 043-799-253',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
