import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dropdown/flutter_dropdown.dart';
import 'package:image_picker/image_picker.dart';
import 'package:google_fonts/google_fonts.dart';

class CenterService extends StatefulWidget {
  const CenterService({Key? key}) : super(key: key);

  @override
  State<CenterService> createState() => _CenterServiceState();
}

class _CenterServiceState extends State<CenterService> {
  bool change = false;
  int? index;
  String? gender;
  String? status;
  String _selectServiceFee = 'free';
  TimeOfDay selectedTime = TimeOfDay.now();
  DateTime selectedDate = DateTime.now();

  bool value = false;
  String istapped = '';
  var _controller = TextEditingController();
  var imageFile;
  final picker = ImagePicker();

  Color greycolor = Color(0xff939393);

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
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: AppBar(
            iconTheme: IconThemeData(
              color: Colors.black, //change your color here
            ),
            bottomOpacity: 0.0,
            elevation: 0.0,
            backgroundColor: Colors.white,
            automaticallyImplyLeading: true,
            centerTitle: true,
            title: Center(
              child: Text(
                "Centre Service",
                style: GoogleFonts.heebo(
                  fontSize: 32,
                  color: Color.fromRGBO(51, 51, 51, 1),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            actions: [
              Align(
                alignment: Alignment.center,
                child: InkWell(
                  onTap: () {},
                  child: Text(
                    "Post",
                    style: GoogleFonts.heebo(
                      fontSize: 18,
                      color: Color.fromRGBO(130, 130, 130, 1),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ],
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
                  "Service Name",
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
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter Event Name",
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
                  "Centre Name",
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
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter centre Name",
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
                  "Service Fee",
                  style: GoogleFonts.heebo(
                    fontSize: 14,
                    color: Color.fromRGBO(51, 51, 51, 1),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter the amount in INR",
                  hintStyle: GoogleFonts.heebo(
                    color: Color.fromRGBO(130, 130, 130, 1),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(
                              () {
                                index = 0;
                                status = 'Paid';
                              },
                            );
                          },
                          child: Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: greycolor),
                            ),
                            child: Center(
                              child: Container(
                                height: 11,
                                width: 11,
                                decoration: BoxDecoration(
                                    color: index == 0 ? Colors.blue : greycolor,
                                    shape: BoxShape.circle),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Paid",
                          style: TextStyle(
                              color: index == 0 ? Colors.black : greycolor,
                              fontSize: 14),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(
                              () {
                                index = 1;
                                status = 'Free';
                              },
                            );
                          },
                          child: Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: greycolor)),
                            child: Center(
                              child: Container(
                                height: 11,
                                width: 11,
                                decoration: BoxDecoration(
                                    color: index == 1 ? Colors.blue : greycolor,
                                    shape: BoxShape.circle),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Free",
                          style: TextStyle(
                              color: index == 1 ? Colors.black : greycolor,
                              fontSize: 14),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Service Type",
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
                        "Service type 1",
                        style: GoogleFonts.heebo(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "Service type 2",
                        style: GoogleFonts.heebo(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "Service type 3",
                        style: GoogleFonts.heebo(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "Service type 4",
                        style: GoogleFonts.heebo(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                    items: [
                      "service type 1",
                      "service type 2",
                      "service type 3",
                      "service type 4"
                    ],
                    showUnderline: false,
                    onChanged: (val) {
                      setState(() {
                        gender = val as String?;
                      });
                    },
                    hint: Text(
                      "Select type of service",
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
                  "About Service",
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
                height: maxLines * 24,
                child: TextFormField(
                  maxLines: maxLines,
                  textAlign: TextAlign.start,
                  // expands: true,

                  decoration: InputDecoration(
                    // contentPadding: EdgeInsets.symmetric(vertical: 64),
                    border: OutlineInputBorder(),
                    hintText: "Add description here ...",
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
                  hintText: "Add location of the service",
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
              SizedBox(
                height: 16,
              ),
              SizedBox(
                height: 5,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Service Date & Timings",
                  style: GoogleFonts.heebo(
                    fontSize: 14,
                    color: Color.fromRGBO(51, 51, 51, 1),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(
                height: 9,
              ),
              Wrap(
                runSpacing: 12,
                spacing: 16,
                children: [
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
                        hintText: "From",
                        suffixIcon: IconButton(
                          onPressed: () {
                            _selectDate(context);
                          },
                          icon: Icon(Icons.calendar_month_outlined),
                          iconSize: 22,
                        ),
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
                        hintText: "Timings",
                        suffixIcon: IconButton(
                          onPressed: () {
                            _selectTime(context);
                          },
                          icon: Icon(Icons.access_time),
                          iconSize: 22,
                        ),
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
                        suffixIcon: IconButton(
                          onPressed: () {
                            _selectDate(context);
                          },
                          icon: Icon(Icons.calendar_month_outlined),
                          iconSize: 22,
                        ),
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
                        hintText: "Timings",
                        suffixIcon: IconButton(
                          onPressed: () {
                            _selectTime(context);
                          },
                          icon: Icon(Icons.access_time),
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
                child: InkWell(
                  onTap: () {},
                  child: Text(
                    "+ Add more time slots",
                    style: GoogleFonts.heebo(
                      fontSize: 18,
                      color: Color.fromRGBO(142, 196, 225, 1),
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
                  "Select Facilities",
                  style: GoogleFonts.heebo(
                    fontSize: 14,
                    color: Color.fromRGBO(51, 51, 51, 1),
                    fontWeight: FontWeight.w400,
                  ),
                ),
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
                        "Service type 1",
                        style: GoogleFonts.heebo(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "Service type 2",
                        style: GoogleFonts.heebo(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "Service type 3",
                        style: GoogleFonts.heebo(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "Service type 4",
                        style: GoogleFonts.heebo(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                    items: [
                      "Facility type 1",
                      "Facility type 2",
                      "Facility type 3",
                      "Facility type 4"
                    ],
                    showUnderline: false,
                    onChanged: (val) {
                      setState(() {
                        gender = val as String?;
                      });
                    },
                    hint: Text(
                      "Select type of service",
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
                height: 24,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Mention features of the service",
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
                height: maxLines * 24,
                child: TextFormField(
                  maxLines: maxLines,
                  textAlign: TextAlign.start,
                  // expands: true,

                  decoration: InputDecoration(
                      // contentPadding: EdgeInsets.symmetric(vertical: 64),
                      border: OutlineInputBorder(),
                      hintText:
                          "Please add feathures here e.g. #feature1 #feature2 #feature3"),
                ),
              ),
              SizedBox(
                height: 24,
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
      setState(() {
        selectedTime = timeOfDay;
      });
    }
  }

  _selectDate(BuildContext context) async {
    final DateTime? dateTime = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2010),
      lastDate: DateTime(2025),
      // initialEntryMode: DatePickerEntryMode.calendar,
    );
    if (dateTime != null && dateTime != selectedTime) {
      setState(() {
        selectedDate = dateTime;
      });
    }
  }
}
