import 'package:flutter/material.dart';
import 'package:gofruit/pages/home.dart';
import 'package:gofruit/pages/cart.dart';
import 'package:gofruit/pages/settings.dart';
import 'package:gofruit/widgets/drawer_widget.dart';

final int currentIndex = 0;
void main() => runApp(Changepassword(currentIndex));

class Changepassword extends StatefulWidget {
  final int currentIndex; //if you have multiple values add here
  Changepassword(this.currentIndex, {Key key}) : super(key: key);
  @override
  _ChangepasswordState createState() => _ChangepasswordState();
}

class _ChangepasswordState extends State<Changepassword> {
  var width, height;
  int tabIndex = 0;
  var changepwdFormKey = GlobalKey<FormState>();

  void submit() {
    final isValid = changepwdFormKey.currentState.validate();
    if (!isValid) {
      return;
    }
    changepwdFormKey.currentState.save();
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Settings(tabIndex),
      ),
    );
  }

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
                      builder: (context) => Settings(tabIndex),
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Change",
                    style: TextStyle(
                      color: Color(0xff212529),
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(width: 6),
                  Text(
                    "Password",
                    style: TextStyle(
                      color: Color(0xff212529),
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Form(
                key: changepwdFormKey,
                child: Column(
                  children: [
                    TextFormField(
                      decoration:
                          InputDecoration(labelText: 'Current Password'),
                      keyboardType: TextInputType.text,
                      onFieldSubmitted: (value) {},
                      obscureText: true,
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Enter a current password!';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'New Password'),
                      keyboardType: TextInputType.text,
                      onFieldSubmitted: (value) {},
                      obscureText: true,
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Enter a new password!';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      decoration:
                          InputDecoration(labelText: 'Confirm New Password'),
                      keyboardType: TextInputType.text,
                      onFieldSubmitted: (value) {},
                      obscureText: true,
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Enter a confirm new password!';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 10),
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
                      onPressed: () {
                        submit();
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Update Password".toUpperCase(),
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
            ),
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
