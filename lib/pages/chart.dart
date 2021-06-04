import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

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
final List<Map> budgetData = [
  {
    "picture": 'assets/img/apple.png',
    "title": 'Red Apple',
    "offerColor": 'green',
    "offer": 15,
    "qty": 1,
    "progressColor": 'red',
    "progressValue": 0.4
  },
  {
    "picture": 'assets/img/grapes2.png',
    "title": 'Green Grapes',
    "offerColor": 'green',
    "offer": 15,
    "qty": 1,
    "progressColor": 'green',
    "progressValue": 0.6
  },
  {
    "picture": 'assets/img/orange-2.png',
    "title": 'Orange',
    "offerColor": 'green',
    "offer": 15,
    "qty": 1,
    "progressColor": 'orange',
    "progressValue": 0.8
  },
];
void main() => runApp(Chart());

class Chart extends StatefulWidget {
  @override
  _ChartState createState() => _ChartState();
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
                          fontSize: 16,
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
                          fontSize: 16,
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
                          fontSize: 16,
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
                          fontSize: 16,
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
                          fontSize: 16,
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
                          fontSize: 16,
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
                          fontSize: 16,
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
                          fontSize: 16,
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
                          fontSize: 16,
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

Widget adsWidget(width, height) {
  return Container(
    width: double.infinity,
    padding: EdgeInsets.only(top: 10, bottom: 10),
    decoration: BoxDecoration(
      color: Color(0xff00BE7D),
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
                'assets/img/orange-small.png',
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

productBudgets() {
  return Container(
    width: 360,
    height: 1080,
    child: ListView.builder(
      //scrollDirection: Axis.horizontal,
      itemCount: budgetData.length,
      itemBuilder: (context, index) {
        return Column(
          children: <Widget>[
            SizedBox(height: 15),
            Container(
              width: 330,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(budgetData[index]['title']),
              ),
            ),
            SizedBox(height: 15),
          ],
        );
      },
    ),
  );
}

class _ChartState extends State<Chart> {
  var width, height;
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
                    "This Month",
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
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8),
                child: Container(
                  width: 340,
                  //height: 300,
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: Color(0xffFF0068),
                                  borderRadius: BorderRadius.circular(4)),
                              child: Icon(
                                Icons.account_balance_wallet,
                                color: Colors.white,
                              ),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Text(
                                    "Balance Available",
                                    style: TextStyle(
                                      color: Color(0xff6c757d),
                                    ),
                                  ),
                                  Text(
                                    "\$ 2585.00",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            FloatingActionButton(
                              mini: true,
                              onPressed: null,
                              elevation: 2.0,
                              backgroundColor: Color(0xffFF0068),
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 16,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          height: 180,
                          child: Container(
                            padding: EdgeInsets.all(10),
                            width: double.infinity,
                            child: LineChart(
                              LineChartData(
                                gridData: FlGridData(
                                  show: true,
                                  drawVerticalLine: true,
                                  getDrawingHorizontalLine: (value) {
                                    return FlLine(
                                      color: const Color(0xff37434d),
                                      strokeWidth: 1,
                                    );
                                  },
                                  getDrawingVerticalLine: (value) {
                                    return FlLine(
                                      color: const Color(0xff37434d),
                                      strokeWidth: 1,
                                    );
                                  },
                                ),
                                titlesData: FlTitlesData(
                                  show: true,
                                  bottomTitles: SideTitles(
                                    showTitles: true,
                                    reservedSize: 22,
                                    rotateAngle: 290,
                                    getTextStyles: (value) => const TextStyle(
                                      color: Color(0xff68737d),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 9,
                                    ),
                                    getTitles: (value) {
                                      switch (value.toInt()) {
                                        case 0:
                                          return 'JAN';
                                        case 1:
                                          return 'FEB';
                                        case 2:
                                          return 'MAR';
                                        case 3:
                                          return 'APR';
                                        case 4:
                                          return 'MAY';
                                        case 5:
                                          return 'JUN';
                                        case 6:
                                          return 'JUL';
                                        case 7:
                                          return 'AUG';
                                        case 8:
                                          return 'SEP';
                                        case 9:
                                          return 'OCT';
                                        case 10:
                                          return 'NOV';
                                        case 11:
                                          return 'DEC';
                                      }
                                      return '';
                                    },
                                    margin: 8,
                                  ),
                                  leftTitles: SideTitles(
                                    showTitles: true,
                                    getTextStyles: (value) => const TextStyle(
                                      color: Color(0xff67727d),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10,
                                    ),
                                    getTitles: (value) {
                                      switch (value.toInt()) {
                                        case 0:
                                          return '0';
                                        case 1:
                                          return '10';
                                        case 2:
                                          return '20';
                                        case 3:
                                          return '30';
                                        case 4:
                                          return '40';
                                        case 5:
                                          return '50';
                                      }
                                      return '';
                                    },
                                    reservedSize: 28,
                                    margin: 12,
                                  ),
                                ),
                                borderData: FlBorderData(
                                  show: true,
                                  border: Border.all(
                                    color: Colors.grey.shade500,
                                    width: 1,
                                  ),
                                ),
                                minX: 0,
                                maxX: 11,
                                minY: 0,
                                maxY: 6,
                                lineBarsData: [
                                  LineChartBarData(
                                    spots: [
                                      FlSpot(0, 5),
                                      FlSpot(0.5, 0.5),
                                      FlSpot(1, 1.2),
                                      FlSpot(3, 3.8),
                                      FlSpot(4, 2.8),
                                      FlSpot(5, 0.6),
                                      FlSpot(6, 1.2)
                                    ],
                                    isCurved: true,
                                    barWidth: 2,
                                    isStrokeCapRound: true,
                                    dotData: FlDotData(
                                      show: true,
                                      getDotPainter:
                                          (spot, percent, barData, index) {
                                        return FlDotCirclePainter(
                                          radius: 2.75,
                                          color: Color(0xffFF0068),
                                          strokeWidth: 1,
                                          strokeColor: Colors.white,
                                        );
                                      },
                                    ),
                                    colors: [
                                      Color(0xffFF0068),
                                    ],
                                    // belowBarData: BarAreaData(
                                    //   show: true,
                                    // ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
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
                childAspectRatio: 2,
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
              ),
              itemCount: 2,
              itemBuilder: (context, index) {
                return Container(
                  width: 300,
                  height: 57,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: ListTile(
                    leading: (index == 0)
                        ? FloatingActionButton(
                            mini: true,
                            onPressed: null,
                            elevation: 2.0,
                            backgroundColor: Color(0xff28a745),
                            child: Icon(
                              Icons.card_giftcard,
                              color: Colors.white,
                              size: 16,
                            ),
                          )
                        : FloatingActionButton(
                            mini: true,
                            onPressed: null,
                            elevation: 2.0,
                            backgroundColor: Color(0xffFFC400),
                            child: Icon(
                              Icons.payment,
                              color: Colors.white,
                              size: 16,
                            ),
                          ),
                    title: (index == 0)
                        ? Text(
                            'Total Savings',
                            style: TextStyle(
                              color: Color(0xff6c757d),
                              fontSize: 11,
                            ),
                          )
                        : Text(
                            "Expense",
                            style: TextStyle(
                              color: Color(0xff6c757d),
                              fontSize: 11,
                            ),
                          ),
                    subtitle: (index == 0)
                        ? Text(
                            "\$ 585",
                            style: TextStyle(
                              color: Color(0xff343a40),
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        : Text(
                            "\$ 1585",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff343a40),
                            ),
                          ),
                  ),
                );
              },
            ),
          ),
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
            children: <Widget>[
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: EdgeInsets.only(left: 15),
                  child: Text(
                    "Products Budget",
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
          Column(
            children: [
              for (var budget in budgetData)
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                      child: Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: ListTile(
                          leading: Image.asset(
                            budget['picture'],
                            width: 40,
                          ),
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Text(
                                    budget['title'],
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.only(
                                            left: 6,
                                            top: 3,
                                            right: 6,
                                            bottom: 3),
                                        decoration: BoxDecoration(
                                          color: (budget['offerColor'] ==
                                                  'green')
                                              ? Color(0xff00BE7D)
                                              : (budget['offerColor'] == 'blue')
                                                  ? Color(0xff0D76FF)
                                                  : Color(0xff17a2b8),
                                          borderRadius:
                                              BorderRadius.circular(30),
                                        ),
                                        child: Text(
                                          budget['offer'].toString() + "% Off",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 10,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        budget['qty'].toString() + "kg",
                                        style: TextStyle(
                                          color: Color(0xff6c757d),
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          subtitle: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              LinearProgressIndicator(
                                backgroundColor:
                                    Color(0xffe9ecef).withOpacity(1),
                                valueColor: new AlwaysStoppedAnimation<Color>(
                                  (budget['progressColor'] == 'red')
                                      ? Color(0xffdc3545)
                                      : (budget['progressColor'] == 'green')
                                          ? Color(0xff00BE7D)
                                          : Color(0xffFFC400),
                                ),
                                value: budget['progressValue'],
                              ),
                              //Text('${(0.1 * 100).round()}%'),
                              SizedBox(height: 10),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
            ],
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
          adsWidget(width, height),
          SizedBox(height: 10),
          SizedBox(height: 50),
        ],
      ),
    );
  }
}
