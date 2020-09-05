import 'package:app_vapee_transport/screens/draw_page.dart';
import 'package:app_vapee_transport/screens/vapee_layout.dart';

import '../../constraint.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return VapeeLayout(
      // backgroundColor: clrBackground,
      appBar: AppBar(
        backgroundColor: clrBackground,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Center(
            child: Column(
              children: [
                Text(
                  'Welcome\nLogin to you account',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  margin: EdgeInsets.all(8),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
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
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      errorStyle: TextStyle(fontSize: 15),
                      hintText: 'Username',
                      hintStyle: TextStyle(fontSize: 22),
                      labelText: 'Username',
                      labelStyle: TextStyle(color: Colors.black87),
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'กรุณากรอก username';
                      }
                      return null;
                    },
                  ),
                ), // TextField Username
                Container(
                  margin: EdgeInsets.all(8),
                  child: TextFormField(
                    obscureText: true,
                    keyboardType: TextInputType.visiblePassword,
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
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      errorStyle: TextStyle(fontSize: 15),
                      hintText: 'Password',
                      hintStyle: TextStyle(fontSize: 22),
                      labelText: 'Password',
                      labelStyle: TextStyle(color: Colors.black87),
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'กรุณากรอกรหัสผ่าน';
                      }
                      return null;
                    },
                  ),
                ), // TextField Password
                SizedBox(height: 25),
                RaisedButton(
                  onPressed: () {
                    print('log in');
                    if (_formKey.currentState.validate()) {
                      // If the form is valid, display a Snackbar.
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DrawPage()),
                      );
                      Scaffold.of(context).showSnackBar(
                          SnackBar(content: Text('Processing Data')));
                    }
                  },
                  padding: EdgeInsets.symmetric(horizontal: 60, vertical: 8),
                  color: clrBtn,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    'เข้าสู่ระบบ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                FlatButton(
                  onPressed: () {},
                  child: Text(
                    'Forget your password?',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don’t have an account? ',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/register');
                      },
                      child: Text(
                        'Sign Up',
                        style: TextStyle(color: clrBtn, fontSize: 20),
                      ),
                    ),
                  ],
                ), // Go to Register Page
              ],
            ),
          ),
        ),
      ),
    );
  }
}
