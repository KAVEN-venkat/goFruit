import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:gofruit/pages/editprofile.dart';

void mani() => runApp(Profile());

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  var width, height;
  var tabWidgetStatus = "delivery";
  tabBarWidget() {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              new GestureDetector(
                onTap: () {
                  print("Container clicked");
                  setState(() {
                    tabWidgetStatus = 'delivery';
                  });
                },
                child: new Container(
                  //width: 500.0,
                  padding: new EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 15.0),
                  decoration: BoxDecoration(
                    color:
                        (tabWidgetStatus == 'delivery') ? Colors.white : null,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                  ),
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Color(0xff28a745),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: new Icon(
                          Icons.card_giftcard,
                          color: Colors.white,
                          size: 18,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(4, 0, 4, 0),
                        child: new Text("Today\'s Delivery"),
                      ),
                    ],
                  ),
                ),
              ),
              new GestureDetector(
                onTap: () {
                  print("Container clicked");
                  setState(() {
                    tabWidgetStatus = 'bookings';
                  });
                },
                child: new Container(
                  //width: 500.0,
                  padding: new EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 15.0),
                  decoration: BoxDecoration(
                    color:
                        (tabWidgetStatus == 'bookings') ? Colors.white : null,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                  ),
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Color(0xffffc107),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: new Icon(
                          Icons.payment,
                          color: Colors.white,
                          size: 18,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(4, 0, 4, 0),
                        child: new Text("Future Bookings"),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  deliveryWidget() {
    return Padding(
      padding: new EdgeInsets.fromLTRB(24.0, 0.0, 24.0, 0.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular((tabWidgetStatus == 'delivery') ? 0 : 15),
            topRight: Radius.circular((tabWidgetStatus == 'bookings') ? 0 : 15),
            bottomLeft: Radius.circular(15),
            bottomRight: Radius.circular(15),
          ),
        ),
        child: Column(
          children: [
            for (var j = 0; j < 4; j++)
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xffeef2f5),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 40,
                        child: ListTile(
                          visualDensity:
                              VisualDensity(horizontal: 0, vertical: -4),
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              new Text(
                                "Orange 1kg at \$ 152.00",
                                style: TextStyle(
                                  color: Color(0xff212529),
                                  fontSize: 14.0,
                                ),
                              ),
                              GestureDetector(
                                child: Text(
                                  "Track",
                                  style: TextStyle(
                                    color: Color(0xffFF0068),
                                  ),
                                ),
                                onTap: () {
                                  print("Track");
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  bookingWidget() {
    return Padding(
      padding: new EdgeInsets.fromLTRB(24.0, 0.0, 24.0, 0.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular((tabWidgetStatus == 'delivery') ? 0 : 15),
            topRight: Radius.circular((tabWidgetStatus == 'bookings') ? 0 : 15),
            bottomLeft: Radius.circular(15),
            bottomRight: Radius.circular(15),
          ),
        ),
        child: Column(
          children: [
            for (var j = 0; j < 4; j++)
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xffeef2f5),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 40,
                        child: ListTile(
                          visualDensity:
                              VisualDensity(horizontal: 0, vertical: -4),
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              new Text(
                                "Orange 1kg at \$ 150.00",
                                style: TextStyle(
                                  color: Color(0xff212529),
                                  fontSize: 14.0,
                                ),
                              ),
                              GestureDetector(
                                child: Text(
                                  "Track",
                                  style: TextStyle(
                                    color: Color(0xffFF0068),
                                  ),
                                ),
                                onTap: () {
                                  print("Track");
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Column(
        children: [
          Center(
            child: CircleAvatar(
              backgroundColor: Color(0xffFF0068),
              radius: 90.0,
              child: ClipOval(
                child: Image.asset(
                  'assets/img/user1.png',
                  width: 160,
                ),
              ),
            ),
          ),
          Text(
            "Ammy Jahnson",
            style: TextStyle(
              color: Color(0xff212529),
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Sydney, Australia',
            style: TextStyle(
              color: Color(0xff6c757d),
              fontSize: 14,
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.fromLTRB(8, 12, 8, 12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0xffFF0068),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(
                      Icons.account_balance_wallet,
                      color: Colors.white,
                      size: 25,
                    ),
                  ),
                  Container(
                    width: 115,
                    child: Column(
                      children: [
                        Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                width: 115,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(5, 0, 0, 0),
                                  child: Text(
                                    "Balance Available",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: Color(0xff6c757d),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                width: 115,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(5, 0, 0, 0),
                                  child: Text(
                                    "\$ 2585",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: Color(0xff343a40),
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
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
          ),
          SizedBox(height: 10),
          tabBarWidget(),
          (tabWidgetStatus == 'delivery') ? deliveryWidget() : bookingWidget(),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Contact Information",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Email"),
                    Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            width: 210,
                            child: Text("ammyjohnson@maxartkiller.com"),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Phone"),
                    Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            width: 210,
                            child: Text("55 5555 555555 55"),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Address",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    child: Column(
                      children: [
                        Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                width: width,
                                child: Text("58, Lajpat Nagar,"),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                width: width,
                                child: Text("Holand Street four,"),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                width: width,
                                child: Text("Sydney - 25468"),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                width: width,
                                child: Text("Australia"),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: TextButton(
              style: TextButton.styleFrom(
                primary: Colors.white,
                textStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
                backgroundColor: Color(0xff343a40),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => Editprofile(3),
                  ),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Edit Profile".toUpperCase(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 40),
        ],
      ),
    );
  }
}
