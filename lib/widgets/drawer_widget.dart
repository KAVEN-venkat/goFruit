import "package:flutter/material.dart";
import 'package:gofruit/pages/checkout.dart';
import 'package:gofruit/pages/home.dart';
import 'package:gofruit/pages/myorder.dart';
import 'package:gofruit/pages/notification.dart';
import 'package:gofruit/pages/products.dart';
import 'package:gofruit/pages/settings.dart';

final int currentIndex = 0;
void main() => runApp(DrawerWidget(currentIndex));

class DrawerWidget extends StatefulWidget {
  final int currentIndex; //if you have multiple values add here
  DrawerWidget(this.currentIndex, {Key key}) : super(key: key);
  @override
  _DrawerWidgetState createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  int tabIndex = 0;
  @override
  Widget build(BuildContext context) {
    tabIndex = widget.currentIndex;
    return Drawer(
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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(6, 0, 0, 0),
                                  child: Text(
                                    "Balance Available",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: Color(0xff6c757d),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(6, 0, 0, 0),
                                  child: Text(
                                    "\$ 2585",
                                    textAlign: TextAlign.left,
                                  ),
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
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Notifications(tabIndex),
                  ),
                );
              },
            ),
            ListTile(
              title: Text(
                'All Products',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Products(tabIndex),
                  ),
                );
              },
            ),
            ListTile(
              title: Text(
                'My Orders',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Myorder(tabIndex),
                  ),
                );
              },
            ),
            ListTile(
              title: Text(
                'My Profile',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Home(3),
                  ),
                );
              },
            ),
            ListTile(
              title: Text(
                'Checkout',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Checkout(tabIndex),
                  ),
                );
              },
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
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Settings(tabIndex),
                    ),
                  );
                },
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
    );
  }
}
