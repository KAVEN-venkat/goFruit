import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:gofruit/pages/home.dart';
import 'package:gofruit/pages/login.dart';

final List<Map> imgList = [
  {
    "url": 'assets/img/orange-slices.png',
    "bgColor": 'orange',
    "heading": 'Other Controls Elements',
    "para": 'Click on Menu button > Side menu and select other controls'
  },
  {
    "url": 'assets/img/pineapple.png',
    "bgColor": 'green',
    "heading": 'Testy Awesome Fruits',
    "para":
        'SLorem ipsum dolor sit amet, consect etur adipiscing elit. Sndisse conv allis.'
  },
  {
    "url": 'assets/img/banana.png',
    "bgColor": 'yellow',
    "heading": 'Loving Freshness Everyday',
    "para":
        'SLorem ipsum dolor sit amet, consect etur adipiscing elit. Sndisse conv allis.'
  },
];
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //theme: ThemeData(fontFamily: 'RobotoRegular'),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (ctx) => FullscreenSliderDemo(),
        //'/': (ctx) => Home(0),
        '/login': (ctx) => Login(),
      },
    );
  }
}

class FullscreenSliderDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: Text('Fullscreen sliding carousel demo')),
      body: Builder(
        builder: (context) {
          final double width = MediaQuery.of(context).size.width;
          final double height = MediaQuery.of(context).size.height;
          return CarouselSlider(
            options: CarouselOptions(
              height: height,
              viewportFraction: 1.0,
              autoPlay: false,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              scrollDirection: Axis.horizontal,
            ),
            items: imgList
                .map(
                  (item) => Container(
                    decoration: BoxDecoration(
                        color: (item['bgColor'] == 'orange')
                            ? Color(0xffFF6F00)
                            : (item['bgColor'] == 'green')
                                ? Color(0xff00BE7D)
                                : Color(0xffFFC400)),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Container(
                        height: height,
                        child: Stack(
                          children: <Widget>[
                            Container(
                              margin: (item['bgColor'] == 'orange')
                                  ? EdgeInsets.only(
                                      left: 200, right: 0.0, top: 20)
                                  : (item['bgColor'] == 'green')
                                      ? EdgeInsets.only(
                                          left: 190, right: 0.0, top: 20)
                                      : EdgeInsets.only(
                                          left: 70, right: 0.0, top: 20),
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Image.asset(
                                  item['url'],
                                  fit: BoxFit.cover,
                                  height: height / 1.1,
                                  alignment: Alignment.centerLeft,
                                ),
                              ),
                            ),
                            Container(
                              width: width / 1.5,
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 15),
                                child: Wrap(
                                  children: <Widget>[
                                    Text(
                                      item['heading'].toUpperCase(),
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 30,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Text(
                                      item['para'],
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                      ),
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
                )
                .toList(),
          );
        },
      ),
      floatingActionButton: new FloatingActionButton(
        elevation: 0.0,
        child: new Icon(Icons.arrow_forward),
        backgroundColor: new Color(0xFFFF0068),
        onPressed: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) => Login(),
            ),
          );
        },
      ),
    );
  }
}
