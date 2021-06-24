import 'package:flutter/material.dart';
import 'package:gofruit/modals/product_modal.dart';
import 'package:gofruit/pages/cart.dart';
import 'package:gofruit/pages/home.dart';
import 'package:gofruit/pages/productdetails.dart';
import 'package:gofruit/widgets/drawer_widget.dart';

final int currentIndex = 0;
void mani() => runApp(Products(currentIndex));

class Products extends StatefulWidget {
  final int currentIndex; //if you have multiple values add here
  Products(this.currentIndex, {Key key}) : super(key: key);
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var width, height;
  int tabIndex = 0;
  var productView = 'grid';
  search() {
    return Container(
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: 'Search',
          contentPadding:
              const EdgeInsets.only(left: 14.0, bottom: 8.0, top: 13.0),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(25.7),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(25.7),
          ),
          suffixIcon: Icon(Icons.search),
        ),
      ),
    );
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
            Padding(
              padding: EdgeInsets.fromLTRB(14, 0, 14, 7),
              child: search(),
            ),
            SizedBox(height: 10),
            Row(
              children: <Widget>[
                Wrap(
                  runSpacing: 130.0,
                  spacing: 130.0,
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              margin: EdgeInsets.only(left: 15),
                              child: Text(
                                "All fresh fruits",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Color(0xff212529),
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              //margin: EdgeInsets.only(left: 15),
                              child: Text(
                                "2154 products",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Color(0xff212529),
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      //width: 90,
                      //padding: EdgeInsets.fromLTRB(8, 4, 8, 4),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Wrap(
                        //runSpacing: 5.0,
                        //spacing: 5.0,
                        children: [
                          Container(
                            width: 50,
                            padding: EdgeInsets.fromLTRB(4, 4, 4, 4),
                            decoration: BoxDecoration(
                              color: (productView == 'grid')
                                  ? Color(0xffFFE5F0)
                                  : Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                bottomLeft: Radius.circular(30),
                              ),
                            ),
                            child: GestureDetector(
                              child: Icon(
                                Icons.view_module,
                                size: 24,
                                color: (productView == 'grid')
                                    ? Color(0xffFF0068)
                                    : Color(0xff999999),
                              ),
                              onTap: () {
                                setState(() {
                                  productView = 'grid';
                                });
                              },
                            ),
                          ),
                          Container(
                              width: 50,
                              padding: EdgeInsets.fromLTRB(4, 4, 4, 4),
                              decoration: BoxDecoration(
                                color: (productView == 'list')
                                    ? Color(0xffFFE5F0)
                                    : Colors.white,
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(30),
                                  bottomRight: Radius.circular(30),
                                ),
                              ),
                              child: GestureDetector(
                                child: Icon(
                                  Icons.view_list,
                                  color: (productView == 'list')
                                      ? Color(0xffFF0068)
                                      : Color(0xff999999),
                                ),
                                onTap: () {
                                  setState(() {
                                    productView = 'list';
                                  });
                                },
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),
            (productView == 'grid')
                ? GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Productdetails(tabIndex),
                        ),
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.all(10.0),
                      child: GridView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 0.75,
                          mainAxisSpacing: 10.0,
                          crossAxisSpacing: 10.0,
                        ),
                        itemCount: productsData.length,
                        itemBuilder: (context, index) {
                          return Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              children: [
                                SizedBox(height: 10),
                                Wrap(
                                  spacing: 60.0,
                                  runSpacing: 30.0,
                                  children: [
                                    Icon(
                                      Icons.favorite_outline,
                                      size: 16,
                                      color: Color(0xffFF0068),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(
                                          left: 6, top: 3, right: 6, bottom: 3),
                                      decoration: BoxDecoration(
                                        color: (productsData[index]
                                                    .offerColor ==
                                                'green')
                                            ? Color(0xff00BE7D)
                                            : (productsData[index].offerColor ==
                                                    'blue')
                                                ? Color(0xff0D76FF)
                                                : Color(0xff17a2b8),
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                      child: Text(
                                        "10% Off",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 10,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Image.asset(
                                  productsData[index].image,
                                  height: 80,
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 18),
                                    child: Text(
                                      productsData[index].productname,
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 18),
                                    child: Text(
                                      productsData[index].importedFrom,
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                                Wrap(
                                  spacing: 35.0,
                                  runSpacing: 15.0,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(
                                          left: 6, top: 3, right: 6, bottom: 0),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 10),
                                            child: Text(
                                              "\$ " +
                                                  productsData[index]
                                                      .price
                                                      .toString(),
                                              style: TextStyle(
                                                color: Color(0xff00BE7D),
                                                fontSize: 15,
                                              ),
                                            ),
                                          ),
                                          Text(
                                            productsData[index].qty.toString() +
                                                " KG",
                                            style: TextStyle(
                                              color: Color(0xff6c757d),
                                              fontSize: 12,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    ElevatedButton(
                                      onPressed: () {},
                                      child: Icon(
                                        Icons.shopping_cart,
                                        color: Colors.white,
                                        size: 18.0,
                                      ),
                                      style: ElevatedButton.styleFrom(
                                        shape: CircleBorder(),
                                        primary: Color(0xffFF0068),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  )
                : Container(
                    width: width,
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        for (var l = 0; l < productsData.length; l++)
                          Container(
                            width: width,
                            child: Card(
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                children: [
                                  new ListTile(
                                    leading: ConstrainedBox(
                                      constraints: BoxConstraints(
                                        minWidth: 45,
                                        minHeight: 50,
                                        maxWidth: 55,
                                        maxHeight: 60,
                                      ),
                                      child: Image.asset(
                                        productsData[l].image,
                                        fit: BoxFit.fitWidth,
                                      ),
                                    ),
                                    title: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        new Text(
                                          productsData[l].productname,
                                          style: TextStyle(
                                            color: Color(0xff343a40),
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        GestureDetector(
                                          child: Icon(
                                            Icons.favorite_outline,
                                            size: 16,
                                            color: Color(0xffFF0068),
                                          ),
                                          onTap: () {
                                            print("Favorites");
                                          },
                                        )
                                      ],
                                    ),
                                    subtitle: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          children: [
                                            Column(
                                              children: [
                                                Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: SizedBox(
                                                    width: 180,
                                                    child: Container(
                                                      child: Text(
                                                        productsData[l]
                                                            .importedFrom,
                                                        style: TextStyle(
                                                          fontSize: 15.0,
                                                          color: Colors.grey,
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
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: SizedBox(
                                                    width: 180,
                                                    child: Container(
                                                      child: Row(
                                                        children: [
                                                          Text(
                                                            '\$ ' +
                                                                productsData[l]
                                                                    .price
                                                                    .toString(),
                                                            style: TextStyle(
                                                              color: Color(
                                                                  0xff00BE7D),
                                                              fontSize: 18.0,
                                                            ),
                                                          ),
                                                          SizedBox(width: 10),
                                                          Container(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 6,
                                                                    top: 3,
                                                                    right: 6,
                                                                    bottom: 3),
                                                            decoration:
                                                                BoxDecoration(
                                                              color: (productsData[
                                                                              l]
                                                                          .offerColor ==
                                                                      'green')
                                                                  ? Color(
                                                                      0xff00BE7D)
                                                                  : (productsData[l]
                                                                              .offerColor ==
                                                                          'blue')
                                                                      ? Color(
                                                                          0xff0D76FF)
                                                                      : Color(
                                                                          0xff17a2b8),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          30),
                                                            ),
                                                            child: Text(
                                                              "10% Off",
                                                              style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 10,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                            Column(
                                              children: <Widget>[
                                                Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: SizedBox(
                                                    width: 180,
                                                    child: Container(
                                                      child: Text(
                                                        productsData[l]
                                                                .qty
                                                                .toString() +
                                                            " kg",
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        /*Positioned(
                                          left: 10.0,
                                          //top: 20.0,
                                          child: Container(
                                            width: 36,
                                            height: 36,
                                            decoration: BoxDecoration(
                                              color: Color(0xffFF0068),
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                            ),
                                            child: new IconButton(
                                              icon: new Icon(
                                                Icons.shopping_cart,
                                                color: Colors.white,
                                                size: 18,
                                              ),
                                              onPressed: null,
                                            ),
                                          ),
                                        ),*/
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
            SizedBox(height: (productView == 'grid') ? 30 : 0),
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
