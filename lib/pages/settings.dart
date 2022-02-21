import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool? isCheckedDuplicates = true;
  bool? isCheckedScans = true;
  bool isBlackorWhite = true;
  Color color = Colors.red;

  Widget buildColorPicker() => ColorPicker(
        pickerColor: color,
        onColorChanged: (color) => setState(() => this.color = color),
      );

  void pickColor(BuildContext context) => showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text(
            'PICK YOUR COLOR',
            style: TextStyle(
              fontSize: 15,
              color: Colors.grey,
              letterSpacing: 1.0,
            ),
          ),
          content: Column(
            children: [
              buildColorPicker(),
              TextButton(
                child: Text(
                  'SELECT',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                    letterSpacing: 1.0,
                  ),
                ),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ],
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[900],
        title: Container(
          child: Column(
            children: <Widget>[
              Text(
                'SETTINGS',
                style: TextStyle(
                  fontSize: 15,
                  letterSpacing: 1.0,
                  color: Colors.white,
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
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                letterSpacing: 1.0,
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
            child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              Row(
                children: [
                  Text(
                    'GENERAL',
                    style: TextStyle(
                      letterSpacing: 1.0,
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 10,
                    child: Text(
                      'KEEP DUPLICATES',
                      style: TextStyle(
                        letterSpacing: 1.0,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Checkbox(
                      checkColor: Colors.white,
                      value: isCheckedDuplicates,
                      onChanged: (bool? value) {
                        setState(() {
                          isCheckedDuplicates = value;
                        });
                      },
                    ),
                  ),
                ],
              ),
              Divider(height: 20.0, color: Colors.grey),
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 10,
                    child: Text(
                      'ADD SCANS TO HISTORY',
                      style: TextStyle(
                        letterSpacing: 1.0,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Checkbox(
                      checkColor: Colors.white,
                      value: isCheckedScans,
                      onChanged: (bool? value) {
                        setState(() {
                          isCheckedScans = value;
                        });
                      },
                    ),
                  ),
                ],
              ),
              Divider(height: 20.0, color: Colors.grey),
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 10,
                    child: Text(
                      'BACKGROUND COLOR',
                      style: TextStyle(
                        letterSpacing: 1.0,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: FloatingActionButton(
                      backgroundColor: color,
                      elevation: 0,
                      child: Icon(Icons.color_lens_outlined),
                      onPressed: () => pickColor(context),
                    ),
                  ),
                ],
              ),
              Divider(height: 20.0, color: Colors.grey),
              SizedBox(height: 50.0),
              Row(
                children: [
                  Text(
                    'IMAGE',
                    style: TextStyle(
                      letterSpacing: 1.0,
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 10,
                    child: Text(
                      'HEIGHT',
                      style: TextStyle(
                        letterSpacing: 1.0,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 30,
                    child: Text(
                      '(PX)',
                      style: TextStyle(
                        letterSpacing: 1.0,
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      children: <Widget>[
                        FloatingActionButton(
                          elevation: 0,
                          onPressed: () {},
                          child: Icon(Icons.remove),
                          mini: true,
                        ),
                        Text(
                          '800',
                          style: TextStyle(
                            letterSpacing: 1.0,
                            fontSize: 12,
                          ),
                        ),
                        FloatingActionButton(
                          elevation: 0,
                          onPressed: () {},
                          child: Icon(Icons.add),
                          mini: true,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Divider(height: 20.0, color: Colors.grey),
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 10,
                    child: Text(
                      'WIDTH',
                      style: TextStyle(
                        letterSpacing: 1.0,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 30,
                    child: Text(
                      '(PX)',
                      style: TextStyle(
                        letterSpacing: 1.0,
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      children: <Widget>[
                        FloatingActionButton(
                          elevation: 0,
                          onPressed: () {},
                          child: Icon(Icons.remove),
                          mini: true,
                        ),
                        Text(
                          '600',
                          style: TextStyle(
                            letterSpacing: 1.0,
                            fontSize: 12,
                          ),
                        ),
                        FloatingActionButton(
                          elevation: 0,
                          onPressed: () {},
                          child: Icon(Icons.add),
                          mini: true,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Divider(height: 20.0, color: Colors.grey),
              Row(
                children: [
                  Expanded(
                    flex: 5,
                    child: Text(
                      'DISPLAY BLACK AND WHITE IMAGES',
                      style: TextStyle(
                        letterSpacing: 1.0,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Switch(
                      activeColor: Colors.blue[300],
                      activeTrackColor: Colors.blue[100],
                      inactiveThumbColor: Colors.grey[20],
                      inactiveTrackColor: Colors.grey[20],
                      value: isBlackorWhite,
                      onChanged: (bool value) {
                        setState(() {
                          isBlackorWhite = value;
                        });
                      },
                    ),
                  )
                ],
              ),
            ],
          ),
        )),
      ),
    );
  }
}
