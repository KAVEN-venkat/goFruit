import 'package:flutter/material.dart';
import 'package:gofruit/modals/product_modal.dart';

final List<Map> newsList = [
  {
    "url": 'assets/img/fresh-orange-juice.jpg',
    "content": 'Multipurpose Juice allows you to grow faster',
    "author": 'By Anand Mangal'
  },
  {
    "url": 'assets/img/orange-juice.jpg',
    "content": 'Multipurpose Juice allows you to grow faster',
    "author": 'By Anand Mangal'
  },
  {
    "url": 'assets/img/fresh-orange-juice.jpg',
    "content": 'Multipurpose Juice allows you to grow faster',
    "author": 'By Anand Mangal'
  },
  {
    "url": 'assets/img/orange-juice.jpg',
    "content": 'Multipurpose Juice allows you to grow faster',
    "author": 'By Anand Mangal'
  },
  {
    "url": 'assets/img/fresh-orange-juice.jpg',
    "content": 'Multipurpose Juice allows you to grow faster',
    "author": 'By Anand Mangal'
  },
  {
    "url": 'assets/img/orange-juice.jpg',
    "content": 'Multipurpose Juice allows you to grow faster',
    "author": 'By Anand Mangal'
  },
];
final List<Map> featureList = [
  {"iconType": 'card_giftcard', "featureNo": 2546, "featureMsg": 'Gift it out'},
  {
    "iconType": 'subscriptions',
    "featureNo": 635,
    "featureMsg": 'Monthly Billed'
  },
  {
    "iconType": 'local_florist',
    "featureNo": 1542,
    "featureMsg": 'Eco environment'
  },
  {"iconType": 'location_city', "featureNo": 154, "featureMsg": 'Four Offices'},
];

void main() => runApp(Store());

class Store extends StatefulWidget {
  @override
  _StoreState createState() => _StoreState();
}

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

