import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:gofruit/pages/cart.dart';
import 'package:gofruit/pages/chart.dart';
import 'package:gofruit/pages/favorite.dart';
import 'package:gofruit/pages/profile.dart';
import 'package:gofruit/pages/store.dart';

final int currentIndex = 0;
void main() => runApp(Home(currentIndex));

class Home extends StatefulWidget {
  final int currentTabIndex; //if you have multiple values add here
  Home(this.currentTabIndex, {Key key}) : super(key: key);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int tabIndex = 0;
  List<Widget> listScreens;
  var width, height;
  @override
  void initState() {
    super.initState();
    listScreens = [
      Store(),
      Chart(),
      //Cart(),
      Favorite(),
      Profile(),
    ];
  }

  buildProductGridView() {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1.0,
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0,
      ),
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () => {print("123")},
          child: Container(
            width: width * 0.5,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              children: [
                Wrap(
                  children: [
                    Icon(
                      Icons.favorite_outline,
                      size: 16,
                      color: Color(0xffFF0068),
                    ),
                    Container(
                      padding:
                          EdgeInsets.only(left: 6, top: 3, right: 6, bottom: 0),
                      decoration: BoxDecoration(
                        color: Color(0xff00BE7D),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Text("10% Off"),
                    )
                  ],
                ),
                Image.asset(
                  'assets/img/apple.png',
                  width: width * 0.235,
                ),
                Text("Red Apple"),
                Text("Imported Simla"),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    tabIndex = widget.currentTabIndex;
    return Scaffold(
      backgroundColor: Color(0xffE3EAF1),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xffE3EAF1),
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Builder(
              builder: (context) => IconButton(
                icon: new Stack(children: <Widget>[
                  Image.asset(
                    "assets/img/menu.png",
                    height: 15,
                    width: 34,
                  ),
                  new Positioned(
                      top: 4.0,
                      right: -1.0,
                      child: new Stack(
                        children: <Widget>[
                          new Icon(
                            Icons.brightness_1,
                            size: 7.0,
                            color: const Color(0xFFFF0068),
                          ),
                        ],
                      ))
                ]),
                onPressed: () => Scaffold.of(context).openDrawer(),
              ),
            ),
            Container(
              child: Image.asset(
                'assets/img/logo-header.png',
                height: 48,
              ),
            ),
            Icon(
              Icons.account_circle,
              color: Color(0xff343a40),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: Container(
          //child: Your widget,
          color: Color(0xffFF0068),
          width: double.infinity,
          height: double.infinity,
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              Container(
                height: 280,
                child: DrawerHeader(
                  decoration: BoxDecoration(
                    color: Color(0xffFF0068),
                  ),
                  child: ListView(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 45.0,
                        child: ClipOval(
                          child: Image.asset(
                            'assets/img/user1.png',
                            width: 80,
                          ),
                        ),
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(0.0),
                          child: Text(
                            "Ammy Jahnson",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(0.0),
                          child: Text(
                            "Sydney, Australia",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Color(0xffFFE5F0),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Wrap(
                          children: [
                            Container(
                              child: Column(
                                children: [
                                  Text(
                                    "Balance Available",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: Color(0xff6c757d),
                                    ),
                                  ),
                                  Text(
                                    "\$ 2585",
                                    textAlign: TextAlign.left,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 90),
                              child: Column(
                                children: [
                                  FloatingActionButton(
                                    mini: true,
                                    onPressed: null,
                                    tooltip: 'Increment',
                                    child: new Icon(Icons.add),
                                    elevation: 4.0,
                                    backgroundColor: Color(0xffFF0068),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "MENU",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
              Container(
                height: 45,
                margin: EdgeInsets.fromLTRB(8, 0, 8, 0),
                decoration: BoxDecoration(
                  color: Color(0xffE3EAF1).withOpacity(0.25),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: ListTile(
                  title: Transform.translate(
                    offset: Offset(0, -5),
                    child: Text(
                      'Store',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  onTap: () {},
                ),
              ),
              ListTile(
                title: Text(
                  'Notifocation',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onTap: () {},
              ),
              ListTile(
                title: Text(
                  'All Products',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onTap: () {},
              ),
              ListTile(
                title: Text(
                  'My Orders',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onTap: () {},
              ),
              ListTile(
                title: Text(
                  'My Profile',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onTap: () {},
              ),
              ListTile(
                title: Text(
                  'Pages Contorls',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onTap: () {},
              ),
              Container(
                height: 45,
                margin: EdgeInsets.fromLTRB(8, 0, 8, 0),
                decoration: BoxDecoration(
                  color: Color(0xffE3EAF1).withOpacity(0.25),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: ListTile(
                  title: Transform.translate(
                    offset: Offset(0, -5),
                    child: Text(
                      'Settings',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  onTap: () {},
                ),
              ),
              ListTile(
                title: Text(
                  'Logout',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
      body: listScreens[tabIndex],
      floatingActionButton: new FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Cart(tabIndex),
            ),
          );
          /*setState(() {
            tabIndex = 2;
          });*/
        },
        tooltip: 'Increment',
        child: new Icon(Icons.local_mall),
        elevation: 4.0,
        backgroundColor: Color(0xffFF0068),
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Color(0xFF3B3D58),
          primaryColor: Colors.white,
          textTheme: Theme.of(context).textTheme.copyWith(
                caption: TextStyle(
                  color: Colors.red,
                ),
              ),
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          currentIndex: tabIndex,
          selectedItemColor: Color(0xffFF0068),
          unselectedItemColor: Colors.grey,
          iconSize: 20,
          elevation: 5,
          onTap: (int index) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => Home(index),
              ),
            );
            /*setState(() {
              tabIndex = index;
            });*/
          },
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.store_mall_directory),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 30, 0),
                child: Icon(
                  Icons.insert_chart_outlined,
                ),
              ),
              label: "Chart",
            ),
            /*BottomNavigationBarItem(
              icon: Icon(Icons.local_mall),
              label: "Cart",
            ),*/
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                child: Icon(Icons.favorite),
              ),
              label: "Favorite",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: "Profile",
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
