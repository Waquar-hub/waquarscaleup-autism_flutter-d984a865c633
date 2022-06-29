import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:homescreen2/pages/bottom_navigationbar/naviagtion_pges/servicePage/name_of_service_page4/center_service.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class NameofService4 extends StatefulWidget {
  const NameofService4({Key? key}) : super(key: key);

  @override
  State<NameofService4> createState() => _NameofService4State();
}

class _NameofService4State extends State<NameofService4> {
  final treatementData = [
    "Treatments Offered 1",
    "Treatments Offered 2",
    "Treatments Offered 3",
    "Treatments Offered 4",
  ];

  final clinicData = [
    "Treatments Offered 1",
    "Treatments Offered 2",
    "Treatments Offered 3",
    "Treatments Offered 4",
  ];

  @override
  Widget build(BuildContext context) {
    final _treatmentmarkDownData =
        treatementData.map((x) => "- $x\n").reduce((x, y) => "$x$y");
    final _clinicmarkDownData =
        treatementData.map((x) => "- $x\n").reduce((x, y) => "$x$y");
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(
          250,
        ),
        child: AppBar(
          elevation: 0,
          flexibleSpace: Image(
            image: AssetImage("assets/serviceimage4.png"),
            fit: BoxFit.cover,
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.delete_outline_outlined,
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CenterService(),
                  ),
                );
              },
              icon: Icon(
                Icons.edit_outlined,
              ),
            ),
          ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(200),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Text(
                    "Name of the service",
                    style: GoogleFonts.heebo(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 58,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.location_on_outlined,
                      color: Color.fromRGBO(130, 130, 130, 1),
                    ),
                  ),
                  Text(
                    "Powai, Mumbai",
                    style: GoogleFonts.heebo(
                      fontSize: 16,
                      color: Color.fromRGBO(79, 79, 79, 1),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.calendar_month_outlined,
                      color: Color.fromRGBO(130, 130, 130, 1),
                    ),
                  ),
                  Text(
                    "Mon- Sat | 10:00 - 14:00",
                    style: GoogleFonts.heebo(
                      fontSize: 16,
                      color: Color.fromRGBO(79, 79, 79, 1),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.group_outlined,
                      color: Color.fromRGBO(130, 130, 130, 1),
                    ),
                  ),
                  Text(
                    "1978 participants",
                    style: GoogleFonts.heebo(
                      fontSize: 16,
                      color: Color.fromRGBO(79, 79, 79, 1),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 24,
              ),
              Text(
                "About",
                style: GoogleFonts.heebo(
                    fontSize: 16,
                    color: Color.fromRGBO(79, 79, 79, 1),
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quis sed vestibulum dolor arcu. Gravida ac ultrices .",
                style: GoogleFonts.heebo(
                    fontSize: 14,
                    color: Color.fromRGBO(79, 79, 79, 1),
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
              SizedBox(
                height: 24,
              ),
              Text(
                "Treatments Offered",
                style: GoogleFonts.heebo(
                    fontSize: 16,
                    color: Color.fromRGBO(79, 79, 79, 1),
                    fontWeight: FontWeight.w500),
              ),
              // SizedBox(
              //   height: 12,
              // ),
              Container(
                height: 132,
                child: Markdown(data: _treatmentmarkDownData),
              ),
              Text(
                "Clinic Facilities",
                style: GoogleFonts.heebo(
                    fontSize: 16,
                    color: Color.fromRGBO(79, 79, 79, 1),
                    fontWeight: FontWeight.w500),
              ),
              Container(
                height: 132,
                child: Markdown(data: _treatmentmarkDownData),
              ),
              Text(
                "Clinic Images/Videos",
                style: GoogleFonts.heebo(
                    fontSize: 16,
                    color: Color.fromRGBO(79, 79, 79, 1),
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: 102,
                    width: 102,
                    child: Image(
                      image: AssetImage(
                        "assets/Frame 7481.png",
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 102,
                    width: 102,
                    child: Image(
                      image: AssetImage(
                        "assets/Frame 7482.png",
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 102,
                    width: 102,
                    child: Image(
                      image: AssetImage(
                        "assets/Frame 7483.png",
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
