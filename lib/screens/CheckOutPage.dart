
// Comment this Screen for Temp.



// import 'package:banas_dairy/payment.dart';
// import 'package:flutter/material.dart';
// import 'package:banas_dairy/utility/CustomTextStyle.dart';

// class CheckOutPage extends StatefulWidget {
//   @override
//   _CheckOutPageState createState() => _CheckOutPageState();
// }

// class _CheckOutPageState extends State<CheckOutPage> {
//   GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey();

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         key: _scaffoldKey,
//         resizeToAvoidBottomInset: false,
//         appBar: AppBar(
//             leading: Icon(Icons.arrow_back_ios_sharp),
//             iconTheme: IconThemeData(color: Colors.black),
//             backgroundColor: Color((0xffB6F0FF)),
//             toolbarHeight: 70,
//             elevation: 0,
//             title: Container(
//               margin: EdgeInsets.only(left: 20),
//               child: Image.asset(
//                 'assets/images/logo.png',
//                 width: 80,
//               ),
//             ),
//             actions: [
//               Container(
//                 child: IconButton(
//                   onPressed: () {},
//                   icon: Icon(Icons.search),
//                 ),
//               ),
//               Container(
//                 width: 22,
//                 child: Icon(Icons.mic),
//               ),
//               SizedBox(
//                 width: 10,
//               ),
//               Container(
//                 width: 22,
//                 child: Icon(Icons.notifications),
//               ),
//               SizedBox(
//                 width: 10,
//               ),
//             ]),
//         body: Builder(builder: (context) {
//           return Column(
//             children: <Widget>[
//               Expanded(
//                 child: Container(
//                   child: ListView(
//                     children: <Widget>[
//                       Container(
//                         margin: EdgeInsets.only(top: 20, left: 10),
//                         child: Text(
//                           "Select a delivery address",
//                           style: CustomTextStyle.textFormFieldSemiBold
//                               .copyWith(fontSize: 20),
//                         ),
//                       ),
//                       selectedAddressSection(), /* standardDelivery(), checkoutItem(), priceSection()*/
//                     ],
//                   ),
//                 ),
//                 flex: 90,
//               ),
//             ],
//           );
//         }),
//       ),
//     );
//   }

