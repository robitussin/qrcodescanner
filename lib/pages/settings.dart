import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool? isCheckedDuplicates = true;
  bool? isCheckedScans = true;
  bool isBlackorWhite = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        title: Container(
          child: Column(
            children: <Widget>[
              Text(
                'SETTINGS',
                style: TextStyle(
                  fontSize: 15,
                  letterSpacing: 1.0,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        centerTitle: true, // like this!
        actions: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              'Reset',
              style: TextStyle(color: Colors.black, fontSize: 15),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
            child: Column(
          children: <Widget>[
            Expanded(
              child: Text('GENERAL'),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Text('KEEP DUPLICATES'),
                  Checkbox(
                    checkColor: Colors.white,
                    value: isCheckedDuplicates,
                    onChanged: (bool? value) {
                      setState(() {
                        isCheckedDuplicates = value;
                      });
                    },
                  ),
                ],
              ),
            ),
            Divider(height: 5.0, color: Colors.grey),
            Expanded(
              child: Row(
                children: <Widget>[
                  Text('ADD SCANS TO HISTORY'),
                  Checkbox(
                    checkColor: Colors.white,
                    value: isCheckedScans,
                    onChanged: (bool? value) {
                      setState(() {
                        isCheckedScans = value;
                      });
                    },
                  ),
                ],
              ),
            ),
            Divider(height: 5.0, color: Colors.grey),
            Expanded(
              child: Row(
                children: <Widget>[
                  Text('BACKGROUND COLOR'),
                  Checkbox(
                    checkColor: Colors.white,
                    value: isCheckedScans,
                    onChanged: (bool? value) {
                      setState(() {
                        isCheckedScans = value;
                      });
                    },
                  ),
                ],
              ),
            ),
            Divider(height: 5.0, color: Colors.grey),
            Expanded(
              child: Text('IMAGE'),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Text('HEIGHT'),
                  FloatingActionButton(
                    onPressed: () {},
                    child: Icon(Icons.remove),
                  ),
                  Text('800'),
                  FloatingActionButton(
                    onPressed: () {},
                    child: Icon(Icons.add),
                  ),
                ],
              ),
            ),
            Divider(height: 5.0, color: Colors.grey),
            Expanded(
              flex: 1,
              child: Row(
                children: <Widget>[
                  Text('WIDTH'),
                  FloatingActionButton(
                    onPressed: () {},
                    child: Icon(Icons.remove),
                  ),
                  Text('600'),
                  FloatingActionButton(
                    onPressed: () {},
                    child: Icon(Icons.add),
                  ),
                ],
              ),
            ),
            Divider(height: 5.0, color: Colors.grey),
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Text('DISPLAY BLACK AND WHITE IMAGES'),
                  Switch(
                    activeColor: Colors.blue,
                    activeTrackColor: Colors.yellow,
                    inactiveThumbColor: Colors.redAccent,
                    inactiveTrackColor: Colors.orange,
                    value: isBlackorWhite,
                    onChanged: (bool value) {
                      setState(() {
                        isBlackorWhite = value;
                      });
                    },
                  )
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }
}
