import 'package:banas_dairy/Screens/farmer.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget customAppBar(
      {Widget titles, Widget lead, Color color, List<Widget> actions}) {
    return AppBar(
      actions: actions,
      title: titles,
      leading: lead,
      elevation: 0,
      backgroundColor: color,
    );
  }

  Widget customCarousel({List<Widget> items}) {
    return CarouselSlider(
      items: items,
      options: CarouselOptions(
        height: 180.0,
        enlargeCenterPage: true,
        autoPlay: true,
        aspectRatio: 16 / 9,
        autoPlayCurve: Curves.fastOutSlowIn,
        enableInfiniteScroll: true,
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        viewportFraction: 1,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: ElevatedButton(
            onPressed: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => FarmerScreen())),
            child: Text("Farmer"),
          ),
        ),
        appBar: customAppBar(
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  color: Colors.black,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.mic,
                  color: Colors.black,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.notifications,
                  color: Colors.black,
                ))
          ],
          titles: Image.asset(
            "assets/images/logo.png",
            height: 30,
          ),
          color: Color.fromRGBO(182, 240, 255, 7),
          // lead: IconButton(
          //     onPressed: () {},
          //     icon: Icon(
          //       Icons.menu,
          //       color: Colors.black,
          //     ))),),
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(children: [
            Stack(
              children: <Widget>[
                Image.asset(
                  "assets/images/homerect.png",
                  height: 150,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.fill,
                ),
                customCarousel(items: [Image.asset("assets/images/amul.png")])
              ],
            ),
            Container(
              width: 320,
              height: 120,
              child: Stack(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 120,
                      height: 100,
                      child: Card(
                        color: Color.fromARGB(255, 238, 221, 221),
                        child: ListTile(
                          subtitle: Text("40% off"),
                          title: Text(
                            "Exclusive offer",
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 20.0,
                      left: 150,
                    ),
                    child: SizedBox(
                        width: 160,
                        child: Image.asset("assets/images/dark.png")),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black,
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Color.fromRGBO(90, 0, 98, 1.5),
                      Color.fromRGBO(0, 92, 121, 1),
                    ],
                  )),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Text(
                      "Categories",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 30.0, top: 10),
                  child: Text(
                    "See all→",
                    style: TextStyle(color: Colors.red, fontSize: 16),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                    height: 70,
                    width: 70,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40)),
                      child: Image.asset(
                        "assets/images/paneer.png",
                        color: Color.fromRGBO(214, 240, 255, 10),
                      ),
                    )),
                SizedBox(
                    height: 70,
                    width: 70,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40)),
                      child: Image.asset(
                        "assets/images/paneer.png",
                        color: Color.fromRGBO(214, 240, 255, 10),
                      ),
                    )),
                SizedBox(
                    height: 70,
                    width: 70,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40)),
                      child: Image.asset(
                        "assets/images/paneer.png",
                        color: Color.fromRGBO(214, 240, 255, 10),
                      ),
                    ))
              ],
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Text(
                  "Popular Category",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 80,
                  width: 90,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0)),
                    child: Image.asset("assets/milk.png"),
                    color: Color.fromRGBO(214, 240, 255, 10),
                  ),
                ),
                SizedBox(
                  height: 80,
                  width: 90,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0)),
                    child: Image.asset("assets/milk.png"),
                    color: Color.fromRGBO(214, 240, 255, 10),
                  ),
                ),
                SizedBox(
                  height: 80,
                  width: 90,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0)),
                    child: Image.asset("assets/milk.png"),
                    color: Color.fromRGBO(214, 240, 255, 10),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 200,
              width: MediaQuery.of(context).size.width - 20,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "News & Update",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                height: 120,
                                width: 120,
                                child: Card(
                                    child: Image.network(
                                  "https://feeds.abplive.com/onecms/images/uploaded-images/2022/03/02/49419a046820fac78b2090875cdeee31_original.jpeg?impolicy=abp_cdn&imwidth=720",
                                  fit: BoxFit.fill,
                                )),
                              ),
                              SizedBox(
                                height: 120,
                                width: 120,
                                child: Card(
                                    child: Image.network(
                                  "https://feeds.abplive.com/onecms/images/uploaded-images/2022/03/02/49419a046820fac78b2090875cdeee31_original.jpeg?impolicy=abp_cdn&imwidth=720",
                                  fit: BoxFit.fill,
                                )),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Column(
                              children: [
                                Text(
                                  "Necessary For India Too \nTo Be Self-Reliant",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )),
                ),
                color: Color.fromRGBO(131, 187, 254, 1),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "RECENT AWARD RECIEVED",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            // Stack(
            //   clipBehavior: Clip.none,
            //   children: [
            //     customSquare(
            //         child: Card(
            //       elevation: 0.0,
            //       color: Colors.transparent,
            //       shape: RoundedRectangleBorder(
            //           borderRadius: BorderRadius.circular(30.0)),
            //       child: Column(
            //         crossAxisAlignment: CrossAxisAlignment.center,
            //         mainAxisAlignment: MainAxisAlignment.center,
            //         children: [
            //           SizedBox(
            //             height: 10,
            //           ),
            //           Text("Amul Dark Chocolate",
            //               textAlign: TextAlign.center,
            //               style: TextStyle(
            //                   fontWeight: FontWeight.w500, fontSize: 12)),
            //           SizedBox(
            //             height: 20,
            //           ),
            //         ],
            //       ),
            //     )),
            //     Positioned(
            //       top: 1.5,
            //       left: 30,
            //       child: Image(
            //         image: AssetImage("assets/choco.png"),
            //       ),
            //     ),
            //   ],
            // ),

            Image.asset(
              "assets/images/award.jpeg",
            ),

            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Text(
                  "Our Management",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.black26,
                ),
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.black26,
                ),
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.black26,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Shri Shankar \nChaudhary",
                  style: TextStyle(fontSize: 12),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "Shri Bhavanbhai \nRabari",
                  softWrap: true,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
                Text(
                  "Shri Sangram \nChaudhary",
                  softWrap: true,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    "Chairman",
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 12),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: Text(
                    "Vice-Chairman",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 12),
                  ),
                ),
                Text(
                  "Managing Director",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),

            // Row(
            //   children: <Widget>[
            //     ListTile(
            //       title: CircleAvatar(
            //         radius: 20,
            //         backgroundColor: Color.fromARGB(255, 192, 185, 185),
            //       ),
            //       subtitle: Text("SHRI SHANKAR CHAUDHARY"),
            //     )
            //   ],
            // )
          ]),
        ));
  }
}
