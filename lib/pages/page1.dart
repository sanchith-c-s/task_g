import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:task_groww/sliderpage/spage1.dart';
import 'package:task_groww/sliderpage/spage2.dart';
import 'package:task_groww/sliderpage/spage3.dart';
import 'package:task_groww/sliderpage/spage4.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final sliderpage = [
      const Spage1(),
      const Spage2(),
      const Spage3(),

    ];

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Container(
              color: Colors.black,
              child: TabBar(
                labelColor: Colors.white,
                indicator: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(20),
                ),
                indicatorColor: Colors.transparent,
                dividerColor: Colors.black,
                tabs: [
                  Padding(
                    padding: EdgeInsets.only(left: 8,right: 8),
                    child: Tab(
                      height: 20.dp,
                      text: 'Explore',
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8,right: 8),
                    child: Tab(
                      height: 20.dp,
                      text: 'Dashboard',
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8,right: 8),
                    child: Tab(
                      height: 20.dp,
                      text: 'SIPs',
                    ),
                  ),
                  
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: sliderpage,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
