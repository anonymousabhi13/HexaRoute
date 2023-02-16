// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:hexatour/presentation/screens/change_password_screen.dart';
import 'package:hexatour/presentation/screens/home_screen.dart';
import 'package:hexatour/presentation/screens/travelling/book_service_screen.dart';
import 'package:hexatour/presentation/screens/travelling/travelling_detail_screen.dart';
import 'package:hexatour/presentation/screens/welcome_screen.dart';

import 'package:sizer/sizer.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Sizer',
          theme: ThemeData.light(),
          home:const WelcomeScreen(),
          // home: const BookingServiceScreen(),
          // home:const HomeScreen(),
        );
      },
    );
  }
}
