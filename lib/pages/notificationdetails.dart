import 'package:flutter/material.dart';
import 'package:gofruit/pages/home.dart';
import 'package:gofruit/pages/cart.dart';
import 'package:gofruit/pages/notification.dart';
import 'package:gofruit/widgets/drawer_widget.dart';

final int currentIndex = 0;
void main() => runApp(Notificationdetails(currentIndex));

class Notificationdetails extends StatefulWidget {
  final int currentIndex; //if you have multiple values add here
  Notificationdetails(this.currentIndex, {Key key}) : super(key: key);
  @override
  _NotificationdetailsState createState() => _NotificationdetailsState();
}

class _NotificationdetailsState extends State<Notificationdetails> {
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
                icon: Icon(
                  Icons.navigate_before,
                  color: Color(0xff121416),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Notifications(tabIndex),
                    ),
                  );
                },
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
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 45,
                child: ClipOval(
                  child: Image.asset(
                    'assets/img/user1.png',
                    width: 50,
                  ),
                ),
              ),
              title: Text(
                'John Jakson',
                style: TextStyle(
                  color: Color(0xff343a40),
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                ),
              ),
              subtitle: Text(
                'Accepted your request',
                style: TextStyle(
                  color: Color(0xff343a40),
                  fontSize: 14,
                ),
              ),
              trailing: Text(
                "3 days ago",
                style: TextStyle(
                  color: Color(0xff6c757d),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    width: 0.5,
                    color: Colors.black38,
                  ),
                ),
              ),
              padding: EdgeInsets.all(20),
              child: Text(
                "Donec id elit non mi porta gravida at eget metus. Maecenas sed diam eget risus.onec id elit non mi porta gravida at eget metus. Maecenas sed diam eget risus.onec id elit non mi porta gravida at eget metus. Maecenas sed diam eget risus.onec id elit non mi porta gravida at eget metus. Maecenas sed diam eget risus.onec id elit non mi porta gravida at eget metus. Maecenas sed diam eget risus.",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color(0xff6c757d),
                  fontSize: 16,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Last seen 3 minutes ago",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color(0xff6c757d),
                  fontSize: 12,
                ),
              ),
            )
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
