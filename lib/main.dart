import 'package:app_vapee_transport/screens/book_ticket_page.dart';
import 'package:app_vapee_transport/screens/car_gps_page.dart';
import 'package:app_vapee_transport/screens/contact_us_page.dart';
import 'package:app_vapee_transport/screens/home_page.dart';
import 'package:app_vapee_transport/screens/login_page.dart';
import 'package:app_vapee_transport/screens/track_parcel_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vapee Transport',
      theme: ThemeData(
        fontFamily: 'THSarabunNew',
        primarySwatch: Colors.yellow,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/login': (context) => LoginPage(),
        '/bookTicket': (context) => BookTicketPage(),
        '/carGps': (context) => CarGpsPage(),
        '/trackParcel': (context) => TrackParcelPage(),
        '/contact': (context) => ContactUsPage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
