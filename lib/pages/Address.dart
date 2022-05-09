import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:homescreen2/pages/bottom_navigationbar/dashbord.dart';

class Address extends StatefulWidget {
  const Address({Key? key}) : super(key: key);

  @override
  State<Address> createState() => _AddressState();
}

class _AddressState extends State<Address> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(MediaQuery.of(context).size.width, 50),
          child: AppBar(
            bottomOpacity: 0.0,
            elevation: 0.0,
            backgroundColor: Colors.white,
            centerTitle: true,
            title: Text(
              "Address",
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
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 239,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "House Number*",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter house/Flat/Plot Number",
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Apartment*",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter house/Flat/Plot Number",
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Landmark*",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Any Landmark",
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Checkbox(
                    side: MaterialStateBorderSide.resolveWith(
                      (states) => BorderSide(
                          width: 1.0, color: Color.fromRGBO(189, 189, 189, 1)),
                    ),
                    value: this.value,
                    onChanged: (bool? value) {
                      setState(() {
                        this.value = value!;
                      });
                    },
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Save for the future",
                    style: GoogleFonts.heebo(
                      fontSize: 14,
                      color: Color.fromRGBO(79, 79, 79, 1),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ],
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
                    builder: (context) => const DashBoard(),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
