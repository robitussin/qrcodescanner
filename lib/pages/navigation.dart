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
                    TextButton.icon(
                      icon: Icon(Icons.qr_code_scanner,
                          color: Colors.white, size: 30.0),
                      label: Text(
                        'SCAN',
                        style: TextStyle(
                          color: Colors.white,
                          letterSpacing: 2.0,
                          fontSize: 12,
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/scan');
                      },
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                Row(
                  children: <Widget>[
                    TextButton.icon(
                      icon:
                          Icon(Icons.history, color: Colors.white, size: 30.0),
                      label: Text(
                        'HISTORY',
                        style: TextStyle(
                          color: Colors.white,
                          letterSpacing: 2.0,
                          fontSize: 12,
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/history');
                      },
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                Row(
                  children: <Widget>[
                    TextButton.icon(
                      icon: Icon(Icons.qr_code_2,
                          color: Colors.white, size: 30.0),
                      label: Text(
                        'MY QR',
                        style: TextStyle(
                          color: Colors.white,
                          letterSpacing: 2.0,
                          fontSize: 12,
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/myqr');
                      },
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                Row(
                  children: <Widget>[
                    TextButton.icon(
                      icon:
                          Icon(Icons.settings, color: Colors.white, size: 30.0),
                      label: Text(
                        'SETTINGS',
                        style: TextStyle(
                          color: Colors.white,
                          letterSpacing: 2.0,
                          fontSize: 12,
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/settings');
                      },
                    ),
                  ],
                ),
                SizedBox(height: 250.0),
                Row(
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/koala.jpg'),
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
