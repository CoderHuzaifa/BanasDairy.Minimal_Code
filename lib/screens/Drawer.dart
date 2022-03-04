import 'package:flutter/material.dart';

class drawer extends StatefulWidget {
  @override
  _drawerState createState() => _drawerState();
}

class _drawerState extends State<drawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          // padding: EdgeInsets.only(left: 10, right: 10),
          children: <Widget>[
            Padding(padding: EdgeInsets.only(top: 20)),
            ListTile(
              leading: Padding(
                padding: EdgeInsets.all(0),
                child: Image.asset('assets/profile-drawer.png'),
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
                child: Image.asset('assets/home-drawer.png'),
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
                child: Image.asset('assets/news-drawer.png'),
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
                child: Image.asset('assets/history-drawer.png'),
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
                child: Image.asset('assets/radio-drawer.png'),
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
                child: Image.asset('assets/annual-report-drawer.png'),
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
                child: Image.asset('assets/hr-report-drawer.png'),
              ),
              title: Text(
                'HR Report',
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
                child: Image.asset('assets/apply-for-leave-drawer.png'),
              ),
              title: Text(
                'Apply for Leave',
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
                child: Image.asset('assets/team-member-drawer.png'),
              ),
              title: Text(
                'Team Member Status',
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
                child: Image.asset('assets/new-product-drawer.png'),
              ),
              title: Text(
                'New Product',
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
    );
  }
}
