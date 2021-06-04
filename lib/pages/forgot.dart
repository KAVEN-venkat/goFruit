import 'package:flutter/material.dart';
import 'package:gofruit/pages/login.dart';

void main() => runApp(Forgot());

class Forgot extends StatefulWidget {
  @override
  _ForgotState createState() => _ForgotState();
}

class _ForgotState extends State<Forgot> {
  var signInFormKey = GlobalKey<FormState>();
  var isLoading = false;
  bool rememberMe = false;
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
    //final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xffFFC107),
      body: Container(
        child: Stack(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 100, right: 0, top: 0),
              child: Align(
                alignment: Alignment.centerRight,
                child: Image.asset(
                  'assets/img/banana.png',
                  fit: BoxFit.cover,
                  height: 600,
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
                        "Forgot Password",
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
                              padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                              child: Center(
                                child: Text(
                                  "Please provide your registered email address to receive password reset link.",
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Form(
                                key: signInFormKey,
                                child: Column(
                                  children: [
                                    TextFormField(
                                      decoration: InputDecoration(
                                          labelText: 'Enter email address'),
                                      keyboardType: TextInputType.emailAddress,
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
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.width *
                                              0.1,
                                    ),
                                    Wrap(
                                      direction: Axis.horizontal,
                                      alignment: WrapAlignment.start,
                                      spacing: 40.0,
                                      runAlignment: WrapAlignment.start,
                                      runSpacing: 10.0,
                                      crossAxisAlignment:
                                          WrapCrossAlignment.center,
                                      children: <Widget>[
                                        TextButton.icon(
                                          style: TextButton.styleFrom(
                                              primary: Colors.white,
                                              backgroundColor:
                                                  Color(0xffFFC107),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                              )),
                                          onPressed: () => submit(),
                                          label: Text(
                                            "RESET",
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
                                "Already have account password?",
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
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