//   selectedAddressSection() {
//     return Container(
//       margin: EdgeInsets.all(20),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.all(Radius.circular(4)),
//       ),
//       child: Card(
//         elevation: 0,
//         shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.all(Radius.circular(4))),
//         child: Container(
//           decoration: BoxDecoration(
//               borderRadius: BorderRadius.all(Radius.circular(4)),
//               border: Border.all(color: Colors.black)),
//           padding: EdgeInsets.only(left: 12, top: 8, right: 12),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: <Widget>[
//               SizedBox(
//                 height: 6,
//               ),
//               Container(
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: <Widget>[
//                     Text(
//                       "XYZ",
//                       style: CustomTextStyle.textFormFieldSemiBold
//                           .copyWith(fontSize: 14),
//                     ),
//                     Container(
//                       padding:
//                           EdgeInsets.only(left: 8, right: 8, top: 4, bottom: 4),
//                       decoration: BoxDecoration(
//                           shape: BoxShape.rectangle,
//                           color: Colors.grey.shade300,
//                           borderRadius: BorderRadius.all(Radius.circular(16))),
//                       child: Text(
//                         "HOME",
//                         style: CustomTextStyle.textFormFieldBlack.copyWith(
//                             color: Colors.indigoAccent.shade200, fontSize: 8),
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//               createAddressText("Palanpur,", 16),
//               createAddressText("Gujarat", 6),
//               SizedBox(
//                 height: 6,
//               ),
//               RichText(
//                 text: TextSpan(children: [
//                   TextSpan(
//                       text: "Mobile : ",
//                       style: CustomTextStyle.textFormFieldMedium
//                           .copyWith(fontSize: 12, color: Colors.grey.shade800)),
//                   TextSpan(
//                       text: "02222673745",
//                       style: CustomTextStyle.textFormFieldBold
//                           .copyWith(color: Colors.black, fontSize: 12)),
//                 ]),
//               ),
//               SizedBox(
//                 height: 16,
//               ),
//               Container(
//                 child: RaisedButton(
//                   elevation: 5,
//                   onPressed: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(builder: (context) => payment()),
//                     );
//                   },
//                   padding: EdgeInsets.only(left: 20, right: 20),
//                   shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(5)),
//                   color: Color(0xfffbff21),
//                   child: Text(
//                     'Deliver to this address',
//                     style: TextStyle(
//                         color: Colors.black,
//                         fontSize: 12,
//                         fontWeight: FontWeight.normal),
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               Container(
//                 color: Colors.grey.shade300,
//                 height: 1,
//                 width: double.infinity,
//               ),
//               addressAction()
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   createAddressText(String strAddress, double topMargin) {
//     return Container(
//       margin: EdgeInsets.only(top: topMargin),
//       child: Text(
//         strAddress,
//         style: CustomTextStyle.textFormFieldMedium
//             .copyWith(fontSize: 12, color: Colors.grey.shade800),
//       ),
//     );
//   }

//   addressAction() {
//     return Container(
//       child: Row(
//         children: <Widget>[
//           Spacer(
//             flex: 2,
//           ),
//           FlatButton(
//             onPressed: () {},
//             child: Text(
//               "Edit / Change",
//               style: CustomTextStyle.textFormFieldSemiBold
//                   .copyWith(fontSize: 12, color: Colors.indigo.shade700),
//             ),
//             splashColor: Colors.transparent,
//             highlightColor: Colors.transparent,
//           ),
//           Spacer(
//             flex: 3,
//           ),
//           Container(
//             height: 20,
//             width: 1,
//             color: Colors.grey,
//           ),
//           Spacer(
//             flex: 3,
//           ),
//           FlatButton(
//             onPressed: () {},
//             child: Text("Add New Address",
//                 style: CustomTextStyle.textFormFieldSemiBold
//                     .copyWith(fontSize: 12, color: Colors.indigo.shade700)),
//             splashColor: Colors.transparent,
//             highlightColor: Colors.transparent,
//           ),
//           Spacer(
//             flex: 2,
//           ),
//         ],
//       ),
//     );
//   }

//   /*standardDelivery() {
//     return Container(
//       decoration: BoxDecoration(
//           borderRadius: BorderRadius.all(Radius.circular(4)),
//           border: Border.all(color: Colors.tealAccent.withOpacity(0.4), width: 1),
//           color: Colors.tealAccent.withOpacity(0.2)),
//       margin: EdgeInsets.all(8),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.start,
//         children: <Widget>[
//           Radio(
//             value: 1,
//             groupValue: 1,
//             onChanged: (isChecked) {},
//             activeColor: Colors.tealAccent.shade400,
//           ),
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               Text(
//                 "Standard Delivery",
//                 style: CustomTextStyle.textFormFieldMedium
//                     .copyWith(color: Colors.black, fontSize: 14, fontWeight: FontWeight.w600),
//               ),
//               SizedBox(
//                 height: 5,
//               ),
//               Text(
//                 "Get it by 20 jul - 27 jul | Free Delivery",
//                 style: CustomTextStyle.textFormFieldMedium.copyWith(
//                   color: Colors.black,
//                   fontSize: 12,
//                 ),
//               )
//             ],
//           ),
//         ],
//       ),
//     );
//   }*/

//   /*checkoutItem() {
//     return Container(
//       margin: EdgeInsets.all(4),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.all(Radius.circular(4)),
//       ),
//       child: Card(
//         elevation: 0,
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(4))),
//         child: Container(
//           decoration: BoxDecoration(
//               borderRadius: BorderRadius.all(Radius.circular(4)), border: Border.all(color: Colors.grey.shade200)),
//           padding: EdgeInsets.only(left: 12, top: 8, right: 12, bottom: 8),
//           child: ListView.builder(
//             itemBuilder: (context, position) {
//       //        return checkoutListItem();
//             },
//             itemCount: 3,
//             shrinkWrap: true,
//             primary: false,
//             scrollDirection: Axis.vertical,
//           ),
//         ),
//       ),
//     );
//   }
// */
//   /*checkoutListItem() {
//     return Container(
//       margin: EdgeInsets.symmetric(vertical: 4),
//       child: Row(
//         children: <Widget>[
//           Container(
//             child: Image(
//               image: AssetImage(
//                 "images/details_shoes_image.webp",
//               ),
//               width: 35,
//               height: 45,
//               fit: BoxFit.fitHeight,
//             ),
//             decoration: BoxDecoration(border: Border.all(color: Colors.grey, width: 1)),
//           ),
//           SizedBox(
//             width: 8,
//           ),
//           RichText(
//             text: TextSpan(children: [
//               TextSpan(
//                   text: "Estimated Delivery : ", style: CustomTextStyle.textFormFieldMedium.copyWith(fontSize: 12)),
//               TextSpan(
//                   text: "21 Jul 2019 ",
//                   style: CustomTextStyle.textFormFieldMedium.copyWith(fontSize: 12, fontWeight: FontWeight.w600))
//             ]),
//           )
//         ],
//       ),
//     );
//   }*/

//   /*priceSection() {
//     return Container(
//       margin: EdgeInsets.all(4),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.all(Radius.circular(4)),
//       ),
//       child: Card(
//         elevation: 0,
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(4))),
//         child: Container(
//           decoration: BoxDecoration(
//               borderRadius: BorderRadius.all(Radius.circular(4)), border: Border.all(color: Colors.grey.shade200)),
//           padding: EdgeInsets.only(left: 12, top: 8, right: 12, bottom: 8),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: <Widget>[
//               SizedBox(
//                 height: 4,
//               ),
//               Text(
//                 "PRICE DETAILS",
//                 style: CustomTextStyle.textFormFieldMedium
//                     .copyWith(fontSize: 12, color: Colors.black, fontWeight: FontWeight.w600),
//               ),
//               SizedBox(
//                 height: 4,
//               ),
//               Container(
//                 width: double.infinity,
//                 height: 0.5,
//                 margin: EdgeInsets.symmetric(vertical: 4),
//                 color: Colors.grey.shade400,
//               ),
//               SizedBox(
//                 height: 8,
//               ),
//               createPriceItem("Total MRP", getFormattedCurrency(5197), Colors.grey.shade700),
//               createPriceItem("Bag discount", getFormattedCurrency(3280), Colors.teal.shade300),
//               createPriceItem("Tax", getFormattedCurrency(96), Colors.grey.shade700),
//               createPriceItem("Order Total", getFormattedCurrency(2013), Colors.grey.shade700),
//               createPriceItem("Delievery Charges", "FREE", Colors.teal.shade300),
//               SizedBox(
//                 height: 8,
//               ),
//               Container(
//                 width: double.infinity,
//                 height: 0.5,
//                 margin: EdgeInsets.symmetric(vertical: 4),
//                 color: Colors.grey.shade400,
//               ),
//               SizedBox(
//                 height: 8,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: <Widget>[
//                   Text(
//                     "Total",
//                     style: CustomTextStyle.textFormFieldSemiBold.copyWith(color: Colors.black, fontSize: 12),
//                   ),
//                   Text(
//                     getFormattedCurrency(2013),
//                     style: CustomTextStyle.textFormFieldMedium.copyWith(color: Colors.black, fontSize: 12),
//                   )
//                 ],
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }*/

//   String getFormattedCurrency(double amount) {
//     MoneyFormatter fmf = MoneyFormatter(amount: amount);
//     fmf.settings
//       ..symbol = "₹"
//       ..thousandSeparator = ","
//       ..decimalSeparator = "."
//       ..fractionDigits = 2;
//     return fmf.output.symbolOnLeft;
//   }

//   createPriceItem(String key, String value, Color color) {
//     return Container(
//       padding: EdgeInsets.symmetric(horizontal: 0, vertical: 3),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: <Widget>[
//           Text(
//             key,
//             style: CustomTextStyle.textFormFieldMedium
//                 .copyWith(color: Colors.grey.shade700, fontSize: 12),
//           ),
//           Text(
//             value,
//             style: CustomTextStyle.textFormFieldMedium
//                 .copyWith(color: color, fontSize: 12),
//           )
//         ],
//       ),
//     );
//   }
// }


