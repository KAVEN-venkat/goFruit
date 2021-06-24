import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:gofruit/widgets/drawer_widget.dart';
import 'package:gofruit/pages/home.dart';

final int currentIndex = 0;
void main() => runApp(Cart(currentIndex));

class Cart extends StatefulWidget {
  final int currentIndex; //if you have multiple values add here
  Cart(this.currentIndex, {Key key}) : super(key: key);
  @override
  _CartState createState() => _CartState();
}

final List<Map> cartProducts = [
  {
    "product_image": 'assets/img/apple.png',
    "product_name": "Red Apple",
    "price": 120.00,
    "qty": 1.0,
    "offer": 10
  },
  {
    "product_image": 'assets/img/grapes2.png',
    "product_name": "Green Grapes",
    "price": 120.00,
    "qty": 1.0,
    "offer": 10
  },
  {
    "product_image": 'assets/img/orange-2.png',
    "product_name": "Orange",
    "price": 120.00,
    "qty": 1.0,
    "offer": 10
  },
];

class _CartState extends State<Cart> {
  var width, height;
  int itemCount = 0;
  int tabIndex = 0;
  var couponFormKey = GlobalKey<FormState>();
  var coupon = 'ADU00548DOU';
  void submit() {
    print("Coupon Form clicked");
    final isValid = couponFormKey.currentState.validate();
    if (!isValid) {
      return;
    }
    couponFormKey.currentState.save();
  }

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
            Row(
              children: <Widget>[
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    margin: EdgeInsets.only(left: 15),
                    child: Text(
                      "My Cart",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Color(0xff212529),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    margin: EdgeInsets.only(left: 15),
                    child: Text(
                      "3 Items",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Color(0xff212529),
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            for (var i = 0; i < 3; i++)
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    top: BorderSide(width: 0.0, color: Color(0xffE3EAF1)),
                    bottom: BorderSide(width: 1.0, color: Color(0xffE3EAF1)),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.remove_circle,
                      color: Color(0xffFF0068),
                    ),
                    SizedBox(width: 5),
                    Image.asset(
                      cartProducts[i]['product_image'],
                      width: 45,
                    ),
                    SizedBox(width: 5),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 6, vertical: 6),
                      width: 150,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                cartProducts[i]["product_name"],
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          //SizedBox(height: 6),
                          Container(
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "\$ " + cartProducts[i]["price"].toString(),
                                style: TextStyle(
                                  color: Color(0xff00BE7D),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          //SizedBox(height: 6),
                          Container(
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Row(
                                //mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    cartProducts[i]["qty"].toString() + " kg",
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(width: 20),
                                  Text(
                                    cartProducts[i]["offer"].toString() +
                                        "% off",
                                    style: TextStyle(
                                      color: Color(0xff00BE7D),
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 105,
                      height: 32,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        children: <Widget>[
                          /*itemCount != 0
                          ? new IconButton(
                              icon: new Icon(Icons.remove),
                              onPressed: () => setState(() => itemCount--),
                            )
                          : new Container(),*/
                          Container(
                            width: 32,
                            decoration: BoxDecoration(
                              color: Color(0xffE3EAF1),
                              borderRadius: BorderRadius.only(
                                topLeft: const Radius.circular(30.0),
                                bottomLeft: const Radius.circular(30.0),
                              ),
                            ),
                            child: IconButton(
                              icon: new Icon(
                                Icons.remove,
                                size: 14,
                              ),
                              onPressed: () => setState(() => itemCount--),
                            ),
                          ),
                          Container(
                            width: 28,
                            child: Text(
                              itemCount.toString(),
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 14,
                                backgroundColor: Colors.white,
                              ),
                            ),
                          ),
                          Container(
                            width: 32,
                            decoration: BoxDecoration(
                              color: Color(0xffE3EAF1),
                              borderRadius: BorderRadius.only(
                                topRight: const Radius.circular(30.0),
                                bottomRight: const Radius.circular(30.0),
                              ),
                            ),
                            child: IconButton(
                                icon: Icon(
                                  Icons.add,
                                  size: 14,
                                ),
                                onPressed: () => setState(() => itemCount++)),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            Container(
              margin: EdgeInsets.all(12),
              padding: EdgeInsets.all(10),
              width: width / 0.95,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: FloatingActionButton(
                          onPressed: null,
                          child: Icon(Icons.local_activity),
                          backgroundColor: Color(0xff28a745),
                        ),
                      ),
                      Container(
                        width: width / 2,
                        child: Form(
                          key: couponFormKey,
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 30),
                                child: TextFormField(
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    color: Color(0xffbbbbbb),
                                  ),
                                  decoration: InputDecoration(
                                    labelText: 'Apply Coupon Code',
                                    labelStyle: TextStyle(
                                      color: Color(0xff495057),
                                    ),
                                  ),
                                  keyboardType: TextInputType.emailAddress,
                                  onFieldSubmitted: (value) {
                                    //Validator
                                  },
                                  initialValue: coupon,
                                  validator: (value) {
                                    if (value.isEmpty) {
                                      return 'Enter a coupon!';
                                    }
                                    return null;
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: FloatingActionButton(
                          mini: true,
                          onPressed: () {
                            submit();
                          },
                          child: Icon(Icons.arrow_forward),
                          backgroundColor: Color(0xffFF0068),
                        ),
                      ),
                    ],
                  ),
                  //SizedBox(height: 5),
                  DottedBorder(
                    dashPattern: [8, 4],
                    color: Color(0xffe3ead7),
                    customPath: (size) {
                      return Path()
                        ..moveTo(0, 20)
                        ..lineTo(size.width, 20);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(),
                    ),
                  ),
                  //SizedBox(height: 5),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          child: Column(
                            children: [
                              Text(
                                "Sub Total",
                                style: TextStyle(
                                  color: Color(0xff6c757d),
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                "\$ 360.00",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              Text(
                                "Tax",
                                style: TextStyle(
                                  color: Color(0xff6c757d),
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                "\$ 40.00",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              Text(
                                "Discount",
                                style: TextStyle(
                                  color: Color(0xff6c757d),
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                "- \$ 100.00",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  DottedBorder(
                    dashPattern: [8, 4],
                    color: Color(0xffe3ead7),
                    customPath: (size) {
                      return Path()
                        ..moveTo(0, 20)
                        ..lineTo(size.width, 20);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(12, 0, 12, 0),
                    padding: EdgeInsets.all(20),
                    width: width / 0.95,
                    height: height / 4,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        Center(
                          child: Text(
                            "Net Payable",
                            style: TextStyle(
                              color: Color(0xff6c757d),
                              fontSize: 18,
                            ),
                          ),
                        ),
                        Center(
                          child: Text(
                            "\$ 400.00",
                            style: TextStyle(
                              fontSize: 36,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        TextButton(
                          style: TextButton.styleFrom(
                            primary: Colors.white,
                            textStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            ),
                            backgroundColor: Color(0xffFF0068),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          onPressed: () => null,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text(
                                "CHECKOUT",
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
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 40),
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
