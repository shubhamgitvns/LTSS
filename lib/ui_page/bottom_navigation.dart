import 'package:flutter/material.dart';
import 'package:recharge_setu/user_page/profile_page.dart';
import 'package:recharge_setu/user_page/report_page/report_page.dart';
import 'package:recharge_setu/user_page/service_page.dart';
import 'package:recharge_setu/user_page/support_page.dart';

import 'home_page/home_page.dart';


class BottomCollectionBoy extends StatefulWidget {
  int index = 0;
  BottomCollectionBoy({Key? key, required this.index}) : super(key: key);

  @override
  State<BottomCollectionBoy> createState() => _BottomCollectionBoyState();
}

class _BottomCollectionBoyState extends State<BottomCollectionBoy> {
  int _selectedIndex = 0;
  bool _showBottomSheet = false;
  int _previousIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    const Report(),
    const Service_Page(),
    const Support(),
    const Profile(),

  ];

  final bool _isBottomSheetOpen = false;

  @override
  void initState() {
    _selectedIndex = widget.index;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: AppColors.maincolor,
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.black,
        selectedIconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        selectedLabelStyle: const TextStyle(fontSize: 2),
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
            _previousIndex = _selectedIndex;

          });
        },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image(
                    image: const AssetImage(
                        "images/home.png"),
                    color: _selectedIndex == 0 ? Colors.red : Colors.red.shade100,

                  ),
                  Text(
                    "Home",
                    style: TextStyle(
                      fontSize: 10,
                      color: _selectedIndex == 0 ? Colors.red : Colors.red.shade100,
                    ),
                  ),
                ],
              ),
            ),
            label: '',
          ),

          BottomNavigationBarItem(
            icon: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                 Icon(Icons.design_services,
                   color: _selectedIndex == 1 ? Colors.red : Colors.red.shade100,

                 ),
                  Text(
                    "Service",
                    style: TextStyle(
                      fontSize: 10,
                      color: _selectedIndex == 1 ? Colors.red : Colors.red.shade100,
                    ),
                  ),
                ],
              ),
            ),
            label: '',
          ),

          BottomNavigationBarItem(
            icon: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image(
                    image: const AssetImage(
                        "images/mobile_th.png"),
                    color: _selectedIndex == 2 ? Colors.red : Colors.red.shade100,

                  ),
                  Text(
                    "Support",
                    style: TextStyle(
                      fontSize: 10,
                      color: _selectedIndex == 2 ? Colors.red : Colors.red.shade100,
                    ),
                  ),
                ],
              ),
            ),
            label: '',
          ),


          BottomNavigationBarItem(
            icon: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image(
                    image: const AssetImage(
                        "images/person.png"),
                    color: _selectedIndex == 3 ? Colors.red : Colors.red.shade100,

                  ),
                  // Icon(
                  //   Icons.design_services,
                  //   color: _selectedIndex == 3 ? Colors.red : Colors.red.shade100,
                  //
                  // ),
                  Text(
                    "Person",
                    style: TextStyle(
                      fontSize: 10,
                      color: _selectedIndex == 3 ? Colors.red : Colors.red.shade100,
                    ),
                  ),
                ],
              ),
            ),
            label: '',
          ),

        ],
      ),

      body: Stack(
        children: [
          _widgetOptions.elementAt(_selectedIndex),
        ],
      ),
      // bottomSheet: _showBottomSheet ? _buildBottomSheet() : null,
    );
  }
}