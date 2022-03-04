import 'package:banas_dairy/Screens/Signup.dart';
import 'package:flutter/material.dart';

class SelectUser extends StatefulWidget {
  @override
  _SelectUserState createState() => _SelectUserState();
}

class _SelectUserState extends State<SelectUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
          Center(
            child: Text(
              "Select UserType",
              style: TextStyle(
                  color: Color.fromRGBO(6, 47, 126, 1),
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Stack(
            children: [
              SizedBox(
                height: 250,
                width: 250,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  elevation: 0,
                  color: Color.fromRGBO(242, 241, 241, 1),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: SizedBox(
                  width: 100,
                  child: Card(
                    child: Column(
                      children: [
                        Card(child: Image.asset("assets/images/customer.png")),
                        Text("Customer")
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 130, top: 30),
                child: SizedBox(
                  width: 100,
                  child: Card(
                    child: Column(
                      children: [
                        Card(child: Image.asset("assets/images/farmer.png")),
                        Text("Farmer")
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 130, top: 130),
                child: SizedBox(
                  width: 100,
                  child: Card(
                    child: Column(
                      children: [
                        Card(child: Image.asset("assets/images/society.png")),
                        Text("Society")
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 130),
                child: SizedBox(
                  width: 100,
                  child: Card(
                    child: Column(
                      children: [
                        Card(child: Image.asset("assets/images/employee.png")),
                        Text("Employee")
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 45,
            width: MediaQuery.of(context).devicePixelRatio * 70,
            child: MaterialButton(
              onPressed: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => SignUP())),
              elevation: 10,
              child: Text(
                "Continue",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              color: Color.fromRGBO(6, 47, 126, 1),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(60))),
            ),
          )
        ],
      ),
      bottomSheet: (Image.asset("assets/images/bottomimg.png")),
    );
  }
}
