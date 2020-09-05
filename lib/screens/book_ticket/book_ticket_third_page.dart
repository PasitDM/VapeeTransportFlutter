import 'package:app_vapee_transport/constraint.dart';
import 'package:app_vapee_transport/screens/book_ticket/book_ticket_fourth_page.dart';
import 'package:flutter/material.dart';

class ThirdBookTicketPage extends StatefulWidget {
  @override
  _ThirdBookTicketPageState createState() => _ThirdBookTicketPageState();
}

class _ThirdBookTicketPageState extends State<ThirdBookTicketPage> {
  final String source = 'สุรินทร์';
  final String destination = 'บุรีรัมย์';
  final String dateGo = '';

  final List<String> items1 = <String>['A', 'C', 'D'];
  final List<String> items2 = <String>['A', 'B', 'D'];
  final List<String> items3 = <String>['A', 'C', 'D'];
  final List<String> items4 = <String>['A', 'B', 'D'];
  final List<String> items5 = <String>['A', 'C', 'D'];
  final List<String> items6 = <String>['A', 'B', 'D'];
  final List<String> items7 = <String>['A', 'C', 'D'];
  final List<String> items8 = <String>['A', 'B'];
  String _valueSeat1, _valueSeat2, _valueSeat3, _valueSeat4;
  String _valueSeat5, _valueSeat6, _valueSeat7, _valueSeat8;

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
            ), // Icon Human
            Container(
              margin: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              padding: EdgeInsets.all(8),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Image.asset('assets/images/seats_map.png'),
              // child: Column(
              //   crossAxisAlignment: CrossAxisAlignment.start,
              //   children: [
              //     Row(
              //       children: [
              //         Container(
              //           margin: EdgeInsets.all(8),
              //           height: 35,
              //           width: 35,
              //           decoration: BoxDecoration(
              //             border: Border.all(width: 0.5),
              //             color: Colors.white,
              //           ),
              //         ),
              //         Text(
              //           '1A',
              //           style: TextStyle(fontSize: 22),
              //         ),
              //       ],
              //     ), // Seat
              //     Row(
              //       children: [
              //         Container(
              //           margin: EdgeInsets.all(8),
              //           height: 35,
              //           width: 35,
              //           decoration: BoxDecoration(
              //             border: Border.all(width: 0.5),
              //             color: Colors.white,
              //           ),
              //         ),
              //         Text(
              //           '2A',
              //           style: TextStyle(fontSize: 22),
              //         ),
              //       ],
              //     ), // Seat
              //     Row(
              //       children: [
              //         Container(
              //           margin: EdgeInsets.all(8),
              //           height: 35,
              //           width: 35,
              //           decoration: BoxDecoration(
              //             border: Border.all(width: 0.5),
              //             color: Colors.red,
              //           ),
              //         ),
              //         Text(
              //           '3A',
              //           style: TextStyle(fontSize: 22),
              //         ),
              //       ],
              //     ), // Seat
              //   ],
              // ),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 3),
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: DropdownButton<String>(
                    value: _valueSeat1,
                    onChanged: (String value) {
                      setState(() => _valueSeat1 = value);
                    },
                    // selectedItemBuilder: (BuildContext context) {
                    //   return items.map<Widget>((String item) {
                    //     return Text(item);
                    //   }).toList();
                    // },
                    items: items1.map((String item) {
                      return DropdownMenuItem<String>(
                        child: Text(
                          'ที่นั่ง 1$item',
                          style: TextStyle(fontSize: 24),
                        ),
                        value: item,
                      );
                    }).toList(),
                    hint: Text(
                      'แถวที่ 1',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                      ),
                    ),
                    dropdownColor: Colors.white,
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 3),
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: DropdownButton<String>(
                    value: _valueSeat2,
                    onChanged: (String value) {
                      setState(() => _valueSeat2 = value);
                    },
                    // selectedItemBuilder: (BuildContext context) {
                    //   return items.map<Widget>((String item) {
                    //     return Text(item);
                    //   }).toList();
                    // },
                    items: items2.map((String item) {
                      return DropdownMenuItem<String>(
                        child: Text(
                          'ที่นั่ง: 2$item',
                          style: TextStyle(fontSize: 24),
                        ),
                        value: item,
                      );
                    }).toList(),
                    hint: Text(
                      'แถวที่ 2',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                      ),
                    ),
                    dropdownColor: Colors.white,
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 3),
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: DropdownButton<String>(
                    value: _valueSeat3,
                    onChanged: (String value) {
                      setState(() => _valueSeat3 = value);
                    },
                    // selectedItemBuilder: (BuildContext context) {
                    //   return items.map<Widget>((String item) {
                    //     return Text(item);
                    //   }).toList();
                    // },
                    items: items3.map((String item) {
                      return DropdownMenuItem<String>(
                        child: Text(
                          'ที่นั่ง 3$item',
                          style: TextStyle(fontSize: 24),
                        ),
                        value: item,
                      );
                    }).toList(),
                    hint: Text(
                      'แถวที่ 3',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                      ),
                    ),
                    dropdownColor: Colors.white,
                  ),
                ),
                // Container(
                //   margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                //   padding: EdgeInsets.symmetric(horizontal: 12, vertical: 3),
                //   height: 50,
                //   decoration: BoxDecoration(
                //     color: Colors.white,
                //     borderRadius: BorderRadius.circular(10),
                //   ),
                //   child: DropdownButton<String>(
                //     value: _valueSeat4,
                //     onChanged: (String value) {
                //       setState(() => _valueSeat4 = value);
                //     },
                //     // selectedItemBuilder: (BuildContext context) {
                //     //   return items.map<Widget>((String item) {
                //     //     return Text(item);
                //     //   }).toList();
                //     // },
                //     items: items4.map((String item) {
                //       return DropdownMenuItem<String>(
                //         child: Text(
                //           'ที่นั่ง 4$item',
                //           style: TextStyle(fontSize: 24),
                //         ),
                //         value: item,
                //       );
                //     }).toList(),
                //     hint: Text(
                //       'แถวที่ 4',
                //       style: TextStyle(
                //         fontSize: 24,
                //         color: Colors.black,
                //       ),
                //     ),
                //     dropdownColor: Colors.white,
                //   ),
                // ),
              ],
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
