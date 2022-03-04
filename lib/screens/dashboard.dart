import 'package:banas_dairy/Screens/Drawer.dart';
import 'package:banas_dairy/Screens/product.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class dashboard extends StatefulWidget {
  @override
  _dashboardState createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
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
                        "assets/images/top.png",
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 50),
                      child: IconButton(
                          onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 50, left: 40),
                      child: IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => drawer()));
                        },
                        icon: Icon(
                          Icons.menu,
                        ),
                      ),
                    ),
                    Positioned(
                      width: 80,
                      left: 100,
                      top: 50,
                      child: Image.asset("assets/images/logo.png"),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 50, left: 300),
                      child: IconButton(
                          onPressed: () {}, icon: Icon(Icons.search)),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 50, left: 350),
                      child: IconButton(
                          onPressed: () {}, icon: Icon(Icons.notifications)),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 90),
                child: ListView(
                  children: [
                    CarouselSlider(
                      items: [
                        //1st Image of Slider
                        Container(
                          margin: EdgeInsets.all(6.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            image: DecorationImage(
                              image: new AssetImage("assets/images/amul.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),

                        //2nd Image of Slider
                        Container(
                          margin: EdgeInsets.all(6.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            image: DecorationImage(
                              image: new AssetImage("assets/images/amul.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),

                        //3rd Image of Slider
                        Container(
                          margin: EdgeInsets.all(6.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            image: DecorationImage(
                              image: new AssetImage("assets/images/amul.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],

                      //Slider Container properties
                      options: CarouselOptions(
                        height: 180.0,
                        enlargeCenterPage: true,
                        autoPlay: true,
                        aspectRatio: 16 / 9,
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enableInfiniteScroll: true,
                        autoPlayAnimationDuration: Duration(milliseconds: 800),
                        viewportFraction: 0.8,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Positioned(
                    top: 300,
                    left: 20,
                    child: Image.asset('assets/images/Staticimg.png')),
              ),
              Container(
                padding: EdgeInsets.only(top: 450, left: 20),
                child: Text(
                  "Categories",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color((0xff000000)),
                      fontFamily: 'lato'),
                  textAlign: TextAlign.end,
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 450, left: 320),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "See all",
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => product()),
                                )
                              },
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                          color: Color((0xffff0000)),
                        ),
                      ),
                      WidgetSpan(
                        child:
                            Icon(Icons.arrow_forward, color: Color(0xffff0000)),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 500),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset("assets/images/Group1.png"),
                    Image.asset("assets/images/Group2.png"),
                    Image.asset("assets/images/Group3.png"),
                    Image.asset("assets/images/Group4.png"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
