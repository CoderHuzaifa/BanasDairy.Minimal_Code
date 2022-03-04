import 'package:flutter/material.dart';
import 'package:banas_dairy/utility/CustomTextStyle.dart';
import 'package:banas_dairy/utility/CustomUtils.dart';

import 'CheckOutPage.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: Icon(Icons.arrow_back_ios_sharp),
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
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey.shade100,
      body: Builder(
        builder: (context) {
          return ListView(
            children: <Widget>[
              createHeader(),
              /*createSubTitle()*/ createCartList(),
              footer(context)
            ],
          );
        },
      ),
    );
  }

  footer(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 30),
                child: Text(
                  "Total",
                  style: CustomTextStyle.textFormFieldMedium
                      .copyWith(color: Colors.grey, fontSize: 12),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 30),
                child: Text(
                  "\₹150.00",
                  style: CustomTextStyle.textFormFieldBlack
                      .copyWith(color: Colors.black, fontSize: 14),
                ),
              ),
            ],
          ),
          Utils.getSizedBox(height: 8),
          // RaisedButton(
          //   onPressed: () {
          //     Navigator.push(context,
          //         new MaterialPageRoute(builder: (context) => CheckOutPage()));
          //   },
          //   color: Color(0xfffbff21),
          //   padding: EdgeInsets.only(top: 12, left: 60, right: 60, bottom: 12),
          //   shape: RoundedRectangleBorder(
          //       borderRadius: BorderRadius.all(Radius.circular(24))),
          //   child: Text(
          //     "Checkout",
          //     style: CustomTextStyle.textFormFieldSemiBold
          //         .copyWith(color: Colors.black),
          //   ),
          // ),
          Utils.getSizedBox(height: 8),
        ],
      ),
      margin: EdgeInsets.only(top: 16),
    );
  }

  createHeader() {
    return Container(
      alignment: Alignment.topCenter,
      child: Text(
        "MY CART",
        style: CustomTextStyle.textFormFieldBold
            .copyWith(fontSize: 30, color: Color(0xff0B096B)),
      ),
      margin: EdgeInsets.only(left: 12, top: 12),
    );
  }

  /* createSubTitle() {
    return Container(
      alignment: Alignment.topLeft,
      child: Text(
        "Total(3) Items",
        style: CustomTextStyle.textFormFieldBold.copyWith(fontSize: 12, color: Colors.grey),
      ),
      margin: EdgeInsets.only(left: 12, top: 4),
    );
  }*/

  createCartList() {
    return ListView.builder(
      shrinkWrap: true,
      primary: false,
      itemBuilder: (context, position) {
        return createCartListItem();
      },
      itemCount: 3,
    );
  }

  createCartListItem() {
    return Stack(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 16, right: 16, top: 16),
          decoration: BoxDecoration(
              color: Color(0xffedf0ff),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.8),
                  blurRadius: 5,
                  offset: Offset(0, 6), // changes position of shadow
                ),
              ],
              borderRadius: BorderRadius.all(Radius.circular(16))),
          child: Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(right: 8, left: 8, top: 8, bottom: 8),
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(14)),
                    color: Colors.white,
                    image: DecorationImage(
                        image: AssetImage("assets/images/choco1.png"))),
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(right: 8, top: 4),
                        child: Text(
                          "Amul Classic Dark Chocolate",
                          maxLines: 2,
                          softWrap: true,
                          style: CustomTextStyle.textFormFieldSemiBold
                              .copyWith(fontSize: 14),
                        ),
                      ),
                      Utils.getSizedBox(height: 6),
                      Text(
                        "150g",
                        style: CustomTextStyle.textFormFieldRegular
                            .copyWith(color: Colors.grey, fontSize: 14),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "\$299.00",
                              style: CustomTextStyle.textFormFieldBlack
                                  .copyWith(color: Colors.black),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: <Widget>[
                                  Icon(
                                    Icons.remove,
                                    size: 24,
                                    color: Colors.grey.shade700,
                                  ),
                                  Container(
                                    color: Colors.white,
                                    padding: const EdgeInsets.only(
                                        bottom: 2, right: 12, left: 12),
                                    child: Text(
                                      "1",
                                      style:
                                          CustomTextStyle.textFormFieldSemiBold,
                                    ),
                                  ),
                                  Icon(
                                    Icons.add,
                                    size: 24,
                                    color: Colors.grey.shade700,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                flex: 100,
              )
            ],
          ),
        ),
      ],
    );
  }
}
