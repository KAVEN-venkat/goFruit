import 'package:flutter/material.dart';
import 'package:gofruit/pages/cart.dart';
import 'package:gofruit/pages/changepassword.dart';
import 'package:gofruit/pages/home.dart';
import 'package:gofruit/widgets/drawer_widget.dart';
import 'package:badges/badges.dart';

final int currentIndex = 0;
void main() => runApp(Settings(currentIndex));

class Settings extends StatefulWidget {
  final int currentIndex; //if you have multiple values add here
  Settings(this.currentIndex, {Key key}) : super(key: key);
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  var width, height;
  int tabIndex = 0;
  bool emailStatus = true;
  bool smsStatus = true;
  bool profileAvail = false;
  bool sendRequest = false;
  void initState() {
    super.initState();
    print(tabIndex);
  }

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    tabIndex = widget.currentIndex;
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
      drawer: DrawerWidget(tabIndex),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                  bottom: BorderSide(
                    color: Color(0xffe3eaf1),
                    width: 0.5,
                  ),
                ),
              ),
              child: ListTile(
                title: Text(
                  'Email Notification',
                  style: TextStyle(
                    color: Color(0xff343a40),
                    fontSize: 16,
                  ),
                ),
                subtitle: Text(
                  "Default all notification will be sent",
                  style: TextStyle(
                    color: Color(0xff6c757d),
                    fontSize: 12,
                  ),
                ),
                trailing: Container(
                  child: Switch(
                    value: emailStatus,
                    onChanged: (value) {
                      setState(() {
                        emailStatus = value;
                        print(emailStatus);
                      });
                    },
                    activeTrackColor: Color(0xffFF0068),
                    activeColor: Colors.white,
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                  bottom: BorderSide(
                    color: Color(0xffe3eaf1),
                    width: 0.5,
                  ),
                ),
              ),
              child: ListTile(
                title: Text(
                  'SMS Notification',
                  style: TextStyle(
                    color: Color(0xff343a40),
                    fontSize: 16,
                  ),
                ),
                subtitle: Text(
                  "Receive SMS notification",
                  style: TextStyle(
                    color: Color(0xff6c757d),
                    fontSize: 12,
                  ),
                ),
                trailing: Container(
                  child: Switch(
                    value: smsStatus,
                    onChanged: (value) {
                      setState(() {
                        smsStatus = value;
                        print(smsStatus);
                      });
                    },
                    activeTrackColor: Color(0xffFF0068),
                    activeColor: Colors.white,
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                  bottom: BorderSide(
                    color: Color(0xffe3eaf1),
                    width: 0.5,
                  ),
                ),
              ),
              child: ListTile(
                title: Text(
                  'Profile Avaialability',
                  style: TextStyle(
                    color: Color(0xff343a40),
                    fontSize: 16,
                  ),
                ),
                subtitle: Text(
                  "Everyone can see my profile in search",
                  style: TextStyle(
                    color: Color(0xff6c757d),
                    fontSize: 12,
                  ),
                ),
                trailing: Container(
                  child: Switch(
                    value: profileAvail,
                    onChanged: (value) {
                      setState(() {
                        profileAvail = value;
                        print(profileAvail);
                      });
                    },
                    activeTrackColor: Color(0xffFF0068),
                    activeColor: Colors.white,
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                  bottom: BorderSide(
                    color: Color(0xffe3eaf1),
                    width: 0.5,
                  ),
                ),
              ),
              child: ListTile(
                title: Text(
                  'Sent Request',
                  style: TextStyle(
                    color: Color(0xff343a40),
                    fontSize: 16,
                  ),
                ),
                subtitle: Text(
                  "Everyone can sent me a request",
                  style: TextStyle(
                    color: Color(0xff6c757d),
                    fontSize: 12,
                  ),
                ),
                trailing: Container(
                  child: Switch(
                    value: sendRequest,
                    onChanged: (value) {
                      setState(() {
                        sendRequest = value;
                        print(sendRequest);
                      });
                    },
                    activeTrackColor: Color(0xffFF0068),
                    activeColor: Colors.white,
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Changepassword(tabIndex),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: ListTile(
                  title: Text(
                    'Change Password',
                    style: TextStyle(
                      color: Color(0xff343a40),
                      fontSize: 16,
                    ),
                  ),
                  subtitle: Text(
                    "Everyone can sent me a request",
                    style: TextStyle(
                      color: Color(0xff6c757d),
                      fontSize: 12,
                    ),
                  ),
                  trailing: Icon(Icons.chevron_right),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) => Cart(tabIndex),
            ),
          );
          /*setState(() {
            tabIndex = 2;
          });*/
        },
        tooltip: 'Increment',
        child: Badge(
          position: BadgePosition.bottomEnd(),
          toAnimate: true,
          shape: BadgeShape.circle,
          badgeColor: Colors.black,
          borderRadius: BorderRadius.circular(8),
          badgeContent: Text(
            '3',
            style: TextStyle(color: Colors.white),
          ),
          child: Icon(
            Icons.local_mall,
          ),
        ),
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
            // setState(() {
            //   tabIndex = index;
            // });
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Home(index),
              ),
            );
          },
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.store_mall_directory,
                size: 22,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 30, 0),
                child: Icon(
                  Icons.insert_chart_outlined,
                  size: 22,
                ),
              ),
              label: "Chart",
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                child: Icon(
                  Icons.favorite,
                  size: 22,
                ),
              ),
              label: "Favorite",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle,
                size: 22,
              ),
              label: "Profile",
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
