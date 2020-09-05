import 'package:app_vapee_transport/constraint.dart';
import 'package:app_vapee_transport/screens/vapee_layout.dart';
import 'package:flutter/material.dart';

import 'text_field_widget.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool checkBoxFemale = false;
  bool checkBoxMale = false;

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();

    return VapeeLayout(
      appBar: AppBar(
        backgroundColor: clrBackground,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Center(
                child: Text(
                  'Welcome\nRegister account',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(8),
                child: TextFormFieldWidget(
                  hintText: "เลขบัตรประชาชน",
                  textInputType: TextInputType.phone,
                  actionKeyboard: TextInputAction.done,
                  functionValidate: commonValidation,
                  onSubmitField: () {},
                  parametersValidate: "กรุณากรอกเลขบัตรประชาชน",
                ),
              ),
              Container(
                margin: EdgeInsets.all(8),
                child: TextFormFieldWidget(
                  hintText: "อีเมล์",
                  textInputType: TextInputType.emailAddress,
                  actionKeyboard: TextInputAction.done,
                  functionValidate: commonValidation,
                  onSubmitField: () {},
                  parametersValidate: "กรุณากรอกอีเมล์",
                ),
              ),
              Container(
                margin: EdgeInsets.all(8),
                child: TextFormFieldWidget(
                  hintText: "ชื่อ",
                  textInputType: TextInputType.name,
                  actionKeyboard: TextInputAction.done,
                  functionValidate: commonValidation,
                  onSubmitField: () {},
                  parametersValidate: "กรุณากรอกชื่อ",
                ),
              ),
              Container(
                margin: EdgeInsets.all(8),
                child: TextFormFieldWidget(
                  hintText: "นามสกุล",
                  textInputType: TextInputType.name,
                  actionKeyboard: TextInputAction.done,
                  functionValidate: commonValidation,
                  onSubmitField: () {},
                  parametersValidate: "กรุณากรอกนามสกุล",
                ),
              ),
              Container(
                margin: EdgeInsets.all(8),
                child: TextFormFieldWidget(
                  hintText: "ชื่อผู้ใช้",
                  textInputType: TextInputType.name,
                  actionKeyboard: TextInputAction.done,
                  functionValidate: commonValidation,
                  onSubmitField: () {},
                  parametersValidate: "กรุณากรอกชื่อผู่้ใช้ username",
                ),
              ),
              Container(
                margin: EdgeInsets.all(8),
                child: TextFormFieldWidget(
                  hintText: "รหัสผ่าน",
                  obscureText: true,
                  textInputType: TextInputType.visiblePassword,
                  actionKeyboard: TextInputAction.done,
                  functionValidate: commonValidation,
                  onSubmitField: () {},
                  parametersValidate: "กรุณากรอกรหัสผ่าน",
                ),
              ),
              Container(
                margin: EdgeInsets.all(8),
                child: TextFormFieldWidget(
                  hintText: "ยืนยันรหัสผ่าน",
                  obscureText: true,
                  textInputType: TextInputType.visiblePassword,
                  actionKeyboard: TextInputAction.done,
                  functionValidate: commonValidation,
                  onSubmitField: () {},
                  parametersValidate: "กรุณายืนยันรหัสผ่าน",
                ),
              ),
              Container(
                margin: EdgeInsets.all(8),
                child: TextFormFieldWidget(
                  hintText: "เบอร์โทรศัพท์",
                  textInputType: TextInputType.phone,
                  actionKeyboard: TextInputAction.done,
                  functionValidate: commonValidation,
                  onSubmitField: () {},
                  parametersValidate: "กรุณากรอกเบอร์โทรศัพท์",
                ),
              ),
              Container(
                margin: EdgeInsets.all(8),
                child: TextFormFieldWidget(
                  hintText: "ที่อยู๋",
                  textInputType: TextInputType.streetAddress,
                  actionKeyboard: TextInputAction.done,
                  functionValidate: commonValidation,
                  onSubmitField: () {},
                  parametersValidate: "ระบุที่อยู่",
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Row(
                  children: [
                    Text(
                      'เพศ',
                      style: TextStyle(fontSize: 22),
                    ),
                    Checkbox(
                      checkColor: Colors.black,
                      activeColor: Colors.white,
                      value: checkBoxFemale,
                      onChanged: (bool value) {
                        setState(() {
                          checkBoxFemale = value;
                        });
                      },
                    ),
                    Text(
                      'หญิง',
                      style: TextStyle(fontSize: 22),
                    ),
                    Checkbox(
                      checkColor: Colors.black,
                      activeColor: Colors.white,
                      value: checkBoxMale,
                      onChanged: (bool value) {
                        setState(() {
                          checkBoxMale = value;
                        });
                      },
                    ),
                    Text(
                      'ชาย',
                      style: TextStyle(fontSize: 22),
                    ),
                  ],
                ),
              ),
              RaisedButton(
                onPressed: () {
                  if (_formKey.currentState.validate()) {
                    Scaffold.of(context).showSnackBar(
                      SnackBar(content: Text('Processing Data')),
                    );
                  }
                },
                padding: EdgeInsets.symmetric(horizontal: 60, vertical: 6),
                color: clrBtn,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  'สมัครสมาชิก',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
