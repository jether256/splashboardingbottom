import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:splashboardingbottom/screens/search.dart';


import '../home.dart';
import 'account.dart';
import 'appo.dart';
import 'more.dart';


class MainScreen extends StatefulWidget {
  static const  String id='main-screen';

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>{

int _selectedIndex=0;
static const TextStyle optionStyle=TextStyle(fontSize: 30,fontWeight: FontWeight.w300);


static final List<Widget> _widgetOptions=<Widget>[

  HomeScreen(),
 Apo(),
Search(),
More(),

];



void _onItemTapped(int index){

  setState(() {
    _selectedIndex=index;
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 4,
        items:  <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon:Icon(_selectedIndex == 0 ? Icons.home:Icons.home_outlined),
            label: 'Home',
            // backgroundColor: Colors.lightBlue,
          ),

          BottomNavigationBarItem(
            icon:Icon(_selectedIndex == 1 ? Icons.book:Icons.book_outlined),
            label: 'Appointments',
            // backgroundColor: Colors.lightBlue,
          ),

          // BottomNavigationBarItem(
          //   icon:Icon(_selectedIndex == 2 ? Icons.settings: Icons.settings_outlined),
          //   label: 'Account',
          //   // backgroundColor: Colors.lightBlue,
          // ),

          BottomNavigationBarItem(
            icon:Icon(_selectedIndex == 2 ? Icons.search:Icons.search_outlined),
            label: 'Search',
            // backgroundColor: Colors.lightBlue,
          ),

          BottomNavigationBarItem(
            icon:Icon(_selectedIndex == 3 ? Icons.more:Icons.more_outlined),
            label: 'More',
            // backgroundColor: Colors.lightBlue,
          ),


        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.lightBlue,
        showSelectedLabels: true,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}
