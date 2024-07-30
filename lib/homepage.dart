import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:task_groww/pages/page1.dart';

import 'pages/page2.dart';



class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  
  static const List<Widget> _widgetOptions = <Widget>[
   Page1(),
   Page2(),
    
    
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          leading: Padding(
            padding: EdgeInsets.all(4.0.dp),
            child: CircleAvatar(
              backgroundColor: Colors.white,
            ),
          ),
          title: Text(
            "Mutual Funds",
            style: TextStyle(
              color: Colors.white,
              fontSize: 15.dp, // Use dp for font size
              fontWeight: FontWeight.w600,
            ),
          ),
          actions: [
            Icon(Icons.search, color: Colors.white),
            SizedBox(width: 2.w),
            Icon(Icons.qr_code, color: Colors.white),
            SizedBox(width: 2.w),
            CircleAvatar(
              backgroundColor: Colors.white,
            ),
            SizedBox(width: 2.w),
          ],
          backgroundColor: Colors.black,
          
        ),
        body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ],
          currentIndex: _selectedIndex,
          unselectedItemColor: Colors.white,
          onTap: _onItemTapped,
        ),
      );
  }
}
