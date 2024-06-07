import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:make_shiftza/screen/splash_screen.dart';

void main() {
  runApp(PorterApp());
}

class PorterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Porter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      // initialRoute: '/',
      // routes: {
      // '/': (context) => LoginScreen(),
      home:
          //  (context) =>
          SplashScreen(),
      // },
    );
  }
}
