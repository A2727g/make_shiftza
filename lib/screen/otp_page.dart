
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:make_shiftza/screen/Home_page.dart';
import 'package:make_shiftza/screen/splash_screen.dart';
import 'package:pinput/pinput.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({super.key});

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
        width: 56,
        height: 60,
        textStyle: TextStyle(
          fontSize: 22,
          color: Colors.black,
        ),
        decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.transparent)));
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SplashScreen()));
            },
            icon: Icon(Icons.arrow_back)),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Image.asset("assets/loginimg/otp.gif"),
              SizedBox(
                height: 40,
              ),
              Text(
                "Otp Verification",
                style: GoogleFonts.aBeeZee(
                    fontSize: 40, fontWeight: FontWeight.bold),
              ),
              Text("Enter your Otp"),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Pinput(
                  length: 4,
                  defaultPinTheme: defaultPinTheme,
                  focusedPinTheme: defaultPinTheme.copyWith(
                      decoration: defaultPinTheme.decoration!.copyWith(
                          border: Border.all(
                              color: Color.fromARGB(255, 42, 18, 227)))),
                  onCompleted: (pin) => debugPrint(pin),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.black),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  child: Text(
                    "Submit",
                    style: GoogleFonts.abel(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Don\'t have Code?'),
                  TextButton(
                    onPressed: () {
                      // Handle sign up action
                    },
                    child: Text(
                      'Resend',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
