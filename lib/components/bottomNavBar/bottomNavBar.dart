import 'package:explore_uganda/components/constants/constants.dart';
import 'package:explore_uganda/screens/HomeScreens/Home.dart';
import 'package:explore_uganda/screens/exploreScreens/explore.dart';
import 'package:explore_uganda/screens/marketScreens/Market.dart';
import 'package:explore_uganda/screens/moreScreens/more.dart';
import 'package:explore_uganda/screens/todoScreens/toDo.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  
  int index;
  BottomNavBar({required this.index});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {

  late int _selectedIndex;

  List _screens = [
    Home(),
    ToDo(),
    Explore(),
    Market(),
    More()
  ];


  @override

  void initState() {
    // TODO: implement initState
    super.initState();
    _selectedIndex = widget.index;
  }

  Widget build(BuildContext context) {
    return Scaffold(

        body: Center(
          child: _screens[_selectedIndex],
        ),


        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: appcolor,
          unselectedItemColor: Colors.white,
          currentIndex: _selectedIndex,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.black,
          elevation:10,
          onTap: (int index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          items: [
        
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home'
            ),
        
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month),
              label: 'To Do'
            ),
            
             BottomNavigationBarItem(
              icon: Icon(Icons.explore_outlined),
              label: 'Explore'
            ),
          
            BottomNavigationBarItem(
              icon: Icon(Icons.storefront),
              label: 'Market'
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.more_horiz),
              label: 'More'
            ),
        
          ]
        ),


    );
  }
}