import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:homescreen2/pages/bottom_navigationbar/naviagtion_pges/servicePage/name_of_service_page4/nameofservice4.dart';

class ServiceTab extends StatefulWidget {
  const ServiceTab({Key? key}) : super(key: key);

  @override
  State<ServiceTab> createState() => _ServiceTabState();
}

class _ServiceTabState extends State<ServiceTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: IntrinsicHeight(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        width: 78,
                        child: Image.asset(
                          "assets/serviceimage1.png",
                          height: 78,
                          width: 78,
                        ),
                      ),
                      SizedBox(
                        width: 24,
                      ),
                      Wrap(
                        direction: Axis.vertical,
                        children: [
                          Text(
                            "Name of the service",
                            style: GoogleFonts.heebo(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(79, 79, 79, 1),
                            ),
                          ),
                          Text(
                            "Service type",
                            style: GoogleFonts.heebo(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(130, 130, 130, 1),
                            ),
                          ),
                          Text(
                            "Expert trainer",
                            style: GoogleFonts.heebo(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color.fromRGBO(130, 130, 130, 1),
                            ),
                          ),
                          Text(
                            "350",
                            style: GoogleFonts.heebo(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(100, 189, 128, 1),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: Color.fromRGBO(224, 224, 224, 1),
                  thickness: 1,
                ),
                InkWell(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Image.asset(
                        "assets/serviceimage2.png",
                        height: 78,
                        width: 78,
                      ),
                      SizedBox(
                        width: 24,
                      ),
                      Wrap(
                        direction: Axis.vertical,
                        children: [
                          Text(
                            "Name of the service",
                            style: GoogleFonts.heebo(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(79, 79, 79, 1),
                            ),
                          ),
                          Text(
                            "Service type",
                            style: GoogleFonts.heebo(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(130, 130, 130, 1),
                            ),
                          ),
                          Text(
                            "Expert trainer",
                            style: GoogleFonts.heebo(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color.fromRGBO(130, 130, 130, 1),
                            ),
                          ),
                          Text(
                            "350",
                            style: GoogleFonts.heebo(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(100, 189, 128, 1),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: Color.fromRGBO(224, 224, 224, 1),
                  thickness: 1,
                ),
                InkWell(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Image.asset(
                        "assets/serviceimage3.png",
                        height: 78,
                        width: 78,
                      ),
                      SizedBox(
                        width: 24,
                      ),
                      Wrap(
                        direction: Axis.vertical,
                        children: [
                          Text(
                            "Name of the service",
                            style: GoogleFonts.heebo(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(79, 79, 79, 1),
                            ),
                          ),
                          Text(
                            "Service type",
                            style: GoogleFonts.heebo(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(130, 130, 130, 1),
                            ),
                          ),
                          Text(
                            "Expert trainer",
                            style: GoogleFonts.heebo(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color.fromRGBO(130, 130, 130, 1),
                            ),
                          ),
                          Text(
                            "350",
                            style: GoogleFonts.heebo(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(100, 189, 128, 1),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: Color.fromRGBO(224, 224, 224, 1),
                  thickness: 1,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const NameofService4(),
                      ),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Image.asset(
                        "assets/serviceimage4.png",
                        height: 78,
                        width: 78,
                      ),
                      SizedBox(
                        width: 24,
                      ),
                      Wrap(
                        direction: Axis.vertical,
                        children: [
                          Text(
                            "Name of the service",
                            style: GoogleFonts.heebo(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(79, 79, 79, 1),
                            ),
                          ),
                          Text(
                            "Service type",
                            style: GoogleFonts.heebo(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(130, 130, 130, 1),
                            ),
                          ),
                          Text(
                            "Expert trainer",
                            style: GoogleFonts.heebo(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color.fromRGBO(130, 130, 130, 1),
                            ),
                          ),
                          Text(
                            "350",
                            style: GoogleFonts.heebo(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(100, 189, 128, 1),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: Color.fromRGBO(224, 224, 224, 1),
                  thickness: 1,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
