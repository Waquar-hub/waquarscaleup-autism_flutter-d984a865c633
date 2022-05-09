import 'dart:io';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:homescreen2/pages/slider_model.dart';

import 'login_page.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  List<SliderModel> mySLides = [];
  int slideIndex = 0;
  late PageController controller;

  Widget _buildPageIndicator(bool isCurrentPage) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 2.0),
      height: isCurrentPage ? 10.0 : 6.0,
      width: isCurrentPage ? 20.0 : 6.0,
      decoration: BoxDecoration(
        color: isCurrentPage ? Colors.blue : Colors.grey[300],
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    mySLides = getSlides();
    controller = new PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            const Color(0xff3C8CE7),
            const Color(
              0xff00EAFF,
            ),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Container(
            height: MediaQuery.of(context).size.height - 100,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    slideIndex == 2
                        ? Container(
                            height: 40,
                          )
                        : Container(
                            height: 40,
                            child: TextButton(
                              onPressed: () {
                                controller.animateToPage(2,
                                    duration: Duration(milliseconds: 400),
                                    curve: Curves.linear);
                              },
                              // splashColor: Colors.blue[50],
                              child: Text(
                                "SKIP",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xff4f4f4f),
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),
                  ],
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.55,
                  child: PageView(
                    controller: controller,
                    onPageChanged: (index) {
                      setState(() {
                        slideIndex = index;
                      });
                    },
                    children: <Widget>[
                      SlideTile(
                        imagePath: mySLides[0].getImageAssetPath(),
                        title: mySLides[0].getTitle(),
                        desc: mySLides[0].getDesc(),
                      ),
                      SlideTile(
                        imagePath: mySLides[1].getImageAssetPath(),
                        title: mySLides[1].getTitle(),
                        desc: mySLides[1].getDesc(),
                      ),
                      SlideTile(
                        imagePath: mySLides[2].getImageAssetPath(),
                        title: mySLides[2].getTitle(),
                        desc: mySLides[2].getDesc(),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        for (int i = 0; i < 3; i++)
                          i == slideIndex
                              ? _buildPageIndicator(true)
                              : _buildPageIndicator(false),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginPage(),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60),
                        color: Color(0xff8ec4ff),
                      ),
                      child: Center(
                        child: Text(
                          "Get Started",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: "Heebo",
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Spacer(),
                RichText(
                  text: TextSpan(
                    text: 'Already have an account?',
                    style: TextStyle(
                      color: Color(0xff828282),
                      fontSize: 14,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: ' Sign up',
                        style: TextStyle(
                          color: Color(0xff8ec4ff),
                          fontSize: 14,
                          fontFamily: "Heebo",
                          fontWeight: FontWeight.w700,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginPage(),
                              ),
                            );
                          },
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SlideTile extends StatelessWidget {
  String imagePath, title, desc;

  SlideTile({required this.imagePath, required this.title, required this.desc});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(imagePath),
          SizedBox(
            height: 40,
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            desc,
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
          )
        ],
      ),
    );
  }
}
