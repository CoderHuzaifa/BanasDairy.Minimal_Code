import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

class FarmerScreen extends StatefulWidget {
  @override
  _FarmerScreenState createState() => _FarmerScreenState();
}

class _FarmerScreenState extends State<FarmerScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Stack(
          children: <Widget>[
            Container(
              height: double.infinity,
              width: double.infinity,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    top: -70,
                    left: -20,
                    right: -20,
                    child: Image.asset(
                      "assets/images/topimg1.png",
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 50),
                    child: IconButton(
                        onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 50, left: 40),
                    child: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
                  ),
                  Positioned(
                    width: 80,
                    left: 100,
                    top: 50,
                    child: Image.asset("assets/images/logo.png"),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 50, left: 300),
                    child:
                        IconButton(onPressed: () {}, icon: Icon(Icons.search)),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 50, left: 350),
                    child: IconButton(
                        onPressed: () {}, icon: Icon(Icons.notifications)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
