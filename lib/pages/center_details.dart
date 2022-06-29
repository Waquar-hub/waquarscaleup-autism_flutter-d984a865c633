import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dropdown/flutter_dropdown.dart';
import 'package:homescreen2/pages/Location_page.dart';
import 'package:image_picker/image_picker.dart';
import 'package:google_fonts/google_fonts.dart';

class CenterDetails extends StatefulWidget {
  const CenterDetails({Key? key}) : super(key: key);

  @override
  State<CenterDetails> createState() => _CenterDetailsState();
}

class _CenterDetailsState extends State<CenterDetails> {
  TimeOfDay selectedTime = TimeOfDay.now();

  bool value = false;
  String istapped = '';
  var _controller = TextEditingController();
  var imageFile;
  final picker = ImagePicker();
  String? gender;
  Color greycolor = Color(0xff939393);
  var fromTime = 'From';

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
    final maxLines = 5;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(MediaQuery.of(context).size.width, 50),
        child: AppBar(
          bottomOpacity: 0.0,
          elevation: 0.0,
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          title: Center(
            child: Text(
              "Centre Details",
              style: GoogleFonts.heebo(
                fontSize: 32,
                color: Color.fromRGBO(51, 51, 51, 1),
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(16),
              ),
              Row(
                children: [
                  Container(
                    child: DottedBorder(
                      color: Colors.grey,
                      borderType: BorderType.RRect,
                      radius: Radius.circular(8),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        child: Container(
                          height: 70,
                          width: 70,
                          child: GestureDetector(
                            onTap: () {
                              getImagefromcamera();
                            },
                            child: imageFile == null
                                ? Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.camera_alt_outlined,
                                        size: 22,
                                        color: Colors.grey,
                                      ),
                                    ],
                                  )
                                : Image.file(imageFile),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Container(
                    child: DottedBorder(
                      color: Colors.grey,
                      borderType: BorderType.RRect,
                      radius: Radius.circular(8),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        child: Container(
                          height: 70,
                          width: 70,
                          child: GestureDetector(
                            onTap: () {
                              getImagefromcamera();
                            },
                            child: imageFile == null
                                ? Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.camera_alt_outlined,
                                        size: 22,
                                        color: Colors.grey,
                                      ),
                                    ],
                                  )
                                : Image.file(imageFile),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Container(
                    child: DottedBorder(
                      color: Colors.grey,
                      borderType: BorderType.RRect,
                      radius: Radius.circular(8),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        child: Container(
                          height: 70,
                          width: 70,
                          child: GestureDetector(
                            onTap: () {
                              getImagefromcamera();
                            },
                            child: imageFile == null
                                ? Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.camera_alt_outlined,
                                        size: 22,
                                        color: Colors.grey,
                                      ),
                                    ],
                                  )
                                : Image.file(imageFile),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Container(
                    child: DottedBorder(
                      color: Colors.grey,
                      borderType: BorderType.RRect,
                      radius: Radius.circular(8),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        child: Container(
                          height: 70,
                          width: 70,
                          child: GestureDetector(
                            onTap: () {
                              getImagefromcamera();
                            },
                            child: imageFile == null
                                ? Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.camera_alt_outlined,
                                        size: 22,
                                        color: Colors.grey,
                                      ),
                                    ],
                                  )
                                : Image.file(imageFile),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Centre Name",
                  style: GoogleFonts.heebo(
                    fontSize: 14,
                    color: Color.fromRGBO(51, 51, 51, 1),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(height: 5),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter Centre Name",
                  hintStyle: GoogleFonts.heebo(
                    color: Color.fromRGBO(130, 130, 130, 1),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Centre Type",
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
                height: 64,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    border: Border.all(color: Color.fromRGBO(189, 189, 189, 1)),
                    borderRadius: BorderRadius.circular(8)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: DropDown(
                    customWidgets: [
                      Text(
                        "centre type 1",
                        style: GoogleFonts.heebo(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "centre type 2",
                        style: GoogleFonts.heebo(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "centre type 3",
                        style: GoogleFonts.heebo(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "centre type 4",
                        style: GoogleFonts.heebo(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                    items: [
                      "centre type 1",
                      "centre type 2",
                      "centre type 3",
                      "centre type 4"
                    ],
                    showUnderline: false,
                    onChanged: (val) {
                      setState(() {
                        gender = val as String?;
                      });
                    },
                    hint: Text(
                      "Select centre type",
                      style: GoogleFonts.heebo(
                        color: Color.fromRGBO(130, 130, 130, 1),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
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
                  "Location",
                  style: GoogleFonts.heebo(
                    fontSize: 14,
                    color: Color.fromRGBO(51, 51, 51, 1),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: new BorderSide(
                      color: Color.fromRGBO(189, 189, 189, 1),
                    ),
                  ),
                  hintText: "Add location of the centre",
                  hintStyle: GoogleFonts.heebo(
                    color: Color.fromRGBO(130, 130, 130, 1),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                  suffixIcon: IconButton(
                    onPressed: () => _controller.clear(),
                    icon: Icon(Icons.location_on_outlined),
                    iconSize: 22,
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Opening Days & Timings",
                  style: GoogleFonts.heebo(
                    fontSize: 16,
                    color: Color.fromRGBO(51, 51, 51, 1),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Days",
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
              Wrap(
                spacing: 8,
                children: [
                  Container(
                    child: SizedBox(
                      width: 64,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(primary: Colors.blue),
                        onPressed: () {
                          setState(
                            () {},
                          );
                        },
                        child: Text(
                          "Mon",
                          style: TextStyle(
                              color: Color.fromRGBO(
                                79,
                                79,
                                79,
                                1,
                              ),
                              fontSize: 14),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: OutlinedButton(
                      onPressed: () {
                        setState(() {});
                      },
                      child: Text(
                        "Tue",
                        style: TextStyle(
                            color: Color.fromRGBO(
                              79,
                              79,
                              79,
                              1,
                            ),
                            fontSize: 14),
                      ),
                    ),
                  ),
                  Container(
                    child: OutlinedButton(
                      onPressed: () {
                        setState(
                          () {},
                        );
                      },
                      child: Text(
                        "Wed",
                        style: TextStyle(
                            color: Color.fromRGBO(
                              79,
                              79,
                              79,
                              1,
                            ),
                            fontSize: 14),
                      ),
                    ),
                  ),
                  Container(
                    child: OutlinedButton(
                      onPressed: () {
                        setState(() {});
                      },
                      child: Text(
                        "Thr",
                        style: TextStyle(
                            color: Color.fromRGBO(
                              79,
                              79,
                              79,
                              1,
                            ),
                            fontSize: 14),
                      ),
                    ),
                  ),
                  Container(
                    child: OutlinedButton(
                      onPressed: () {
                        setState(() {});
                      },
                      child: Text(
                        "Fri",
                        style: TextStyle(
                            color: Color.fromRGBO(
                              79,
                              79,
                              79,
                              1,
                            ),
                            fontSize: 14),
                      ),
                    ),
                  ),
                  Container(
                    child: OutlinedButton(
                      onPressed: () {
                        setState(() {});
                      },
                      child: Text(
                        "Sat",
                        style: TextStyle(
                            color: Color.fromRGBO(
                              79,
                              79,
                              79,
                              1,
                            ),
                            fontSize: 14),
                      ),
                    ),
                  ),
                  Container(
                    child: OutlinedButton(
                      onPressed: () {
                        setState(() {});
                      },
                      child: Text(
                        "Sun",
                        style: TextStyle(
                            color: Color.fromRGBO(
                              79,
                              79,
                              79,
                              1,
                            ),
                            fontSize: 14),
                      ),
                    ),
                  )
                ],
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Timing",
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
              Wrap(
                spacing: 16,
                children: [
                  InkWell(
                    onTap: () {
                      _selectTime(context);
                    },
                    child: Container(
                      width: 172,
                      child: Text(fromTime
                          // keyboardType: TextInputType.number,
                          // decoration: InputDecoration(
                          //   border: OutlineInputBorder(
                          //     borderSide: new BorderSide(
                          //       color: Color.fromRGBO(189, 189, 189, 1),
                          //     ),
                          //   ),
                          //   hintText: "From",
                          //   hintStyle: GoogleFonts.heebo(
                          //     color: Color.fromRGBO(130, 130, 130, 1),
                          //     fontSize: 14,
                          //     fontWeight: FontWeight.w400,
                          //   ),
                          //   suffixIcon: IconButton(
                          //     onPressed: () {
                          //       _selectTime(context);
                          //     },
                          //     icon: Icon(Icons.access_time),
                          //     iconSize: 22,
                          // ),
                          // ),
                          ),
                    ),
                  ),
                  Container(
                    width: 172,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: new BorderSide(
                            color: Color.fromRGBO(189, 189, 189, 1),
                          ),
                        ),
                        hintText: "To",
                        hintStyle: GoogleFonts.heebo(
                          color: Color.fromRGBO(130, 130, 130, 1),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                        suffixIcon: IconButton(
                          onPressed: () {
                            _selectTime(context);
                          },
                          icon: Icon(
                            Icons.access_time,
                          ),
                          iconSize: 22,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 24,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Description",
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
                height: maxLines * 32,
                child: TextFormField(
                  maxLines: maxLines,
                  textAlign: TextAlign.start,
                  // expands: true,

                  decoration: InputDecoration(
                    // contentPadding: EdgeInsets.symmetric(vertical: 64),
                    border: OutlineInputBorder(),
                    hintText: "Please write some about your center here....",
                    hintStyle: GoogleFonts.heebo(
                      color: Color.fromRGBO(130, 130, 130, 1),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Container(
                height: 48,
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
                    "Verify",
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
                        builder: (context) => const Location(),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _selectTime(BuildContext context) async {
    final TimeOfDay? timeOfDay = await showTimePicker(
      context: context,
      initialTime: selectedTime,
      initialEntryMode: TimePickerEntryMode.dial,
    );
    if (timeOfDay != null && timeOfDay != selectedTime) {
      setState(
        () {
          selectedTime = timeOfDay;
          fromTime = timeOfDay.toString();
        },
      );
    }
  }
}
