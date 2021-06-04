import 'package:flutter/material.dart';
import 'package:gofruit/pages/login.dart';

void main() => runApp(Signup());

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  var signInFormKey = GlobalKey<FormState>();
  var isLoading = false;
  bool rememberMe = false;
  var name = 'Ammy Johnson';
  var email = 'ammyjohnson@maxartkiller.co';
  void submit() {
    final isValid = signInFormKey.currentState.validate();
    if (!isValid) {
      return;
    }
    signInFormKey.currentState.save();
  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xffFF0068),
      body: Container(
        child: Stack(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 100, right: 0, top: 0),
              child: Align(
                alignment: Alignment.centerRight,
                child: Image.asset(
                  'assets/img/apple.png',
                  fit: BoxFit.cover,
                  height: height / 1.2,
                  alignment: Alignment.centerLeft,
                ),
              ),
            ),
            Container(
              width: width,
              alignment: Alignment.center,
              child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Wrap(
                    children: <Widget>[
                      Center(
                        child: Image.asset(
                          'assets/img/logo.png',
                          width: 122,
                        ),
                      ),
                      Center(
                        child: Text(
                          "SignUp",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      SizedBox(height: 50),
                      Center(
                        child: Container(
                          width: 320,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Form(
                                  key: signInFormKey,
                                  child: Column(
                                    children: [
                                      TextFormField(
                                        decoration:
                                            InputDecoration(labelText: 'Name'),
                                        keyboardType:
                                            TextInputType.emailAddress,
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
                                        decoration: InputDecoration(
                                            labelText: 'Email address'),
                                        keyboardType:
                                            TextInputType.emailAddress,
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
                                      //box styling
                                      // SizedBox(
                                      //   height:
                                      //       MediaQuery.of(context).size.width *
                                      //           0.1,
                                      // ),
                                      //text input
                                      TextFormField(
                                        decoration: InputDecoration(
                                            labelText: 'Password'),
                                        keyboardType:
                                            TextInputType.emailAddress,
                                        onFieldSubmitted: (value) {},
                                        obscureText: true,
                                        validator: (value) {
                                          if (value.isEmpty) {
                                            return 'Enter a valid password!';
                                          }
                                          return null;
                                        },
                                      ),
                                      //SizedBox(height: 10),
                                      CheckboxListTile(
                                        title: Text(
                                            'I accept Terms and Conditions'),
                                        value: rememberMe,
                                        controlAffinity:
                                            ListTileControlAffinity.leading,
                                        onChanged: (value) {
                                          setState(() {
                                            rememberMe = value;
                                          });
                                        },
                                      ),
                                      Wrap(
                                        direction: Axis.horizontal,
                                        alignment: WrapAlignment.start,
                                        spacing: 40.0,
                                        runAlignment: WrapAlignment.start,
                                        runSpacing: 10.0,
                                        crossAxisAlignment:
                                            WrapCrossAlignment.start,
                                        children: <Widget>[
                                          TextButton.icon(
                                            style: TextButton.styleFrom(
                                              primary: Colors.white,
                                              backgroundColor:
                                                  Color(0xffFF0068),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                              ),
                                            ),
                                            onPressed: () => submit(),
                                            label: Text(
                                              "SIGN UP",
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
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        child: Wrap(
                          children: [
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Already have account?",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                            Center(
                              child: Wrap(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      print('Sign In Screen');
                                      Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              Login(),
                                        ),
                                      );
                                    },
                                    child: Text(
                                      'Sign In',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 8),
                                  Text(
                                    "here",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
