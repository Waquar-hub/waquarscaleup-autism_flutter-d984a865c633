import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeTabScreen extends StatefulWidget {
  const HomeTabScreen({Key? key}) : super(key: key);

  @override
  State<HomeTabScreen> createState() => _HomeTabScreenState();
}

class _HomeTabScreenState extends State<HomeTabScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Container(
                  height: 200,
                  color: Colors.white,
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  height: 138,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(142, 196, 225, 1),
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                  ),
                  width: double.infinity,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 24,
                      ),
                      Text(
                        "Total Confirmed Bookings",
                        style: GoogleFonts.heebo(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                      IntrinsicHeight(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                Text(
                                  "200",
                                  style: GoogleFonts.heebo(
                                      fontSize: 32,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  "Events",
                                  style: GoogleFonts.heebo(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 32,
                            ),
                            VerticalDivider(
                              color: Colors.white,
                              thickness: 1,
                            ),
                            SizedBox(
                              width: 32,
                            ),
                            Column(
                              children: [
                                Text(
                                  "300",
                                  style: GoogleFonts.heebo(
                                      fontSize: 32,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  "Services",
                                  style: GoogleFonts.heebo(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Container(
                  height: 138,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(246, 77, 153, 1),
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                  ),
                  width: double.infinity,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 24,
                      ),
                      Text(
                        "Total Cancelled Bookings",
                        style: GoogleFonts.heebo(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                      IntrinsicHeight(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                Text(
                                  "20",
                                  style: GoogleFonts.heebo(
                                      fontSize: 32,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  "Events",
                                  style: GoogleFonts.heebo(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 32,
                            ),
                            VerticalDivider(
                              color: Colors.white,
                              thickness: 1,
                            ),
                            SizedBox(
                              width: 32,
                            ),
                            Column(
                              children: [
                                Text(
                                  "34",
                                  style: GoogleFonts.heebo(
                                      fontSize: 32,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  "Services",
                                  style: GoogleFonts.heebo(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
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
