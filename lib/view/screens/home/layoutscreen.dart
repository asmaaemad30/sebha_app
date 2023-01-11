import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sebha_app/constant.dart';
import 'package:flutter/cupertino.dart';

import '../azkarscreen/azkarscreen.dart';
import '../sebhascreen/sebhascreen.dart';
import 'homescreen.dart';

class Layoutscreen extends StatefulWidget {
  const Layoutscreen({Key? key}) : super(key: key);

  @override
  State<Layoutscreen> createState() => _LayoutscreenState();
}

class _LayoutscreenState extends State<Layoutscreen> {
  int _selectedIndex =0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  List pages =[
    Homescreen(),
    AzkarScreen(),
    SebhaScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:pages[_selectedIndex] ,
      backgroundColor: backgroundColor,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        showSelectedLabels: false,
        selectedItemColor: selctedItemColor,

        items: [
          BottomNavigationBarItem(
            label: '',
            icon: SvgPicture.asset(home),
            activeIcon: SvgPicture.asset(greenHome),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: SvgPicture.asset(book),
            activeIcon: SvgPicture.asset(greenBook),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: SvgPicture.asset(sebha),
            activeIcon: SvgPicture.asset(greenSebha),
          ),
        ],

        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),



    );
  }
}
