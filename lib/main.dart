import 'package:flutter/material.dart';
import 'package:qrcodescanner/pages/login.dart';
import 'package:qrcodescanner/pages/navigation.dart';
import 'package:qrcodescanner/pages/scan.dart';
import 'package:qrcodescanner/pages/history.dart';
import 'package:qrcodescanner/pages/myqr.dart';
import 'package:qrcodescanner/pages/settings.dart';

void main() => runApp(MaterialApp(
      routes: {
        //'/': (context) => Login(),
        '/navigation': (context) => Navigation(),
        '/Scan': (context) => Scan(),
        '/History': (context) => History(),
        '/myqr': (context) => MyQR(),
        '/': (context) => Settings(),
        //'/settings': (context) => Settings(),
      },
    ));
