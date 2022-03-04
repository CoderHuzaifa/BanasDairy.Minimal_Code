import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

import 'Verifyotp.dart';
import 'loginScreen.dart';

class SignUP extends StatefulWidget {
  @override
  _SignUPState createState() => _SignUPState();
}

class _SignUPState extends State<SignUP> {
  TextEditingController mobCltr = TextEditingController();
  TextEditingController nameCltr = TextEditingController();
  TextEditingController emailCltr = TextEditingController();
  TextEditingController cityCltr = TextEditingController();

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
    if (nameCltr.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(customSnackbar(
          label: "",
          time: Duration(seconds: 5),
          press: () {},
          msg: "Enter Name",
          chooseColor: Colors.red));
    } else if (mobCltr.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(customSnackbar(
          label: "",
          time: Duration(seconds: 5),
          press: () {},
          msg: "Enter Mobile",
          chooseColor: Colors.red));
    } else if (mobCltr.text.length < 10) {
      ScaffoldMessenger.of(context).showSnackBar(customSnackbar(
          label: "",
          time: Duration(seconds: 5),
          press: () {},
          msg: "Enter Valid Number",
          chooseColor: Colors.red));
    } else if (emailCltr.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(customSnackbar(
          label: "",
          time: Duration(seconds: 5),
          press: () {},
          msg: "Enter Email-ID",
          chooseColor: Colors.red));
    } else if (!EmailValidator.validate(emailCltr.text)) {
      ScaffoldMessenger.of(context).showSnackBar(customSnackbar(
          label: "",
          time: Duration(seconds: 5),
          press: () {},
          msg: "Enter Valid Email-ID",
          chooseColor: Colors.red));
    } else if (cityCltr.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(customSnackbar(
          label: "",
          time: Duration(seconds: 5),
          press: () {},
          msg: "Enter City",
          chooseColor: Colors.red));
    } else {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => OTPScreen(
                    mobile: mobCltr.text,
                  )));
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
                "Sign Up",
                style: TextStyle(
                    color: Color.fromRGBO(6, 47, 126, 1),
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Text("Please Fill the details & Create Account"),
            SizedBox(
              height: 20,
            ),
            customTextField(
                cltr: nameCltr, hint: "Enter Name", prefix: Icon(Icons.person)),
            SizedBox(
              height: 10,
            ),
            customTextField(
                cltr: mobCltr,
                length: 10,
                hint: "Enter Mobile",
                prefix: Icon(Icons.phone),
                type: TextInputType.phone),
            SizedBox(
              height: 10,
            ),
            customTextField(
                cltr: emailCltr,
                hint: "Enter Email-ID",
                prefix: Icon(Icons.mail),
                type: TextInputType.emailAddress),
            SizedBox(
              height: 10,
            ),
            customTextField(
                cltr: cityCltr,
                hint: "Enter City/Village",
                prefix: Icon(Icons.home),
                type: TextInputType.text),
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
                  "Signup",
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
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginScreen())),
              child: RichText(
                  text: TextSpan(
                      children: <TextSpan>[
                    TextSpan(text: "Login", style: TextStyle(color: Colors.red))
                  ],
                      text: 'Already have an Account? ',
                      style: TextStyle(color: Colors.black, fontSize: 18))),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              child: Image.asset("assets/images/bottomimg.png"),
            )
          ],
        ),
      ),
    );
  }
}

Widget customTextField(
    {BuildContext context,
    TextEditingController cltr,
    Widget prefix,
    TextInputType type,
    Widget suffix,
    int length,
    String hint}) {
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
