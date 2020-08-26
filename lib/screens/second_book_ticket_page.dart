import 'package:app_vapee_transport/constraint.dart';
import 'package:app_vapee_transport/screens/third_book_ticket_page.dart';
import 'package:flutter/material.dart';

class SecondBookTicketPage extends StatefulWidget {
  @override
  _SecondBookTicketPageState createState() => _SecondBookTicketPageState();
}

class _SecondBookTicketPageState extends State<SecondBookTicketPage> {
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
                '2. เลือกเที่ยวรถ',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(12),
              padding: EdgeInsets.all(12),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(12)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/choose_bus.png',
                        scale: 11,
                      ),
                      SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'ต้นทาง',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 24,
                            ),
                          ),
                          Text(
                            'สุรินทร์',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ), // Source
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/gps.png',
                        scale: 11,
                      ),
                      SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'ปลายทาง',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 24,
                            ),
                          ),
                          Text(
                            'บุรีรัมย์',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ), // Destination
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/calendar.png',
                        scale: 11,
                      ),
                      SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'วันที่เดินทาง',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 24,
                            ),
                          ),
                          Text(
                            'วันอาทิตย์ 23 ส.ค. 2563 ',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ), // Date travel
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(12),
              padding: EdgeInsets.all(12),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(12)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'ป. 2 รถปรับอากาศ 32 ที่นั่ง',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 30, vertical: 8),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.pink)),
                            child: Text(
                              'เวลารถออก\n04.00 น.',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ), // Source
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 30, vertical: 8),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.indigo)),
                            child: Text(
                              'ถึงปลายทาง\n05.45 น.',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ), // Destination
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ), // รถปรับอากาศ
            SizedBox(height: 30),
            RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ThirdBookTicketPage()),
                );
              },
              padding: EdgeInsets.symmetric(horizontal: 80, vertical: 5),
              color: clrBtn,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Text(
                'ค้นหาใหม่',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
