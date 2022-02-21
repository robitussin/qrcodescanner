import 'package:flutter/material.dart';

class Navigation extends StatefulWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: <Color>[
                Color.fromARGB(255, 207, 89, 228),
                Color.fromARGB(255, 207, 35, 193),
                Color.fromARGB(255, 250, 1, 208),
              ],
            ),
          ),
          child: Padding(
            padding: EdgeInsets.fromLTRB(
              20.0,
              50.0,
              100.0,
              0.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(70),
                  child: TextField(
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Search',
                      hintStyle: TextStyle(
                        color: Colors.white.withOpacity(0.5),
                      ),
                      fillColor: Colors.white.withOpacity(0.2),
                      filled: true,
                      suffixIcon: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 100.0),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.qr_code_scanner,
                      color: Colors.white,
                      size: 30.0,
                    ),
                    SizedBox(width: 30.0),
                    Text(
                      'SCAN',
                      style: TextStyle(
                        color: Colors.white,
                        letterSpacing: 2.0,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.history,
                      color: Colors.white,
                      size: 30.0,
                    ),
                    SizedBox(width: 30.0),
                    Text(
                      'HISTORY',
                      style: TextStyle(
                        color: Colors.white,
                        letterSpacing: 2.0,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.qr_code_2,
                      color: Colors.white,
                      size: 30.0,
                    ),
                    SizedBox(width: 30.0),
                    Text(
                      'MY QR',
                      style: TextStyle(
                        color: Colors.white,
                        letterSpacing: 2.0,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.settings,
                      color: Colors.white,
                      size: 30.0,
                    ),
                    SizedBox(width: 30.0),
                    Text(
                      'SETTINGS',
                      style: TextStyle(
                        color: Colors.white,
                        letterSpacing: 2.0,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 300.0),
                Row(
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/cat.jpg'),
                    ),
                    SizedBox(width: 30.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'ELIZER PONIO JR',
                          style: TextStyle(
                            color: Colors.white,
                            letterSpacing: 1.0,
                          ),
                        ),
                        Text(
                          'CERTIFICATE ID: 12345',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.5),
                            fontSize: 12.0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
