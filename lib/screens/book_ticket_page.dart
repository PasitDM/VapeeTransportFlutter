import 'package:app_vapee_transport/screens/book_ticket_second_page.dart';

import '../constraint.dart';
import 'package:flutter/material.dart';

class BookTicketPage extends StatefulWidget {
  @override
  _BookTicketPageState createState() => _BookTicketPageState();
}

class _BookTicketPageState extends State<BookTicketPage> {
  List _source = ['A', 'B', 'C'];
  List _destination = ['a', 'b', 'c'];
  List _numSeats = [1, 2, 3];

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
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: DropdownButton(
              isExpanded: true,
              hint: Text(
                'เลือกต้นทาง',
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
              items: null,
              onChanged: (value) {
                setState(() {});
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
                'เลือกปลายทาง',
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
              items: null,
              onChanged: (value) {
                setState(() {});
              },
            ),
          ), // เลือกปลายทาง Dropdown
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 3),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: InkWell(
              onTap: () {},
              child: Container(
                height: 45,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(color: Colors.white),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'วันที่เดินทาง',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ), // เลือกวันที่เดินทาง
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
                margin: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
                padding:
                    EdgeInsets.only(left: 12, right: 12, top: 3, bottom: 3),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: DropdownButton(
                    isExpanded: true,
                    hint: Text(
                      '1',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                      ),
                    ),
                    icon: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.black,
                    ),
                    items: null,
                    onChanged: null,
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
                MaterialPageRoute(builder: (context) => SecondBookTicketPage()),
              );
            },
            padding: EdgeInsets.symmetric(horizontal: 60, vertical: 5),
            color: clrBtn,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
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
    );
  }
}
