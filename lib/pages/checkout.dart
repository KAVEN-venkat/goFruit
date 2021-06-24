import 'package:flutter/material.dart';
import 'package:gofruit/pages/cart.dart';
import 'package:gofruit/pages/home.dart';
import 'package:gofruit/pages/thankyou.dart';
import 'package:gofruit/widgets/drawer_widget.dart';
import 'package:badges/badges.dart';

final int currentIndex = 0;
void main() => runApp(Checkout(currentIndex));

class Checkout extends StatefulWidget {
  final int currentIndex; //if you have multiple values add here
  Checkout(this.currentIndex, {Key key}) : super(key: key);
  @override
  _CheckoutState createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout>
    with SingleTickerProviderStateMixin {
  TabController _controller;
  var width, height;
  int tabIndex = 0;
  var checkoutFormKey = GlobalKey<FormState>();
  var cardHolderName = "Ammy Johnson";
  var cardNumber = "D000 000O  0000 O000";
  var cvv = "154";
  var expiryMonth = "05";
  var expiryYear = "2025";
  var country = "Australia";
  void submit() {
    print("Profile Form clicked");
    final isValid = checkoutFormKey.currentState.validate();
    if (!isValid) {
      return;
    }
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) => Thankyou(3),
      ),
    );
    checkoutFormKey.currentState.save();
  }

  void initState() {
    super.initState();
    print(tabIndex);
    _controller = new TabController(length: 2, vsync: this);
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
              //margin: EdgeInsets.all(12),
              padding: EdgeInsets.all(10),
              width: width / 0.95,
              decoration: BoxDecoration(
                //color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  Container(
                    width: width / 0.95,
                    height: height / 8,
                    padding: EdgeInsets.fromLTRB(0, 16, 0, 16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
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
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                "\$ 360.00",
                                style: TextStyle(
                                  fontSize: 20,
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
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                "\$ 40.00",
                                style: TextStyle(
                                  fontSize: 20,
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
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                "- \$ 100.00",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    //margin: EdgeInsets.fromLTRB(12, 0, 12, 0),
                    padding: EdgeInsets.fromLTRB(0, 16, 0, 16),
                    width: width / 0.95,
                    //height: height / 4,
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
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Pay with",
                          style: TextStyle(
                            color: Color(0xff6c757d),
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                  DefaultTabController(
                    length: _controller.length,
                    initialIndex: 0,
                    child: Column(
                      children: [
                        Container(
                          height: 32,
                          decoration: new BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white,
                          ),
                          child: new TabBar(
                            controller: _controller,
                            unselectedLabelColor: Color(0xFF999999),
                            labelColor: const Color(0xFFFF0068),
                            //indicatorColor: Color(0xffFF0068),
                            indicator: BoxDecoration(
                              color: Color(0xffFFE5F0),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            tabs: [
                              new Tab(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: Text(
                                        'Credit Card'.toUpperCase(),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              new Tab(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: Text(
                                        'Paypal'.toUpperCase(),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 600,
                          child: new TabBarView(
                            controller: _controller,
                            children: <Widget>[
                              new Container(
                                child: Form(
                                  key: checkoutFormKey,
                                  child: Padding(
                                    padding: EdgeInsets.all(8),
                                    child: Column(
                                      children: [
                                        TextFormField(
                                          decoration: InputDecoration(
                                            labelText: 'Card Holder Name',
                                            focusColor: Colors.green,
                                            focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xffFF0068),
                                              ),
                                            ),
                                          ),
                                          keyboardType: TextInputType.text,
                                          onFieldSubmitted: (value) {
                                            //Validator
                                          },
                                          initialValue: cardHolderName,
                                          validator: (value) {
                                            if (value.isEmpty) {
                                              return 'Enter a name!';
                                            }
                                            return null;
                                          },
                                        ),
                                        TextFormField(
                                          decoration: InputDecoration(
                                            labelText: 'Card Number',
                                            focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xffFF0068),
                                              ),
                                            ),
                                          ),
                                          keyboardType: TextInputType.text,
                                          onFieldSubmitted: (value) {
                                            //Validator
                                          },
                                          initialValue: cardNumber,
                                          validator: (value) {
                                            if (value.isEmpty) {
                                              return 'Enter a card number!';
                                            }
                                            return null;
                                          },
                                        ),
                                        new Row(
                                          children: <Widget>[
                                            new Flexible(
                                              child: TextFormField(
                                                decoration: InputDecoration(
                                                  labelText: 'CVV',
                                                  focusedBorder:
                                                      UnderlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0xffFF0068),
                                                    ),
                                                  ),
                                                ),
                                                keyboardType:
                                                    TextInputType.text,
                                                onFieldSubmitted: (value) {
                                                  //Validator
                                                },
                                                initialValue: cvv,
                                                validator: (value) {
                                                  if (value.isEmpty) {
                                                    return 'Enter a cvv!';
                                                  }
                                                  return null;
                                                },
                                              ),
                                            ),
                                            new Flexible(
                                              child: TextFormField(
                                                decoration: InputDecoration(
                                                  labelText: 'Month',
                                                  focusedBorder:
                                                      UnderlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0xffFF0068),
                                                    ),
                                                  ),
                                                ),
                                                keyboardType:
                                                    TextInputType.text,
                                                onFieldSubmitted: (value) {
                                                  //Validator
                                                },
                                                initialValue: expiryMonth,
                                                validator: (value) {
                                                  if (value.isEmpty) {
                                                    return 'Enter a month!';
                                                  }
                                                  return null;
                                                },
                                              ),
                                            ),
                                            new Flexible(
                                              child: TextFormField(
                                                decoration: InputDecoration(
                                                  labelText: 'Year',
                                                  focusedBorder:
                                                      UnderlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0xffFF0068),
                                                    ),
                                                  ),
                                                ),
                                                keyboardType:
                                                    TextInputType.text,
                                                onFieldSubmitted: (value) {
                                                  //Validator
                                                },
                                                initialValue: expiryYear,
                                                validator: (value) {
                                                  if (value.isEmpty) {
                                                    return 'Enter a year!';
                                                  }
                                                  return null;
                                                },
                                              ),
                                            ),
                                          ],
                                        ),
                                        DropdownButton<String>(
                                          isExpanded: true,
                                          hint: Text("Country"),
                                          value: country,
                                          items: <String>[
                                            'Australia',
                                            'America',
                                            'Africa',
                                            'France'
                                          ].map((String value) {
                                            return new DropdownMenuItem<String>(
                                              value: value,
                                              child: new Text(value),
                                            );
                                          }).toList(),
                                          onChanged: (String val) {
                                            setState(() {
                                              country = val;
                                            });
                                          },
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 4),
                                          child: TextButton(
                                            style: TextButton.styleFrom(
                                              primary: Colors.white,
                                              textStyle: TextStyle(
                                                color: Colors.black,
                                                fontSize: 20,
                                              ),
                                              backgroundColor:
                                                  Color(0xffFF0068),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                              ),
                                            ),
                                            onPressed: () {
                                              submit();
                                            },
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: <Widget>[
                                                Text(
                                                  "Pay Now".toUpperCase(),
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 16,
                                                  ),
                                                ),
                                                Icon(
                                                  Icons.arrow_forward,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              new Container(
                                child: new Text('Paypal'),
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
