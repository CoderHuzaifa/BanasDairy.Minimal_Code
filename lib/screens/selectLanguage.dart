import 'package:banas_dairy/Screens/userType.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SelectLanguage extends StatefulWidget {
  @override
  State<SelectLanguage> createState() => _SelectLanguageState();
}

class _SelectLanguageState extends State<SelectLanguage> {
  String dropdownValue = 'English';
  List<String> dropdownItems = <String>[
    'English',
    'Gujarati',
    'Hindi',
  ];

  final List locale = [
    {'name': 'ENGLISH', 'locale': Locale('en', 'US')},
    {'name': 'નમસ્તે', 'locale': Locale('guj', 'IN')},
    {'name': 'हिंदी', 'locale': Locale('hi', 'IN')},
  ];

  updateLanguage(Locale locale) {
    Get.back();
    Get.updateLocale(locale);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
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
                    height: 80,
                    child: Image.asset("assets/images/logonew.png")),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
              "Select Language".tr,
              style: TextStyle(
                  color: Color.fromRGBO(6, 47, 126, 1),
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: 250,
            height: 65,
            child: DropdownButtonFormField<String>(
              focusColor: Colors.indigo,
              isExpanded: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              )),
              value: dropdownValue,
              icon: Icon(Icons.arrow_drop_down),
              iconSize: 36,
              elevation: 8,
              style: TextStyle(color: Colors.deepPurple, fontSize: 22),
              onTap: () {},
              onChanged: (String newValue) {
                setState(() {
                  dropdownValue = newValue;
                });
              },
              items:
                  dropdownItems.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          SizedBox(
            height: 45,
            width: MediaQuery.of(context).devicePixelRatio * 70,
            child: MaterialButton(
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SelectUser())),
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