Widget categoryWidget() {
  return Container(
    height: 140,
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: [
        SizedBox(width: 15),
        Container(
          width: 140,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Stack(
            alignment: Alignment.topCenter,
            clipBehavior: Clip.none,
            children: [
              Positioned(
                top: -45.0,
                left: 0.0,
                right: -80,
                child: Image.asset(
                  'assets/img/orange.png',
                  width: 100,
                ),
              ),
              Container(
                width: 100,
                margin: EdgeInsets.only(right: 30),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 70, top: 10, bottom: 10),
                      child: Icon(
                        Icons.favorite_outline,
                        color: Color(0xffFF0068),
                        size: 16,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 50),
                      child: Text(
                        'Citrus',
                        style: TextStyle(
                          color: Color(0xff343a40),
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      width: 60,
                      margin: EdgeInsets.only(right: 24),
                      child: Text(
                        'Oranges, Grapefruit, Mandarins',
                        style: TextStyle(
                          color: Color(0xff6c757d),
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(width: 15),
        Container(
          width: 140,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Stack(
            alignment: Alignment.topCenter,
            clipBehavior: Clip.none,
            children: [
              Positioned(
                top: -45.0,
                left: 0.0,
                right: -70,
                child: Image.asset(
                  'assets/img/banana-small.png',
                  width: 100,
                ),
              ),
              Container(
                width: 100,
                margin: EdgeInsets.only(right: 30),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 70, top: 10, bottom: 10),
                      child: Icon(
                        Icons.favorite,
                        color: Color(0xffFF0068),
                        size: 16,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 50),
                      child: Text(
                        'Tropical',
                        style: TextStyle(
                          color: Color(0xff343a40),
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      width: 60,
                      margin: EdgeInsets.only(right: 24),
                      child: Text(
                        'Bananas, Mangoes',
                        style: TextStyle(
                          color: Color(0xff6c757d),
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(width: 15),
        Container(
          width: 140,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Stack(
            alignment: Alignment.topCenter,
            clipBehavior: Clip.none,
            children: [
              Positioned(
                top: -45.0,
                left: 0.0,
                right: -75,
                child: Image.asset(
                  'assets/img/grapes.png',
                  width: 100,
                ),
              ),
              Container(
                width: 100,
                margin: EdgeInsets.only(right: 30),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 70, top: 10, bottom: 10),
                      child: Icon(
                        Icons.favorite_outline,
                        color: Color(0xffFF0068),
                        size: 16,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 40),
                      child: Text(
                        'Berries',
                        style: TextStyle(
                          color: Color(0xff343a40),
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 8),
                      child: Text(
                        'Strawberries, Raspberries, Blueberries',
                        style: TextStyle(
                          color: Color(0xff6c757d),
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(width: 15),
        Container(
          width: 140,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Stack(
            alignment: Alignment.topCenter,
            clipBehavior: Clip.none,
            children: [
              Positioned(
                top: -45.0,
                left: 0.0,
                right: -80,
                child: Image.asset(
                  'assets/img/orange.png',
                  width: 100,
                ),
              ),
              Container(
                width: 100,
                margin: EdgeInsets.only(right: 30),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 70, top: 10, bottom: 10),
                      child: Icon(
                        Icons.favorite_outline,
                        color: Color(0xffFF0068),
                        size: 16,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 50),
                      child: Text(
                        'Citrus',
                        style: TextStyle(
                          color: Color(0xff343a40),
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      width: 60,
                      margin: EdgeInsets.only(right: 24),
                      child: Text(
                        'Oranges, Grapefruit, Mandarins',
                        style: TextStyle(
                          color: Color(0xff6c757d),
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(width: 15),
        Container(
          width: 140,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Stack(
            alignment: Alignment.topCenter,
            clipBehavior: Clip.none,
            children: [
              Positioned(
                top: -45.0,
                left: 0.0,
                right: -70,
                child: Image.asset(
                  'assets/img/banana-small.png',
                  width: 100,
                ),
              ),
              Container(
                width: 100,
                margin: EdgeInsets.only(right: 30),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 70, top: 10, bottom: 10),
                      child: Icon(
                        Icons.favorite,
                        color: Color(0xffFF0068),
                        size: 16,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 50),
                      child: Text(
                        'Tropical',
                        style: TextStyle(
                          color: Color(0xff343a40),
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      width: 60,
                      margin: EdgeInsets.only(right: 24),
                      child: Text(
                        'Bananas, Mangoes',
                        style: TextStyle(
                          color: Color(0xff6c757d),
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(width: 15),
        Container(
          width: 140,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Stack(
            alignment: Alignment.topCenter,
            clipBehavior: Clip.none,
            children: [
              Positioned(
                top: -45.0,
                left: 0.0,
                right: -75,
                child: Image.asset(
                  'assets/img/grapes.png',
                  width: 100,
                ),
              ),
              Container(
                width: 100,
                margin: EdgeInsets.only(right: 30),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 70, top: 10, bottom: 10),
                      child: Icon(
                        Icons.favorite_outline,
                        color: Color(0xffFF0068),
                        size: 16,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 40),
                      child: Text(
                        'Berries',
                        style: TextStyle(
                          color: Color(0xff343a40),
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 8),
                      child: Text(
                        'Strawberries, Raspberries, Blueberries',
                        style: TextStyle(
                          color: Color(0xff6c757d),
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(width: 15),
        Container(
          width: 140,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Stack(
            alignment: Alignment.topCenter,
            clipBehavior: Clip.none,
            children: [
              Positioned(
                top: -45.0,
                left: 0.0,
                right: -80,
                child: Image.asset(
                  'assets/img/orange.png',
                  width: 100,
                ),
              ),
              Container(
                width: 100,
                margin: EdgeInsets.only(right: 30),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 70, top: 10, bottom: 10),
                      child: Icon(
                        Icons.favorite_outline,
                        color: Color(0xffFF0068),
                        size: 16,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 50),
                      child: Text(
                        'Citrus',
                        style: TextStyle(
                          color: Color(0xff343a40),
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      width: 60,
                      margin: EdgeInsets.only(right: 24),
                      child: Text(
                        'Oranges, Grapefruit, Mandarins',
                        style: TextStyle(
                          color: Color(0xff6c757d),
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(width: 15),
        Container(
          width: 140,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Stack(
            alignment: Alignment.topCenter,
            clipBehavior: Clip.none,
            children: [
              Positioned(
                top: -45.0,
                left: 0.0,
                right: -70,
                child: Image.asset(
                  'assets/img/banana-small.png',
                  width: 100,
                ),
              ),
              Container(
                width: 100,
                margin: EdgeInsets.only(right: 30),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 70, top: 10, bottom: 10),
                      child: Icon(
                        Icons.favorite,
                        color: Color(0xffFF0068),
                        size: 16,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 50),
                      child: Text(
                        'Tropical',
                        style: TextStyle(
                          color: Color(0xff343a40),
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      width: 60,
                      margin: EdgeInsets.only(right: 24),
                      child: Text(
                        'Bananas, Mangoes',
                        style: TextStyle(
                          color: Color(0xff6c757d),
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(width: 15),
        Container(
          width: 140,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Stack(
            alignment: Alignment.topCenter,
            clipBehavior: Clip.none,
            children: [
              Positioned(
                top: -45.0,
                left: 0.0,
                right: -75,
                child: Image.asset(
                  'assets/img/grapes.png',
                  width: 100,
                ),
              ),
              Container(
                width: 100,
                margin: EdgeInsets.only(right: 30),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 70, top: 10, bottom: 10),
                      child: Icon(
                        Icons.favorite_outline,
                        color: Color(0xffFF0068),
                        size: 16,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 40),
                      child: Text(
                        'Berries',
                        style: TextStyle(
                          color: Color(0xff343a40),
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 8),
                      child: Text(
                        'Strawberries, Raspberries, Blueberries',
                        style: TextStyle(
                          color: Color(0xff6c757d),
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget productWidget(width, height) {
  return GridView.count(
    crossAxisCount: 2,
    children: List.generate(
      6,
      (index) {
        return Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  Wrap(
                    children: [
                      Icon(
                        Icons.favorite_outline,
                        size: 16,
                        color: Color(0xffFF0068),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            left: 6, top: 3, right: 6, bottom: 0),
                        decoration: BoxDecoration(
                          color: Color(0xff00BE7D),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Text("10% Off"),
                      )
                    ],
                  ),
                  Image.asset(
                    'assets/img/apple.png',
                    width: width * 0.235,
                  ),
                  Text("Red Apple"),
                  Text("Imported Simla"),
                ],
              ),
            ),
          ),
        );
      },
    ),
  );
}

Widget adsWidget(width, height) {
  return Container(
    width: double.infinity,
    padding: EdgeInsets.only(top: 10, bottom: 10),
    decoration: BoxDecoration(
      color: Color(0xffFFC400),
    ),
    child: Column(
      children: [
        Wrap(
          runSpacing: 5.0,
          spacing: 5.0,
          children: [
            Container(
              width: width * 0.5,
              margin: EdgeInsets.only(top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "20% OFF SEASON SALE",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Use Coupan Code",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'DFR0020',
                    style: TextStyle(
                      color: Color(0xff343a40),
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 20),
              child: Image.asset(
                'assets/img/banana.png',
                width: width * 0.35,
              ),
            ),
          ],
        ),
        SizedBox(height: 20),
        Text(
          "Get the all new fresh bananas at very low price",
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
          ),
        ),
        SizedBox(height: 30),
      ],
    ),
  );
}

newsUpdates() {
  return Container(
    height: 180,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: newsList.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            SizedBox(width: 15),
            Container(
              width: 180,
              // decoration: BoxDecoration(
              //   color: Colors.white,
              //   borderRadius: BorderRadius.circular(15),
              // ),
              child: Stack(
                alignment: Alignment.topCenter,
                clipBehavior: Clip.none,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Image.asset(
                      newsList[index]['url'],
                      width: 150,
                      height: 150,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Container(
                    width: 150,
                    height: 150,
                    margin: EdgeInsets.only(right: 0),
                    decoration: BoxDecoration(
                      color: Color(0xff343a40).withOpacity(0.5),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: double.infinity,
                            child: Text(
                              newsList[index]['content'],
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Container(
                            width: double.infinity,
                            margin: EdgeInsets.only(right: 50),
                            child: Text(
                              newsList[index]['author'],
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: FloatingActionButton(
                            mini: true,
                            onPressed: null,
                            elevation: 2.0,
                            backgroundColor: Color(0xffFF0068),
                            child: Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                              size: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 15),
          ],
        );
      },
    ),
  );
}

class _StoreState extends State<Store> {
  var width, height;
  List categories = [
    'Fresh',
    '100 - 299',
    '600+',
    '300 - 599',
    'Deliver Today'
  ];
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(14, 0, 14, 7),
            child: search(),
          ),
          SizedBox(height: 10),
          Row(
            children: <Widget>[
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: EdgeInsets.only(left: 15),
                  child: Text(
                    "Categories",
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
          SizedBox(height: 10),
          categoryWidget(),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Products",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color(0xff212529),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "View All",
                ),
              ),
              /*Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: EdgeInsets.only(left: 15),
                  child: Text(
                    "Products",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color(0xff212529),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),*/
            ],
          ),
          SizedBox(height: 10),
          Container(
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
                              color: (productsData[index].offerColor == 'green')
                                  ? Color(0xff00BE7D)
                                  : (productsData[index].offerColor == 'blue')
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
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(
                                    "\$ " +
                                        productsData[index].price.toString(),
                                    style: TextStyle(
                                      color: Color(0xff00BE7D),
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                                Text(
                                  productsData[index].qty.toString() + " KG",
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
          adsWidget(width, height),
          SizedBox(height: 10),
          Row(
            children: <Widget>[
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: EdgeInsets.only(left: 15),
                  child: Text(
                    "Are you looking for:",
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
          SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.all(10.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Wrap(
                direction: Axis.horizontal,
                alignment: WrapAlignment.spaceEvenly,
                spacing: 30,
                runSpacing: 5,
                children: [
                  for (var category in categories)
                    DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(20, 4, 20, 4),
                          child: Text(
                            category,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xff999999),
                            ),
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10),
          Row(
            children: <Widget>[
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: EdgeInsets.only(left: 15),
                  child: Text(
                    "News Updates",
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
          SizedBox(height: 10),
          newsUpdates(),
          SizedBox(height: 10),
          Center(
            child: Text(
              "Most Exciting Feature",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xff212529),
                fontSize: 13,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Center(
            child: Text(
              "Take a look at our services",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xff6c757d),
                fontSize: 13,
              ),
            ),
          ),
          SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.all(10.0),
            child: GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1.1,
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
              ),
              itemCount: featureList.length,
              itemBuilder: (context, index) {
                return Container(
                  width: double.infinity,
                  height: 160,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: Column(
                      children: [
                        SizedBox(height: 10),
                        Icon(
                          (featureList[index]['iconType'] == 'card_giftcard')
                              ? Icons.card_giftcard
                              : (featureList[index]['iconType'] ==
                                      'subscriptions')
                                  ? Icons.subscriptions
                                  : (featureList[index]['iconType'] ==
                                          'local_florist')
                                      ? Icons.local_florist
                                      : Icons.location_city,
                          color: Color(0xffFF0068),
                          size: 50,
                        ),
                        SizedBox(height: 10),
                        Text(
                          featureList[index]['featureNo'].toString(),
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          featureList[index]['featureMsg'],
                          style: TextStyle(
                            color: Color(0xff6c757d),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 50),
        ],
      ),
    );
  }
}
