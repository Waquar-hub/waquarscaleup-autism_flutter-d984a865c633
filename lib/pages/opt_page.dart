import 'dart:async';

import 'package:flutter/material.dart';
import 'package:homescreen2/pages/basic_details.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:google_fonts/google_fonts.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  int _Counter = 20;
  late Timer _timer;
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    _Counter = 20;
    _timer = Timer.periodic(
      Duration(seconds: 1),
      (timer) {
        if (_Counter > 0) {
          setState(() {
            _Counter--;
          });
        } else {
          _timer.cancel();
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(24),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 80,
                  ),
                  Text(
                    "Verify OTP",
                    style: GoogleFonts.heebo(
                      fontSize: 32,
                      color: Color.fromRGBO(51, 51, 51, 1),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    "Please enter the otp send to your mobile regitered mobile number******543",
                    style: GoogleFonts.heebo(
                      fontSize: 14,
                      color: Color.fromRGBO(79, 79, 79, 1),
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 88,
                  ),
                  OTPTextField(
                    length: 4,
                    width: MediaQuery.of(context).size.width,
                    fieldWidth: 80,
                    style: TextStyle(fontSize: 17),
                    textFieldAlignment: MainAxisAlignment.spaceAround,
                    fieldStyle: FieldStyle.underline,
                    onCompleted: (pin) {
                      print("Completed: " + pin);
                    },
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Text(
                    "00:$_Counter",
                    style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(80, 95, 121, 1)),
                  ),
                  // SizedBox(
                  //   height: 5,
                  // ),
                  ElevatedButton(
                    onPressed: () {
                      setState(
                        () {
                          resetTimer();
                        },
                      );
                    },
                    child: Text("Resend OTP"),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Container(
                    height: 50,
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                        ),
                        backgroundColor: MaterialStateProperty.all(
                          Color.fromRGBO(142, 196, 225, 1),
                        ),
                      ),
                      child: Text(
                        "Verify & Login",
                        style: GoogleFonts.heebo(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const BasicDetails(),
                          ),
                        );
                        resetTimer();
                        stopTimer();
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void resetTimer() {
    _timer.cancel();
    setState(() {
      startTimer();
    });
  }

  void stopTimer() {
    setState(() {
      _timer.cancel();
    });
  }
}
