import 'package:flutter/material.dart';
import 'package:gofruit/pages/home.dart';
import 'package:gofruit/pages/cart.dart';
import 'package:gofruit/pages/notificationdetails.dart';
import 'package:gofruit/widgets/drawer_widget.dart';

final int currentIndex = 0;
final List<Map> notifyLists = [
  {
    "title": 'John accepted your request',
    "notify_time": "3 days ago",
    "notify_message":
        "Donec id elit non mi porta gravida at eget metus. Maecenas sed diam eget risus.",
    "last_seen": "Last seen 3 minutes ago",
  },
  {
    "title": 'Order has been delivered',
    "notify_time": "5 days ago",
    "notify_message":
        "Donec id elit non mi porta gravida at eget metus. Maecenas sed diam eget risus.",
    "last_seen": "New offer 50% discount Use Code: 54145DFL4"
  },
  {
    "title": 'Your cart has been updated',
    "notify_time": "6 days ago",
    "notify_message":
        "Donec id elit non mi porta gravida at eget metus. Maecenas sed diam eget risus.",
    "last_seen": "Make sure you have reviewed your future orders."
  },
  {
    "title": 'John accepted your request',
    "notify_time": "3 days ago",
    "notify_message":
        "Donec id elit non mi porta gravida at eget metus. Maecenas sed diam eget risus.",
    "last_seen": "Last seen 3 minutes ago",
  },
  {
    "title": 'Order has been delivered',
    "notify_time": "5 days ago",
    "notify_message":
        "Donec id elit non mi porta gravida at eget metus. Maecenas sed diam eget risus.",
    "last_seen": "New offer 50% discount Use Code: 54145DFL4"
  },
  {
    "title": 'Your cart has been updated',
    "notify_time": "6 days ago",
    "notify_message":
        "Donec id elit non mi porta gravida at eget metus. Maecenas sed diam eget risus.",
    "last_seen": "Make sure you have reviewed your future orders."
  },
  {
    "title": 'John accepted your request',
    "notify_time": "3 days ago",
    "notify_message":
        "Donec id elit non mi porta gravida at eget metus. Maecenas sed diam eget risus.",
    "last_seen": "Last seen 3 minutes ago",
  },
  {
    "title": 'Order has been delivered',
    "notify_time": "5 days ago",
    "notify_message":
        "Donec id elit non mi porta gravida at eget metus. Maecenas sed diam eget risus.",
    "last_seen": "New offer 50% discount Use Code: 54145DFL4"
  },
  {
    "title": 'Your cart has been updated',
    "notify_time": "6 days ago",
    "notify_message":
        "Donec id elit non mi porta gravida at eget metus. Maecenas sed diam eget risus.",
    "last_seen": "Make sure you have reviewed your future orders."
  },
];
void main() => runApp(Notifications(currentIndex));

class Notifications extends StatefulWidget {
  final int currentIndex; //if you have multiple values add here
  Notifications(this.currentIndex, {Key key}) : super(key: key);
  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  var width, height;
  int tabIndex = 0;

  @override
  void initState() {
    super.initState();
    print(tabIndex);
  }

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
            /*ListView.builder(
              itemCount: notifyLists.length,
              itemBuilder: (context, i) => new Column(
                children: [
                  new Divider(
                    height: 0.1,
                  ),
                  Row(
                    children: [
                      Container(
                        height: height / 3,
                        child: ListTile(
                          title: Text(notifyLists[i]['title']),
                          trailing: Text(notifyLists[i]['notify_time']),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),*/
            for (var i = 0; i < notifyLists.length; i++)
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Notificationdetails(tabIndex),
                    ),
                  );
                },
                child: Container(
                  child: Column(
                    children: [
                      ColoredBox(
                        color: Colors.white,
                        child: Column(
                          children: [
                            ListTile(
                              dense: true,
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 16.0, vertical: 0.0),
                              visualDensity:
                                  VisualDensity(horizontal: 0, vertical: -4),
                              title: Text(
                                notifyLists[i]['title'],
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff343a40),
                                ),
                              ),
                              trailing: Text(
                                notifyLists[i]['notify_time'],
                                style: TextStyle(
                                  color: Color(0xff6c757d),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(16, 0, 8, 0),
                              child: Text(
                                notifyLists[i]['notify_message'],
                                style: TextStyle(
                                  color: Color(0xff6c757d),
                                ),
                              ),
                            ),
                            SizedBox(height: 6),
                            Padding(
                              padding: EdgeInsets.fromLTRB(16, 0, 8, 0),
                              child: Container(
                                  child: Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      notifyLists[i]['last_seen'],
                                      style: TextStyle(
                                        color: Color(0xff6c757d),
                                        fontSize: 12,
                                      ),
                                    ),
                                  )
                                ],
                              )),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 1),
                    ],
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
            /*BottomNavigationBarItem(
              icon: Icon(Icons.local_mall),
              label: "Cart",
            ),*/
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
