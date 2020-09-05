import 'package:app_vapee_transport/screens/book_ticket/book_ticket_second_page.dart';

import '../../constraint.dart';
import 'package:flutter/material.dart';

class BookTicketPage extends StatefulWidget {
  @override
  _BookTicketPageState createState() => _BookTicketPageState();
}

class _BookTicketPageState extends State<BookTicketPage> {
  List<String> _source = <String>['A', 'B', 'C'];
  List<String> _destination = <String>['a', 'b', 'c'];
  // List<int> _numSeats = [1, 2];
  String _valueSource = 'เลือกต้นทาง';
  String _valueDestination = 'เลือกปลายทาง';
  int _valueNumSeats = 1;

  DateTime selectedDate = DateTime.now();

  _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
      context: context,
      initialDate: selectedDate, // Refer step 1
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }

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
                '1. ค้นหาเที่ยวเวลาเดินรถ',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 3),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: DropdownButton(
                isExpanded: true,
                hint: Text(
                  '$_valueSource',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                  ),
                ),
                dropdownColor: Colors.white,
                icon: Icon(
                  Icons.arrow_drop_down,
                  color: Colors.black,
                ),
                value: _valueSource,
                items: [],
                onChanged: (value) {
                  setState(() {
                    _valueSource = value;
                  });
                },
              ),
            ), // เลือกต้นทาง Dropdown
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 3),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: DropdownButton(
                isExpanded: true,
                hint: Text(
                  '$_valueDestination',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                  ),
                ),
                dropdownColor: Colors.white,
                icon: Icon(
                  Icons.arrow_drop_down,
                  color: Colors.black,
                ),
                value: _valueDestination,
                items: [],
                onChanged: (value) {
                  setState(() {
                    _valueDestination = value;
                  });
                },
              ),
            ), // เลือกปลายทาง Dropdown
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 3),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: InkWell(
                onTap: () => _selectDate(context),
                child: Container(
                  height: 45,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(color: Colors.white),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "วันที่เดินทาง:${selectedDate.toLocal()}".split(' ')[0],
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ), // เลือกวันที่เดินทาง Date
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'จำนวนที่นั่ง',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: 50,
                  margin:
                      EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
                  padding:
                      EdgeInsets.only(left: 12, right: 12, top: 3, bottom: 3),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8)),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: DropdownButton(
                      isExpanded: true,
                      dropdownColor: Colors.white,
                      hint: Text(
                        '$_valueNumSeats',
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.black,
                        ),
                      ),
                      icon: Icon(
                        Icons.arrow_drop_down,
                        color: Colors.black,
                      ),
                      value: _valueNumSeats,
                      items: [
                        DropdownMenuItem(
                          child: Text(
                            "1",
                            style: TextStyle(fontSize: 22),
                          ),
                          value: 1,
                        ),
                        DropdownMenuItem(
                          child: Text(
                            "2",
                            style: TextStyle(fontSize: 22),
                          ),
                          value: 2,
                        ),
                      ],
                      onChanged: (value) {
                        setState(() {
                          _valueNumSeats = value;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
            Text(
              'สามารถจองตั๋วได้สูงสุด 2 ที่นั่ง/การทำรายการ 1 ครั้ง',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
            Container(
              padding: EdgeInsets.all(8),
              margin: EdgeInsets.all(8),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
              ),
              child: Text(
                'หมายเหตุ: สามารถจองตั๋วเที่ยวเวลาเร็วที่สุด ที่ 15 ชม. ก่อนรถออกตั๋วเด็ก/ตั๋วส่วนลดพิเศษ ไม่สามารถจองผ่านแอปพลิเคชั่นได้',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                ),
              ),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SecondBookTicketPage(
                      source: _valueSource,
                      destination: _valueDestination,
                      dateDepature: '${selectedDate.toLocal()}"'.split(' ')[0],
                      numSeat: _valueNumSeats,
                    ),
                  ),
                );
              },
              padding: EdgeInsets.symmetric(horizontal: 60, vertical: 5),
              color: clrBtn,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Text(
                'ตกลง',
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
