import 'package:banas_dairy/Screens/loginScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pinput/pin_put/pin_put.dart';

class OTPScreen extends StatefulWidget {
  final String mobile;

  const OTPScreen({Key key, this.mobile}) : super(key: key);
  @override
  _OTPScreenState createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  final _pinPutController = TextEditingController();
  final _pinPutFocusNode = FocusNode();
  final BoxDecoration pinPutDecoration = BoxDecoration(
    color: Color(0xffffffff),
    borderRadius: BorderRadius.circular(10.0),
    /*border: Border.all(
      color: const Color.fromRGBO(126, 203, 224, 1),
    ),*/
    boxShadow: <BoxShadow>[
      BoxShadow(
          color: Colors.grey,
          blurRadius: 25.0,
          spreadRadius: 1,
          offset: Offset(0.0, 0.75)),
    ],
  );
  GlobalKey<ScaffoldState> globalKey = GlobalKey<ScaffoldState>();

  Widget buildgetotpBtn() {
    return Container(
      margin: EdgeInsets.only(right: 50, left: 50),
      padding: EdgeInsets.symmetric(vertical: 25),
      width: double.infinity,
      child: RaisedButton(
        elevation: 5,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LoginScreen()),
          );
        },
        padding: EdgeInsets.all(10),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        color: Color(0xff0B096B),
        child: Text(
          'Verify & Proceed',
          style: TextStyle(
              color: Color(0xffffffff),
              fontSize: 18,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  /* Widget buildCodeNumberBox(String codeNumber) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 8),
      child: SizedBox(
        width: 60,
        height: 60,
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xffffffff),
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.grey,
                blurRadius: 25.0,
                spreadRadius:1,
                offset: Offset(0.0, 0.75)
              ),
            ],
          ),
          child: Center(
            child: Text(
              codeNumber,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color(0xff1f1f1f),
              ),
            ),
          ),
        ),
      ),
    );
  }
*/

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      key: globalKey,
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Stack(
          children: <Widget>[
            Container(
              height: double.maxFinite,
              width: double.maxFinite,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    top: -240.0,
                    left: -60.0,
                    child: Image.asset(
                      "assets/images/topimagenew.png",
                    ),
                  ),
                  Positioned(
                    top: 90,
                    left: 60,
                    child: Image.asset(
                      "assets/images/logonew.png",
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Image.asset("assets/images/bottomimg.png",
                        alignment: Alignment.bottomRight),
                    width: 400.0,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 180),
                    child: SingleChildScrollView(
                      physics: AlwaysScrollableScrollPhysics(),
                      padding:
                          EdgeInsets.symmetric(horizontal: 25, vertical: 120),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'OTP Verification',
                            style: TextStyle(
                                color: Color(0xff0B096B),
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          RichText(
                            text: TextSpan(
                              text: "Enter the otp Send to ",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17,
                                  fontWeight: FontWeight.normal),
                              children: <TextSpan>[
                                TextSpan(
                                  text: "+91-6354618534",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(30.0),
                            child: PinPut(
                              fieldsCount: 4,
                              withCursor: true,
                              textStyle: const TextStyle(
                                  fontSize: 25.0, color: Colors.black),
                              eachFieldWidth: 55.0,
                              eachFieldHeight: 55.0,
                              //onSubmit: (String pin) => _showSnackBar(pin),
                              focusNode: _pinPutFocusNode,
                              controller: _pinPutController,
                              submittedFieldDecoration: pinPutDecoration,
                              selectedFieldDecoration: pinPutDecoration,
                              followingFieldDecoration: pinPutDecoration,
                              pinAnimationType: PinAnimationType.fade,
                            ),
                          ),

                          /*Center(
                          child: Expanded(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                buildCodeNumberBox(""),
                                buildCodeNumberBox(""),
                                buildCodeNumberBox(""),
                                buildCodeNumberBox(""),
                              ],
                            ),
                          ),
                        ),*/

                          /*Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 35),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                flex: 1,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xffffffff),
                                    boxShadow: <BoxShadow>[
                                      BoxShadow(
                                          color: Colors.grey,
                                          blurRadius: 25.0,
                                          spreadRadius:1,
                                          offset: Offset(0.0, 0.75)
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              */ /*SizedBox(width: 16,),
                              Expanded(
                                flex: 1,
                                child: PhoneVerifyTextField(
                                ),
                              ),
                              SizedBox(width: 16,),
                              Expanded(
                                flex: 1,
                                child: PhoneVerifyTextField(),
                              ),
                              SizedBox(width: 16,),
                              Expanded(
                                flex: 1,
                                child: PhoneVerifyTextField(),
                              ),
                              SizedBox(width: 16,),
                              Expanded(
                                flex: 1,
                                child: PhoneVerifyTextField(),
                              ),*/ /*

                            ],
                          ),
                        ),*/
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: RichText(
                              text: TextSpan(
                                text: "Don't recieve OTP ?  ",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                    fontWeight: FontWeight.normal),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: "RESEND OTP ",
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold),
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {}),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          buildgetotpBtn(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PhoneVerifyTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlign: TextAlign.center,
      keyboardType: TextInputType.number,
      textInputAction: TextInputAction.next,
      maxLength: 1,
      style: TextStyle(
          color: Colors.black, fontSize: 17, fontWeight: FontWeight.bold),
      decoration: InputDecoration(
        hintText: "0",
        hintStyle: TextStyle(
            color: Colors.black, fontSize: 17, fontWeight: FontWeight.bold),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
        ),
      ),
    );
  }
}
