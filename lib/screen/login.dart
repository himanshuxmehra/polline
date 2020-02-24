import 'package:polline/Animation/FadeAnimation.dart';
import 'package:flutter/material.dart';
import 'otp_screen.dart';

class Login extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<Login> {

  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    _phoneNumberController.dispose();
    _nameController.dispose();
    super.dispose();
  }

  bool isValid = false;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Form(
            key:_formKey,
            child: Container(
              child: Column(
                children: <Widget>[
                  Container(
                    height: 400,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/background.png'),
                            fit: BoxFit.fill)),
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          left: 30,
                          width: 80,
                          height: 200,
                          child: FadeAnimation(
                              1,
                              Container(
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/light-1.png'))),
                              )),
                        ),
                        Positioned(
                          left: 140,
                          width: 80,
                          height: 150,
                          child: FadeAnimation(
                              1.3,
                              Container(
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/light-2.png'))),
                              )),
                        ),
                        Positioned(
                          right: 40,
                          top: 40,
                          width: 80,
                          height: 150,
                          child: FadeAnimation(
                              1.5,
                              Container(
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/clock.png'))),
                              )),
                        ),
                        Positioned(
                          child: FadeAnimation(
                              1.6,
                              Container(
                                margin: EdgeInsets.only(top: 100),
                                child: Center(
                                  child: Text(
                                    "OTP Verification",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              )),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(30.0),
                    child: Column(
                      children: <Widget>[
                        FadeAnimation(
                            1.8,
                            Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Color.fromRGBO(143, 148, 251, .2),
                                        blurRadius: 20.0,
                                        offset: Offset(0, 10))
                                  ]),
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    padding: EdgeInsets.all(8.0),
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                color: Colors.grey[100]))),
                                    child: TextFormField(
                                      controller: _nameController,
                                      validator: (value) {
                                        if (value.isEmpty) {
                                          return 'This field can not be empty';
                                        }
                                        return null;
                                      },
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: "Full Name",
                                          hintStyle:
                                          TextStyle(color: Colors.grey[400])),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(8.0),
                                    child: TextFormField(
                                      maxLength: 10,
                                      autocorrect: false,
                                      controller: _phoneNumberController,
                                      validator: (value) {
                                        if (value.length<10) {
                                          return 'Please enter a valid phone number';
                                        }
                                        return null;
                                      },
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: "Phone Number",
                                          hintStyle:
                                          TextStyle(color: Colors.grey[400])),
                                    ),
                                  )
                                ],
                              ),
                            )),
                        SizedBox(
                          height: 30,
                        ),
                        FadeAnimation(
                          2,
                          Container(
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                gradient: LinearGradient(colors: [
                                  Color.fromRGBO(143, 148, 251, 1),
                                  Color.fromRGBO(143, 148, 251, .6),
                                ])),
                            child: Center(
                              child: FlatButton(
                                onPressed: (){
                                  if (_formKey.currentState.validate()){
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              OTPScreen(
                                                mobileNumber:
                                                _phoneNumberController
                                                    .text,
                                              ),
                                        ));
                                  }
                                },
                                child: Text(
                                  "Request OTP",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
