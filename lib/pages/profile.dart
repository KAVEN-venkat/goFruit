import 'package:flutter/material.dart';

void mani() => runApp(Profile());

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  var width, height;
  tabBarWidget() {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton.icon(
                label: Text('Today\'s Delivery'),
                icon: Icon(
                  Icons.card_giftcard,
                  color: Colors.white,
                ),
                onPressed: () {
                  print('Pressed');
                },
                style: ButtonStyle(
                  padding:
                      MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(15)),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Color(0xff6c757d)),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                      ),
                      side: BorderSide(color: Colors.white),
                    ),
                  ),
                ),
              ),
              TextButton.icon(
                label: Text('Future Bookings'),
                icon: Icon(Icons.payment),
                onPressed: () {
                  print('Pressed');
                },
              ),
            ],
          )
        ],
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
          //tabBarWidget(),
        ],
      ),
    );
  }
}
