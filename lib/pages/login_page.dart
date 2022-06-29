import 'package:flutter/material.dart';
import 'package:homescreen2/pages/opt_page.dart';
import 'package:sign_button/constants.dart';
import 'package:sign_button/create_button.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:homescreen2/pages/RoundedButton.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final myController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Log In",
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
                  "Please enter your required details to login",
                  style: GoogleFonts.heebo(
                    fontSize: 14,
                    color: Color.fromRGBO(79, 79, 79, 1),
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 64,
                ),
                Wrap(
                  children: <Widget>[
                    Text(
                      "Mobile Number",
                      style: GoogleFonts.heebo(
                        fontSize: 14,
                        color: Color.fromRGBO(51, 51, 51, 1),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Container(
                      height: 80,
                      child: TextField(
                        controller: myController,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Enter your Mobile number",
                          hintStyle: GoogleFonts.heebo(
                            fontSize: 14,
                            color: Color.fromRGBO(130, 130, 130, 1),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 120,
                    ),
                    Container(
                      height: 48,
                      width: double.infinity,
                      child: RoundedButton(
                        colour: Color.fromRGBO(142, 196, 225, 1),
                        title: "Log In",
                        onPress: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const OtpScreen(),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                          height: 120,
                        ),
                        Text(
                          "Sign Up with",
                          style: GoogleFonts.heebo(
                            fontSize: 14,
                            color: Color.fromRGBO(79, 79, 79, 1),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SignInButton.mini(
                          buttonType: ButtonType.google,
                          onPressed: () {},
                        ),
                        SignInButton.mini(
                          buttonType: ButtonType.facebook,
                          onPressed: () {},
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
