import 'package:banas_dairy/Screens/search.dart';
import 'package:banas_dairy/Screens/shopping.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class product extends StatefulWidget {
  @override
  _productState createState() => _productState();
}

class _productState extends State<product> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
            iconTheme: IconThemeData(color: Colors.black),
            backgroundColor: Color((0xffB6F0FF)),
            toolbarHeight: 70,
            elevation: 0,
            title: Container(
              margin: EdgeInsets.only(left: 20),
              child: Image.asset(
                'assets/images/logo.png',
                width: 80,
              ),
            ),
            actions: [
              Container(
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.search),
                ),
              ),
              Container(
                width: 22,
                child: Icon(Icons.mic),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                width: 22,
                child: Icon(Icons.notifications),
              ),
              SizedBox(
                width: 10,
              ),
            ]),
        drawer: Drawer(
          backgroundColor: Color(0xfff5f9ff),
          child: ListView(
            // padding: EdgeInsets.only(left: 10, right: 10),
            children: <Widget>[
              Padding(padding: EdgeInsets.only(top: 20)),
              ListTile(
                leading: Padding(
                  padding: EdgeInsets.all(0),
                  child: Image.asset('assets/images/profile.png'),
                ),
                title: Text(
                  'Patel Hirabhai',
                  style: TextStyle(
                    fontSize: 22,
                  ),
                ),
                onTap: () => {},
              ),
              const Divider(
                height: 10,
                thickness: 1,
                color: Colors.black,
              ),
              ListTile(
                leading: Padding(
                  padding: EdgeInsets.all(0),
                  child: Image.asset('assets/images/home.png'),
                ),
                title: Text(
                  'Home',
                  style: TextStyle(
                    fontSize: 22,
                    color: Color(0xff062F7E),
                  ),
                ),
                onTap: () => {Navigator.pushNamed(context, 'employee_home')},
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                leading: Padding(
                  padding: EdgeInsets.all(0),
                  child: Image.asset('assets/images/email.png'),
                ),
                title: Text(
                  'Email',
                  style: TextStyle(
                    fontSize: 22,
                    color: Color(0xff062F7E),
                  ),
                ),
                onTap: () => {Navigator.pushNamed(context, 'email')},
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                leading: Padding(
                  padding: EdgeInsets.all(0),
                  child: Image.asset('assets/images/news.png'),
                ),
                title: Text(
                  'News',
                  style: TextStyle(
                    fontSize: 22,
                    color: Color(0xff062F7E),
                  ),
                ),
                onTap: () => {},
              ),
              SizedBox(
                height: 5,
              ),
              ListTile(
                leading: Padding(
                  padding: EdgeInsets.all(0),
                  child: Image.asset('assets/images/history.png'),
                ),
                title: Text(
                  'History',
                  style: TextStyle(
                    fontSize: 22,
                    color: Color(0xff062F7E),
                  ),
                ),
                onTap: () => {},
              ),
              SizedBox(
                height: 5,
              ),
              ListTile(
                leading: Padding(
                  padding: EdgeInsets.all(0),
                  child: Image.asset('assets/images/newproduct.png'),
                ),
                title: Text(
                  'Product',
                  style: TextStyle(
                    fontSize: 22,
                    color: Color(0xff062F7E),
                  ),
                ),
                onTap: () => {},
              ),
              SizedBox(
                height: 5,
              ),
              ListTile(
                leading: Padding(
                  padding: EdgeInsets.all(0),
                  child: Image.asset('assets/images/contact.png'),
                ),
                title: Text(
                  'Contact Dairy',
                  style: TextStyle(
                    fontSize: 22,
                    color: Color(0xff062F7E),
                  ),
                ),
                onTap: () => {},
              ),
              SizedBox(
                height: 5,
              ),
              ListTile(
                leading: Padding(
                  padding: EdgeInsets.all(0),
                  child: Image.asset('assets/images/onlineradio.png'),
                ),
                title: Text(
                  'Online Radio',
                  style: TextStyle(
                    fontSize: 22,
                    color: Color(0xff062F7E),
                  ),
                ),
                onTap: () => {},
              ),
              SizedBox(
                height: 5,
              ),
              ListTile(
                leading: Padding(
                  padding: EdgeInsets.all(0),
                  child: Image.asset('assets/images/annualreport.png'),
                ),
                title: Text(
                  'Annual Report',
                  style: TextStyle(
                    fontSize: 22,
                    color: Color(0xff062F7E),
                  ),
                ),
                onTap: () => {},
              ),
              SizedBox(
                height: 5,
              ),
              ListTile(
                leading: Padding(
                  padding: EdgeInsets.all(0),
                  child: Image.asset('assets/images/switchuser.png'),
                ),
                title: Text(
                  'Switch User',
                  style: TextStyle(
                    fontSize: 22,
                    color: Color(0xff062F7E),
                  ),
                ),
                onTap: () => {},
              ),
              SizedBox(
                height: 5,
              ),
              ListTile(
                leading: Padding(
                  padding: EdgeInsets.all(0),
                  child: Image.asset('assets/images/logout.png'),
                ),
                title: Text(
                  'Logout',
                  style: TextStyle(
                    fontSize: 22,
                    color: Color(0xff062F7E),
                  ),
                ),
                onTap: () => {},
              ),
              SizedBox(
                height: 5,
              ),
            ],
          ),
        ),
        body: AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.light,
          child: Stack(children: <Widget>[
            Container(
              height: double.infinity,
              width: double.infinity,
              child: SingleChildScrollView(
                physics: AlwaysScrollableScrollPhysics(),
                child: Container(
                    margin: EdgeInsets.only(top: 10, left: 10, right: 10),
                    color: Color((0xffF5F5F5)),
                    child: Container(
                      height: 700,
                      width: 500,
                      decoration: new BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(15)),
                      child: InkWell(
                        onTap: () {},
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                    padding:
                                        EdgeInsets.only(left: 20, top: 12)),
                                Text(
                                  "Products",
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Color((0xff000AFF)),
                                  ),
                                  textAlign: TextAlign.end,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 200),
                                  child: IconButton(
                                    icon: Icon(Icons.search,
                                        color: Color(0xff000AFF)),
                                    onPressed: () {
                                      showSearch(
                                          context: context,
                                          delegate: DataSearch());
                                    },
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Card(
                                  margin: EdgeInsets.only(left: 20, top: 20),
                                  elevation: 5,
                                  color: Color((0xffFFFFFF)),
                                  child: new InkWell(
                                    child: Container(
                                      height: 150,
                                      width: 150,
                                      decoration: new BoxDecoration(
                                        border: Border.all(
                                            color: Colors.lightBlue, width: 2),
                                        shape: BoxShape.rectangle,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      padding: const EdgeInsets.only(
                                          left: 16, top: 20, right: 15),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                              'assets/images/img_1.png'),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            'chocolate',
                                            style: TextStyle(
                                              color: Color((0xff000000)),
                                              fontSize: 20,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => shopping()),
                                      );
                                    },
                                  ),
                                ),
                                Card(
                                  margin: EdgeInsets.only(
                                      left: 35, top: 20, right: 15),
                                  elevation: 5,
                                  color: Color((0xffFFFFFF)),
                                  child: Container(
                                    height: 150,
                                    width: 150,
                                    decoration: new BoxDecoration(
                                      border: Border.all(
                                          color: Colors.lightBlue, width: 2),
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    padding: const EdgeInsets.only(
                                        left: 20, top: 10, right: 20),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          'assets/images/img_2.png',
                                          height: 90,
                                        ),
                                        Text(
                                          'Milk',
                                          style: TextStyle(
                                              color: Color((0xff000000)),
                                              fontSize: 20),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Card(
                                  margin: EdgeInsets.only(
                                      left: 20, top: 20, right: 15),
                                  elevation: 5,
                                  color: Color((0xffFFFFFF)),
                                  child: Container(
                                    height: 150,
                                    width: 150,
                                    decoration: new BoxDecoration(
                                      border: Border.all(
                                          color: Colors.lightBlue, width: 2),
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.circular(5),
                                      /*  image: DecorationImage(
                                image: AssetImage("assets/images/img_5.png",
                                ),
                                alignment: Alignment.topCenter,
                              ),*/
                                    ),
                                    padding: const EdgeInsets.only(
                                        left: 16, top: 20, right: 15),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          'assets/images/img_3.png',
                                          height: 90,
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          'Masti Dahi',
                                          style: TextStyle(
                                              color: Color((0xff000000)),
                                              fontSize: 20),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Card(
                                  margin: EdgeInsets.only(left: 20, top: 20),
                                  elevation: 5,
                                  color: Color((0xffFFFFFF)),
                                  child: Container(
                                    height: 150,
                                    width: 150,
                                    decoration: new BoxDecoration(
                                      border: Border.all(
                                          color: Colors.lightBlue, width: 2),
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.circular(5),
                                      /*image: DecorationImage(
                                image: AssetImage("assets/images/img_5.png",
                                ),
                                alignment: Alignment.topCenter,
                              ),*/
                                    ),
                                    padding: const EdgeInsets.only(
                                        left: 16, top: 20, right: 15),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          'assets/images/img_5.png',
                                          height: 90,
                                        ), // Amul Lassi
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          'Amul Lassi',
                                          style: TextStyle(
                                              color: Color((0xff000000)),
                                              fontSize: 20),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Card(
                                  margin: EdgeInsets.only(left: 20, top: 20),
                                  elevation: 5,
                                  color: Color((0xffFFFFFF)),
                                  child: Container(
                                    height: 150,
                                    width: 150,
                                    decoration: new BoxDecoration(
                                      border: Border.all(
                                          color: Colors.lightBlue, width: 2),
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    padding: const EdgeInsets.only(
                                        left: 16, top: 20, right: 15),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          'assets/images/img_6.png',
                                          height: 80,
                                        ),
                                        SizedBox(
                                          height: 14,
                                        ),
                                        Text(
                                          'Butter',
                                          style: TextStyle(
                                              color: Color((0xff000000)),
                                              fontSize: 20),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Card(
                                  margin: EdgeInsets.only(left: 34, top: 20),
                                  elevation: 5,
                                  color: Color((0xffFFFFFF)),
                                  child: Container(
                                    height: 150,
                                    width: 150,
                                    decoration: new BoxDecoration(
                                      border: Border.all(
                                          color: Colors.lightBlue, width: 2),
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    padding: const EdgeInsets.only(
                                        left: 16, top: 20, right: 15),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Image.asset('assets/images/img_4.png'),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          'Chocolate',
                                          style: TextStyle(
                                              color: Color((0xff000000)),
                                              fontSize: 20),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
