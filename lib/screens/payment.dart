import 'package:banas_dairy/utility/CustomTextStyle.dart';
import 'package:flutter/material.dart';

class payment extends StatefulWidget {
  @override
  _paymentState createState() => _paymentState();
}

class _paymentState extends State<payment> {
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
      ),
      body: Builder(builder: (context) {
        return Column(
          children: <Widget>[
            Expanded(
              child: Container(
                child: ListView(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 20, left: 10),
                      child: Text(
                        "Select a payment method",
                        style: CustomTextStyle.textFormFieldSemiBold
                            .copyWith(fontSize: 20),
                      ),
                    ),
                    selectedupi(),
                    selectedpayondilvery(),
                    buildContinueBtn(),
                  ],
                ),
              ),
            )
          ],
        );
      }),
    );
  }
}

selectedupi() {
  return Container(
    margin: EdgeInsets.all(20),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(4)),
    ),
    child: Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(4))),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.8),
              spreadRadius: 5,
              blurRadius: 5,
              offset: Offset(0, 7), // changes position of shadow
            ),
          ],
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        padding: EdgeInsets.only(left: 12, top: 8, right: 12),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ListTile(
                leading: Radio(
                  value: payment,
                  groupValue: _paymentState,
                  onChanged: (payment) {},
                ),
                title: Text(
                  "UPI / Netbanking",
                  style: CustomTextStyle.textFormFieldSemiBold
                      .copyWith(fontSize: 14),
                ),
              ),
            ]),
      ),
    ),
  );
}

selectedpayondilvery() {
  return Container(
    margin: EdgeInsets.only(
      left: 20,
      right: 20,
    ),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(4)),
    ),
    child: Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(5))),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.8),
              spreadRadius: 5,
              blurRadius: 5,
              offset: Offset(0, 7), // changes position of shadow
            ),
          ],
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        padding: EdgeInsets.only(left: 12, top: 8, right: 12),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ListTile(
                leading: Radio(
                  value: payment,
                  groupValue: _paymentState,
                  onChanged: (payment) {},
                ),
                title: Text(
                  "Pay on delivery",
                  style: CustomTextStyle.textFormFieldSemiBold
                      .copyWith(fontSize: 14),
                ),
              ),
              SizedBox(
                height: 6,
              ),
            ]),
      ),
    ),
  );
}

Widget buildContinueBtn() {
  return Container(
    margin: EdgeInsets.only(right: 60, left: 60),
    padding: EdgeInsets.symmetric(vertical: 25),
    child: RaisedButton(
      elevation: 5,
      onPressed: () {
        var context;
        showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            builder: (context) => SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: payment(),
                  ),
                ));
      },
      padding: EdgeInsets.all(10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      color: Color(0xfffbff21),
      child: Text(
        'Continue',
        style: TextStyle(
            color: Color(0xf0000000),
            fontSize: 18,
            fontWeight: FontWeight.bold),
      ),
    ),
  );
}

Widget buildsheet() => Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            "Choose your bank",
            style: CustomTextStyle.textFormFieldBold
                .copyWith(fontSize: 30, color: Color(0xff0B096B)),
          ),
          Container(
            child: Column(
              children: <Widget>[
                Image.asset("assets/images/axisbank.png"),
                Text(
                  "HDFC bank",
                  style: CustomTextStyle.textFormFieldSemiBold
                      .copyWith(fontSize: 14),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: <Widget>[
                Image.asset("assets/images/hdfcbank.png"),
                Text(
                  "Axis Bank",
                  style: CustomTextStyle.textFormFieldSemiBold
                      .copyWith(fontSize: 14),
                ),
              ],
            ),
          ),
        ],
      ),
    );
