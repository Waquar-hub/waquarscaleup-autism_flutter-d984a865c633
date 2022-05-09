import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:google_fonts/google_fonts.dart';

import 'center_details.dart';

class BasicDetails extends StatefulWidget {
  const BasicDetails({Key? key}) : super(key: key);

  @override
  State<BasicDetails> createState() => _BasicDetailsState();
}

class _BasicDetailsState extends State<BasicDetails> {
  var imageFile;
  final picker = ImagePicker();

  Future getImagefromcamera() async {
    var image = await picker.pickImage(source: ImageSource.camera);

    setState(
      () {
        imageFile = File(image!.path);
      },
    );
    if (image != null) {
      setState(
        () {
          print("Image is picked");
        },
      );
    }
  }

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
          automaticallyImplyLeading: false,
          title: Center(
            child: Text(
              "Basic Details",
              style: GoogleFonts.heebo(
                fontSize: 32,
                color: Color.fromRGBO(51, 51, 51, 1),
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 16,
              ),
              Text(
                "Please provide the other required details as follow.",
                style: GoogleFonts.heebo(
                  fontSize: 14,
                  color: Color.fromRGBO(79, 79, 79, 1),
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 32,
              ),
              Container(
                child: DottedBorder(
                  dashPattern: [8, 4],
                  strokeWidth: 2,
                  color: Color.fromRGBO(189, 189, 189, 1),
                  borderType: BorderType.Circle,
                  radius: Radius.circular(10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    child: Container(
                      height: 120,
                      width: 120,
                      child: GestureDetector(
                        onTap: () {
                          getImagefromcamera();
                        },
                        child: imageFile == null
                            ? Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/camera.png",
                                    height: 45,
                                  )
                                ],
                              )
                            : CircleAvatar(
                                backgroundImage: FileImage(
                                  imageFile,
                                ),
                                radius: 40,
                              ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 43,
              ),
              Container(),
              SizedBox(
                height: 24,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Full Name",
                  style: GoogleFonts.heebo(
                    fontSize: 14,
                    color: Color.fromRGBO(51, 51, 51, 1),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter your full name",
                    hintStyle: GoogleFonts.heebo(
                      fontSize: 16,
                      color: Color.fromRGBO(130, 130, 130, 1),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Mobile Number",
                  style: GoogleFonts.heebo(
                    fontSize: 14,
                    color: Color.fromRGBO(51, 51, 51, 1),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "9643984***",
                    hintStyle: GoogleFonts.heebo(
                      fontSize: 14,
                      color: Color.fromRGBO(130, 130, 130, 1),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Email ID",
                  style: GoogleFonts.heebo(
                    fontSize: 14,
                    color: Color.fromRGBO(51, 51, 51, 1),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "@gmail.com",
                    hintStyle: GoogleFonts.heebo(
                      fontSize: 14,
                      color: Color.fromRGBO(130, 130, 130, 1),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 33,
              ),
              Container(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                    ),
                    backgroundColor: MaterialStateProperty.all(
                      Color.fromRGBO(142, 196, 225, 1),
                    ),
                  ),
                  child: Text(
                    "Next",
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
                        builder: (context) => const CenterDetails(),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
