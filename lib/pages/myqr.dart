import 'package:flutter/material.dart';

class MyQR extends StatefulWidget {
  const MyQR({Key? key}) : super(key: key);

  @override
  _MyQRState createState() => _MyQRState();
}

class _MyQRState extends State<MyQR> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'MY VACCINE CERTIFICATE',
          style: TextStyle(fontSize: 15, letterSpacing: 1.0),
        ),
        backgroundColor: Colors.grey[900],
        centerTitle: true,
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(70.0),
          alignment: Alignment.center,
          child: Column(
            // mainAxisAlignment:
            //      MainAxisAlignment.center, //Center Column contents vertically,
            crossAxisAlignment: CrossAxisAlignment
                .center, //Center Column contents horizontally,
            children: <Widget>[
              Center(
                child: Text(
                  'COVID 19 VACCINE CERTIFICATE',
                  style: TextStyle(
                    fontSize: 15,
                    letterSpacing: 1.0,
                  ),
                ),
              ),
              SizedBox(height: 50),
              Center(
                  child: Text(
                'NAME',
                style: TextStyle(
                  fontSize: 15,
                  letterSpacing: 1.0,
                ),
              )),
              Center(
                  child: Text(
                'ELIZER PONIO JR',
                style: TextStyle(
                  fontSize: 15,
                  letterSpacing: 1.0,
                  color: Colors.grey,
                ),
              )),
              SizedBox(height: 10),
              Center(
                  child: Text(
                'ID',
                style: TextStyle(
                  fontSize: 15,
                  letterSpacing: 1.0,
                ),
              )),
              Center(
                  child: Text(
                '1234567890',
                style: TextStyle(
                  fontSize: 15,
                  letterSpacing: 1.0,
                  color: Colors.grey,
                ),
              )),
              SizedBox(height: 10),
              Expanded(
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/qrcode.jpg'),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Center(
                  child: Text(
                'ISSUED',
                style: TextStyle(
                  fontSize: 15,
                  letterSpacing: 1.0,
                ),
              )),
              Center(
                  child: Text(
                '01/01/2022',
                style: TextStyle(
                  fontSize: 15,
                  letterSpacing: 1.0,
                  color: Colors.grey,
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
