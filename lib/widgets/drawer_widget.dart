import "package:flutter/material.dart";

void main() => runApp(DrawerWidget());

class DrawerWidget extends StatefulWidget {
  @override
  _DrawerWidgetState createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
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
    );
  }
}
