import 'dart:io';

import 'package:app_vapee_transport/utils/constraint.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class PaymentSecondPage extends StatefulWidget {
  @override
  _PaymentSecondPageState createState() => _PaymentSecondPageState();
}

class _PaymentSecondPageState extends State<PaymentSecondPage> {
  List<String> _bank = <String>['A', 'B', 'C'];
  List<String> _target = <String>['a', 'b', 'c'];

  String _valueBank = 'โอนจากธนาคาร';
  String _valueTarget = 'โอนไปยัง';

  DateTime selectedDate = DateTime.now();
  File _image;
  final picker = ImagePicker();

  Future getImage() async {
    final pickedFile = await picker.getImage(
      source: ImageSource.camera,
      maxHeight: 1000,
      maxWidth: 1000,
      imageQuality: 80,
    );

    setState(() {
      _image = File(pickedFile.path);
    });
  }

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
                '6.  ยืนยันการชำระเงิน',
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'อัปโหลดหลักฐานการการชำระเงิน',
                    style: TextStyle(
                      fontSize: 26,
                    ),
                  ),
                  InkWell(
                    onTap: getImage,
                    child: Center(
                      child: Container(
                        // height: 120,
                        width: 120,
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 3),
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            _image != null
                                ? Image.file(
                                    _image,
                                    scale: 2.5,fit: BoxFit.fill,
                                  )
                                : Image.asset(
                                    'assets/images/ic_image.png',
                                    scale: 2.5,
                                  ),
                            Text(
                              'กดเพื่อเพิ่ม',
                              style: TextStyle(
                                fontSize: 24,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () => _selectDate(context),
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                padding: EdgeInsets.all(12),
                alignment: Alignment.topLeft,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  "วันที่โอนเงิน:${selectedDate.toLocal()}".split(' ')[0],
                  style: TextStyle(
                    fontSize: 26,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
              child: TextFormField(
                style: TextStyle(fontSize: 22.0),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: const EdgeInsets.only(
                    left: 10.0,
                    bottom: 10.0,
                    top: 10.0,
                    right: 10,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  errorStyle: TextStyle(fontSize: 15),
                  hintText: 'เวลาที่โอน',
                  hintStyle: TextStyle(fontSize: 26),
                  labelText: 'เวลาที่โอน',
                  labelStyle: TextStyle(
                    color: Colors.black87,
                    fontSize: 26,
                  ),
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'กรุณาเวลาโอนเงิน';
                  }
                  return null;
                },
              ),
            ),
            // Container(
            //   margin: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
            //   padding: EdgeInsets.all(12),
            //   alignment: Alignment.topLeft,
            //   decoration: BoxDecoration(
            //     color: Colors.white,
            //     borderRadius: BorderRadius.circular(12),
            //   ),
            //   child: Text(
            //     'เวลาโอนเงิน',
            //     style: TextStyle(
            //       fontSize: 26,
            //     ),
            //   ),
            // ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 3),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: DropdownButton(
                isExpanded: true,
                hint: Text(
                  'โอนจากธนาคาร',
                  style: TextStyle(
                    fontSize: 26,
                    color: Colors.black,
                  ),
                ),
                dropdownColor: Colors.white,
                icon: Icon(
                  Icons.arrow_drop_down,
                  color: Colors.black,
                ),
                value: _valueBank,
                items: [],
                onChanged: (value) {
                  setState(() {});
                },
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 3),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: DropdownButton(
                isExpanded: true,
                hint: Text(
                  'โอนไปยัง',
                  style: TextStyle(
                    fontSize: 26,
                    color: Colors.black,
                  ),
                ),
                dropdownColor: Colors.white,
                icon: Icon(
                  Icons.arrow_drop_down,
                  color: Colors.black,
                ),
                value: _valueTarget,
                items: [],
                onChanged: (value) {
                  setState(() {});
                },
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
              child: TextFormField(
                style: TextStyle(fontSize: 22.0),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: const EdgeInsets.only(
                    left: 10.0,
                    bottom: 10.0,
                    top: 10.0,
                    right: 10,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  errorStyle: TextStyle(fontSize: 15),
                  hintText: 'จำนวนเงิน',
                  hintStyle: TextStyle(fontSize: 26),
                  labelText: 'จำนวนเงิน',
                  labelStyle: TextStyle(
                    color: Colors.black87,
                    fontSize: 26,
                  ),
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'กรุณาระบุจำนวนเงิน';
                  }
                  return null;
                },
              ),
            ),
            // Container(
            //   margin: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
            //   padding: EdgeInsets.all(12),
            //   alignment: Alignment.topLeft,
            //   decoration: BoxDecoration(
            //     color: Colors.white,
            //     borderRadius: BorderRadius.circular(12),
            //   ),
            //   child: Text(
            //     'จำนวนเงิน',
            //     style: TextStyle(
            //       fontSize: 26,
            //     ),
            //   ),
            // ),
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: RaisedButton(
            //     onPressed: () {
            //       // Navigator.push(
            //       //   context,
            //       //   MaterialPageRoute(
            //       //       builder: (context) => FifthBookTicketPage()),
            //       // );
            //     },
            //     padding: EdgeInsets.symmetric(horizontal: 100, vertical: 6),
            //     color: clrBtn,
            //     shape: RoundedRectangleBorder(
            //         borderRadius: BorderRadius.circular(10)),
            //     child: Text(
            //       'ส่ง',
            //       style: TextStyle(
            //         color: Colors.white,
            //         fontSize: 26,
            //         fontWeight: FontWeight.bold,
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
