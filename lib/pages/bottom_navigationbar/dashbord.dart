import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'naviagtion_pges/homePage/Home_page.dart';
import 'naviagtion_pges/accountPage/myaccount.dart';
import 'naviagtion_pges/servicePage/service_tab.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(
      () {
        _selectedIndex = index;
      },
    );
  }

  List<Widget> TabScreenIndex = [
    HomeTabScreen(),
    ServiceTab(),
    MyAccountTab(),
  ];

  List<PreferredSize> bar = [
    //Home AppBar
    PreferredSize(
      preferredSize: Size.fromHeight(40),
      child: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.location_on_outlined,
            color: Color.fromRGBO(79, 79, 79, 1),
          ),
          onPressed: () {},
        ),
        toolbarHeight: 60,
        bottomOpacity: 0.0,
        elevation: 0.0,
        backgroundColor: Colors.white,
        centerTitle: false,
        title: Text(
          "Plot No 23",
          style: GoogleFonts.heebo(
            fontSize: 20,
            color: Color.fromRGBO(51, 51, 51, 1),
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Color.fromRGBO(51, 51, 51, 1),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications_active_outlined,
              color: Color.fromRGBO(51, 51, 51, 1),
            ),
          )
        ],
      ),
    ),
    //Service AppBar
    PreferredSize(
      preferredSize: Size.fromHeight(60),
      child: AppBar(
        automaticallyImplyLeading: false,
        bottomOpacity: 0.0,
        elevation: 0.0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Services",
          style: GoogleFonts.heebo(
            fontSize: 20,
            color: Color.fromRGBO(51, 51, 51, 1),
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.add_box_outlined,
              color: Color.fromRGBO(51, 51, 51, 1),
            ),
          ),
        ],
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
        ),
      ),
    ),
    //My Account AppBar
    PreferredSize(
      preferredSize: Size.fromHeight(200),
      child: AppBar(
        // bottomOpacity: 0.0,
        automaticallyImplyLeading: false,
        elevation: 0.0,
        backgroundColor: Color.fromRGBO(142, 196, 225, 1),
        // centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.arrow_back_outlined,
                      color: Colors.white,
                      size: 24,
                    ),
                    SizedBox(
                      width: 91,
                    ),
                    Text(
                      "My Account",
                      style: GoogleFonts.heebo(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                // SizedBox(
                //   height: 12,
                // ),
                Row(
                  children: [
                    Image.asset(
                      "assets/Ellipse 817.png",
                      width: 64,
                      height: 64,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        // leading: IconButton(
        //   icon: Icon(
        //     Icons.arrow_back,
        //     color: Colors.white,
        //   ),
        //   onPressed: () {},
        // ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: PreferredSize(
      //   preferredSize: Size.fromHeight(60),
      //   child: bar[_selectedIndex],
      // ),
      appBar: bar[_selectedIndex],
      bottomNavigationBar: SizedBox(
        height: 48,
        child: BottomAppBar(
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              MaterialButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  // side: BorderSide(color: Colors.red),
                ),
                child: _selectedIndex == 0
                    ? Column(
                        children: [
                          Image.asset("assets/bottomhome1.png", height: 30),
                          Text(
                            "Home",
                            style: GoogleFonts.heebo(
                              fontSize: 10,
                              color: Color.fromRGBO(142, 196, 255, 1),
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      )
                    : Image.asset("assets/bottomhome.png", height: 30),
                height: 30,
                minWidth: 30,
                highlightColor: Colors.transparent,
                onPressed: () {
                  _onItemTapped(0);
                },
              ),
              MaterialButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  // side: BorderSide(color: Colors.red),
                ),
                child: _selectedIndex == 1
                    ? Column(
                        children: [
                          Image.asset("assets/bottomservice1.png", height: 30),
                          Text(
                            "Service",
                            style: GoogleFonts.heebo(
                              fontSize: 10,
                              color: Color.fromRGBO(142, 196, 255, 1),
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      )
                    : Image.asset("assets/bottomservice.png", height: 30),
                height: 30,
                minWidth: 30,
                focusColor: Colors.red,
                highlightColor: Colors.transparent,
                onPressed: () {
                  _onItemTapped(1);
                },
              ),
              MaterialButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  // side: BorderSide(color: Colors.red),
                ),
                child: _selectedIndex == 2
                    ? Column(
                        children: [
                          Image.asset("assets/bottomaccount1.png", height: 30),
                          Text(
                            "My Account",
                            style: GoogleFonts.heebo(
                              fontSize: 10,
                              color: Color.fromRGBO(142, 196, 255, 1),
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      )
                    : Image.asset("assets/bottomaccount.png", height: 30),
                height: 30,
                minWidth: 30,
                focusColor: Colors.red,
                highlightColor: Colors.transparent,
                onPressed: () {
                  _onItemTapped(2);
                },
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: TabScreenIndex[_selectedIndex],
      ),
    );
  }
}
