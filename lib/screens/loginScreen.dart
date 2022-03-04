import 'package:flutter/material.dart';

import 'Signup.dart';
import 'homeScreen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController unameCltr = TextEditingController();
  TextEditingController passCltr = TextEditingController();
  bool isHide = false;

  bool validateStructure(String value) {
    String pattern =
        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
    RegExp regExp = new RegExp(pattern);
    return regExp.hasMatch(value);
  }

  Widget customSnackbar(
      {String msg,
      String label,
      VoidCallback press,
      Color chooseColor,
      TextStyle style,
      Duration time}) {
    return SnackBar(
      backgroundColor: chooseColor,
      content: Text(msg, style: style),
      action: SnackBarAction(
        label: label,
        onPressed: press,
      ),
      duration: time,
    );
  }

  errorLens() {
    if (unameCltr.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(customSnackbar(
          label: "",
          time: Duration(seconds: 5),
          press: () {},
          msg: "Enter Username",
          chooseColor: Colors.red));
    } else if (passCltr.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(customSnackbar(
          label: "",
          time: Duration(seconds: 5),
          press: () {},
          msg: "Enter Password",
          chooseColor: Colors.red));
    } else {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomeScreen()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  child: Image.asset("assets/images/topimg.png"),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50, left: 10),
                  child: IconButton(
                      onPressed: () {}, icon: Icon(Icons.arrow_back_ios_new)),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 110, left: 40),
                  child: SizedBox(
                      height: 80, child: Image.asset("assets/images/logo.png")),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                "Login",
                style: TextStyle(
                    color: Color.fromRGBO(6, 47, 126, 1),
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text("Enter your Credential Below"),
            SizedBox(
              height: 20,
            ),
            customTextField(
                cltr: unameCltr, hint: "Username", prefix: Icon(Icons.person)),
            SizedBox(
              height: 20,
            ),
            customTextField(
              cltr: passCltr,
              hint: "Password",
              // obs: isHide,
              type: TextInputType.visiblePassword,
              prefix: Icon(Icons.lock),
              suffix: IconButton(
                icon: Icon(isHide ? Icons.visibility : Icons.visibility_off),
                onPressed: () {
                  setState(() {
                    isHide = !isHide;
                  });
                },
              ),
            ),
            Padding(
                padding: EdgeInsets.only(top: 10, right: 110),
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(color: Colors.red),
                )),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 45,
              width: MediaQuery.of(context).devicePixelRatio * 70,
              child: MaterialButton(
                onPressed: () {
                  errorLens();
                },
                elevation: 10,
                child: Text(
                  "Login",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                color: Color.fromRGBO(6, 47, 126, 1),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(60))),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => SignUP())),
              child: RichText(
                  text: TextSpan(
                      children: <TextSpan>[
                    TextSpan(
                        text: "Register", style: TextStyle(color: Colors.red))
                  ],
                      text: "Don't have an account? ",
                      style: TextStyle(color: Colors.black, fontSize: 18))),
            ),
            Container(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).devicePixelRatio * 10),
              child: Image.asset("assets/images/bottomimg.png"),
            )
          ],
        ),
      ),
    );
  }
}

Widget customTextField({
  BuildContext context,
  TextEditingController cltr,
  Widget prefix,
  TextInputType type,
  Widget suffix,
  int length,
  String hint,
}) {
  return SizedBox(
      height: 40,
      width: 250,
      child: TextField(
        maxLength: length,
        textAlign: TextAlign.start,
        keyboardType: type,
        controller: cltr,
        decoration: InputDecoration(
            suffixIcon: suffix,
            hintText: hint,
            counterText: "",
            hintStyle: TextStyle(fontSize: 12),
            prefixIcon: prefix,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(60),
                borderSide: BorderSide(color: Colors.transparent)),
            filled: true,
            fillColor: Color.fromRGBO(237, 236, 236, 1)),
      ));
}
