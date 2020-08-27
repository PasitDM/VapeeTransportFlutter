import 'package:app_vapee_transport/constraint.dart';
import 'package:app_vapee_transport/screens/book_ticket_fourth_page.dart';
import 'package:flutter/material.dart';

class ThirdBookTicketPage extends StatefulWidget {
  @override
  _ThirdBookTicketPageState createState() => _ThirdBookTicketPageState();
}

class _ThirdBookTicketPageState extends State<ThirdBookTicketPage> {
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
                '3. เลือกที่นั่ง',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(12),
              padding: EdgeInsets.all(12),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(12)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'เส้นทาง สุรินทร์ - บุรีรัมย์\nเดินทางจาก สุรินทร์ – บุรีรัมย์\nออกเดินทาง วันอาทิตย์ 23 ส.ค. 2563 04.15 น.\nถึง วันอาทิตย์ 23 ส.ค. 2563 05.45 น.',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 12),
                padding: EdgeInsets.all(6),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12)),
                child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FourthBookTicketPage()),
                      );
                    },
                    child: Image.asset('assets/images/ic_human.png', scale: 4)),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              padding: EdgeInsets.all(8),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(12)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.all(8),
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                          border: Border.all(width: 0.5),
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        '1A',
                        style: TextStyle(fontSize: 22),
                      ),
                    ],
                  ), // Seat
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.all(8),
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                          border: Border.all(width: 0.5),
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        '2A',
                        style: TextStyle(fontSize: 22),
                      ),
                    ],
                  ), // Seat
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.all(8),
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                          border: Border.all(width: 0.5),
                          color: Colors.red,
                        ),
                      ),
                      Text(
                        '3A',
                        style: TextStyle(fontSize: 22),
                      ),
                    ],
                  ), // Seat
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(8),
              padding: EdgeInsets.all(4),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
              ),
              child: Text(
                'จำนวนที่นั่งที่เลือกทั้งหมด 2 ที่นั่ง',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                ),
              ),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.all(8),
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                    border: Border.all(width: 0.5),
                    color: Colors.white,
                  ),
                ),
                Text(
                  'ว่าง',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(8),
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                    border: Border.all(width: 0.5),
                    color: Colors.red,
                  ),
                ),
                Text(
                  'ขาย',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(8),
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                    border: Border.all(width: 0.5),
                    color: Colors.pinkAccent,
                  ),
                ),
                Text(
                  'จอง',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
