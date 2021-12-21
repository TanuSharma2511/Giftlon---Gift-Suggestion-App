import 'package:flutter/material.dart';
import 'package:myapp/InfoScreen/info_page.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:myapp/InfoScreen/info_gender.dart';

class MyInfoGender extends StatefulWidget {

  @override
  _MyInfoGenderState createState() => _MyInfoGenderState();
}

class _MyInfoGenderState extends State<MyInfoGender> with SingleTickerProviderStateMixin{
 TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(left: 20.0),
        children: <Widget>[
          SizedBox(height: 15.0),
         
          SizedBox(height: 15.0),
          // TabBar(
          //     controller: _tabController,
          //     indicatorColor: Colors.transparent,
          //     labelColor: Color(0xFFC88D67),
          //     isScrollable: true,
          //     labelPadding: EdgeInsets.only(right: 45.0),
          //     unselectedLabelColor: Color(0xFFCDCDCD),
          //     tabs: [
          //       Tab(
          //         child: Text('Cookies',
          //             style: TextStyle(
          //               fontFamily: 'Varela',
          //               fontSize: 21.0,
          //             )),
          //       ),
          //       Tab(
          //         child: Text('Cookie cake',
          //             style: TextStyle(
          //               fontFamily: 'Varela',
          //               fontSize: 21.0,
          //             )),
          //       ),
          //       Tab(
          //         child: Text('Ice cream',
          //             style: TextStyle(
          //               fontFamily: 'Varela',
          //               fontSize: 21.0,
          //             )),
          //       )
          //     ]),
              Container(
                height: MediaQuery.of(context).size.height - 50.0,
                width: double.infinity,
                child: TabBarView(
                  controller: _tabController,
                  children: [
                  // InfoPage(),
                  //  InfoPage(),
                  //  InfoPage(),
                  InfoGender(),
                  InfoGender(),
                  InfoGender(),
                  ]
                )
              )
        ],
      ),
      // bottomNavigationBar: BottomNavigation(),
    );
  }
}