import 'package:flutter/material.dart';
import 'package:gofruit/pages/home.dart';
import 'package:gofruit/pages/cart.dart';
import 'package:gofruit/pages/products.dart';
import 'package:gofruit/widgets/drawer_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

final int currentIndex = 0;
void main() => runApp(Productdetails(currentIndex));

class Productdetails extends StatefulWidget {
  final int currentIndex; //if you have multiple values add here
  Productdetails(this.currentIndex, {Key key}) : super(key: key);
  @override
  _ProductdetailsState createState() => _ProductdetailsState();
}

class _ProductdetailsState extends State<Productdetails> {
  var width, height;
  int tabIndex = 0;
  final List<String> imgList = [
    'assets/img/apple.png',
    'assets/img/apple.png',
    'assets/img/apple.png',
    'assets/img/apple.png',
    'assets/img/apple.png',
  ];
  int _current = 0;
  final CarouselController _controller = CarouselController();
  var commentsFormKey = GlobalKey<FormState>();
  var name = 'Ammy Johnson';
  var email = 'ammyjohnson@maxartkiller.co';
  @override
  void initState() {
    super.initState();
    print(tabIndex);
  }

  void submit() {
    final isValid = commentsFormKey.currentState.validate();
    if (!isValid) {
      return;
    }
    commentsFormKey.currentState.save();
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
                      builder: (context) => Products(tabIndex),
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
            Center(
              child: CarouselSlider(
                items: imgList
                    .map(
                      (item) => Container(
                        child: Center(
                          child: Image.asset(
                            item,
                            fit: BoxFit.fitHeight,
                            width: width,
                          ),
                        ),
                      ),
                    )
                    .toList(),
                carouselController: _controller,
                options: CarouselOptions(
                    autoPlay: true,
                    enlargeCenterPage: true,
                    aspectRatio: 2.0,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _current = index;
                      });
                    }),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: imgList.asMap().entries.map((entry) {
                return GestureDetector(
                  onTap: () => _controller.animateToPage(entry.key),
                  child: Container(
                    width: 12.0,
                    height: 12.0,
                    margin:
                        EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: (Theme.of(context).brightness == Brightness.dark
                                ? Colors.white
                                : Colors.black)
                            .withOpacity(_current == entry.key ? 0.9 : 0.4)),
                  ),
                );
              }).toList(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RatingBar.builder(
                  initialRating: 3,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemSize: 20,
                  itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Rating 4.2",
                        style: TextStyle(
                          color: Color(0xff343a40),
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        " based on 245 reviews",
                        style: TextStyle(
                          color: Color(0xff6c757d),
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            ListTile(
              leading: Icon(
                Icons.favorite_outline,
                color: Color(0xffFF0068),
              ),
              title: ElevatedButton.icon(
                icon: Icon(Icons.share),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  primary: Color(0xffdd015b),
                ),
                label: Text('Share'.toUpperCase(),
                    style: TextStyle(color: Colors.white)),
                onPressed: () {},
              ),
              trailing: Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: Color(0xff00BE7D),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Text(
                  "10% off",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            ListTile(
              title: Text('Red Apple'),
              subtitle: Text('Imported from Simla'),
              trailing: ElevatedButton.icon(
                icon: Icon(
                  Icons.timer,
                  size: 16,
                  color: Color(0xff343a40),
                ),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  primary: Color(0xffFFC400),
                ),
                label: Text(
                  'EXPIRED'.toUpperCase(),
                  style: TextStyle(
                    color: Color(0xff343a40),
                    fontSize: 14,
                  ),
                ),
                onPressed: () {},
              ),
            ),
            Container(
              padding: EdgeInsets.all(16),
              child: Text(
                  'Lorem ipsum dolor sit amet, consect etur adipiscing elit. Sndisse conv allis. Lorem ipsum dolor sit amet, consect etur adipiscing elit. Sandside conv allis .'),
            ),
            ListTile(
              title: Text(
                '\$ 120.00',
                style: TextStyle(
                  color: Color(0xff00BE7D),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                '1 Kg',
                style: TextStyle(
                  color: Color(0xff6c757d),
                ),
              ),
              trailing: ElevatedButton.icon(
                icon: Icon(
                  Icons.shopping_cart,
                  size: 16,
                  color: Colors.white,
                ),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  primary: Color(0xffFF0068),
                ),
                label: Text(
                  'Add'.toUpperCase(),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                onPressed: () {},
              ),
            ),
            Column(
              children: <Widget>[
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Text(
                      "Product Budget",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                children: [
                  ListTile(
                    title: RatingBar.builder(
                      initialRating: 3,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemSize: 20,
                      itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                    trailing: Text(
                      "2 hours ago",
                      style: TextStyle(
                        color: Color(0xff6c757d),
                        fontSize: 12,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: ClipOval(
                      child: Image.asset(
                        'assets/img/user1.png',
                        width: 50,
                      ),
                    ),
                    title: Text(
                      "Lorem ipsum dolor sit amet consectetur adipiscing lorem ipsum dolor.",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      "Lorem ipsum dolor sit amet, consect etur adipiscing elit. Sndisse conv allis. Lorem ipsum dolor sit amet, consect etur adipiscing elit. Sandside conv allis .",
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: <Widget>[
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Text(
                      "Add comment",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Center(
              child: RatingBar.builder(
                initialRating: 3,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemSize: 40,
                itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {
                  print(rating);
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Form(
                key: commentsFormKey,
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Name'),
                      keyboardType: TextInputType.emailAddress,
                      onFieldSubmitted: (value) {
                        //Validator
                      },
                      initialValue: name,
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Enter a name!';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Email address'),
                      keyboardType: TextInputType.emailAddress,
                      initialValue: email,
                      onFieldSubmitted: (value) {
                        //Validator
                      },
                      validator: (value) {
                        if (value.isEmpty ||
                            !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                .hasMatch(value)) {
                          return 'Enter a valid email!';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      decoration:
                          InputDecoration(labelText: 'Type your comment...'),
                      keyboardType: TextInputType.multiline,
                      minLines: 1,
                      maxLines: 5,
                      onFieldSubmitted: (value) {
                        //Validator
                      },
                      validator: (value) {
                        return null;
                      },
                    ),
                    SizedBox(height: 6),
                    Wrap(
                      direction: Axis.horizontal,
                      alignment: WrapAlignment.start,
                      spacing: 40.0,
                      runAlignment: WrapAlignment.start,
                      runSpacing: 10.0,
                      crossAxisAlignment: WrapCrossAlignment.start,
                      children: <Widget>[
                        TextButton.icon(
                          style: TextButton.styleFrom(
                            primary: Colors.white,
                            backgroundColor: Color(0xffFF0068),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          onPressed: () => submit(),
                          label: Text(
                            "comment".toUpperCase(),
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.white,
                            ),
                          ),
                          icon: Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
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
