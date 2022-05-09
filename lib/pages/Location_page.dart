import 'package:flutter/material.dart';
import 'package:homescreen2/pages/Address.dart';
import 'package:google_fonts/google_fonts.dart';

class Location extends StatefulWidget {
  const Location({Key? key}) : super(key: key);

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  var bottomNavigationBar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size(MediaQuery.of(context).size.width, 50),
        child: AppBar(
          bottomOpacity: 0.0,
          elevation: 0.0,
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            "Location",
            style: GoogleFonts.heebo(
              fontSize: 20,
              color: Color.fromRGBO(51, 51, 51, 1),
              fontWeight: FontWeight.w500,
            ),
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Container(
                color: Colors.grey,
                height: 400,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                height: 200,
                padding: EdgeInsets.fromLTRB(16.0, 10.0, 25.0, 10.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Current Address",
                          style: GoogleFonts.heebo(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(79, 79, 79, 1),
                          ),
                        ),
                        Text(
                          "change",
                          style: GoogleFonts.heebo(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(100, 189, 128, 1),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.location_on_outlined,
                            color: Color.fromRGBO(79, 79, 79, 1),
                            size: 32,
                          ),
                          onPressed: () => Navigator.of(context).pop(),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Plot No 23",
                              style: GoogleFonts.heebo(
                                fontSize: 18,
                                color: Color.fromRGBO(79, 79, 79, 1),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              "Lorem ipsum dolor sit ament ,consecteture  ",
                              style: GoogleFonts.heebo(
                                fontSize: 14,
                                color: Color.fromRGBO(51, 51, 51, 1),
                                fontWeight: FontWeight.w400,
                              ),
                              textAlign: TextAlign.left,
                            ),
                            Text("adipiscing elit")
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 48,
        child: BottomAppBar(
          color: Colors.white,
          child: ElevatedButton(
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15)),
                ),
              ),
              backgroundColor: MaterialStateProperty.all(
                Color.fromRGBO(142, 196, 225, 1),
              ),
            ),
            child: Text(
              "Confirm Location",
              style: GoogleFonts.heebo(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w500),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Address(),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
