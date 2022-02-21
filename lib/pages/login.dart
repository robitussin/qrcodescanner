import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  // const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/login.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: const MyCustomForm(),
        ),
      ),
    );
  }
}

class MyCustomForm extends StatelessWidget {
  const MyCustomForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(64.0, 128.0, 64.0, 128.0),
          child: Text(
            'VAX CERT PH',
            style: TextStyle(
              color: Colors.white,
              fontSize: 36.0,
              letterSpacing: 1.0,
            ),
          ),
        ),
        Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 16),
              child: TextField(
                style: TextStyle(
                  color: Colors.white,
                ),
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'username',
                    hintStyle: TextStyle(
                      color: Colors.white.withOpacity(0.5),
                    ),
                    fillColor: Colors.black.withOpacity(0.5),
                    filled: true),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 16),
              child: TextFormField(
                obscureText: true,
                style: TextStyle(
                  color: Colors.white,
                ),
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'password',
                    hintStyle: TextStyle(
                      color: Colors.white.withOpacity(0.5),
                    ),
                    fillColor: Colors.black.withOpacity(0.5),
                    filled: true),
              ),
            ),
          ],
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Stack(
            children: <Widget>[
              Positioned.fill(
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: <Color>[
                        Color.fromARGB(255, 165, 28, 153),
                        Color.fromARGB(255, 172, 172, 81),
                        Color.fromARGB(255, 223, 209, 15),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 140, vertical: 8),
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    textStyle: const TextStyle(fontSize: 10),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/navigation');
                  },
                  child: const Text(
                    'SIGN IN',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                      letterSpacing: 1.5,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(
            10.0,
            200.0,
            0.0,
            10.0,
          ),
          child: Row(
            children: <Widget>[
              Text(
                'FORGOT DETAILS?',
                style: TextStyle(
                  color: Colors.white.withOpacity(0.8),
                  fontSize: 10.0,
                  letterSpacing: 1.0,
                ),
              ),
              SizedBox(width: 170.0),
              Text(
                'CREATE ACCOUNT',
                style: TextStyle(
                  color: Colors.white.withOpacity(0.8),
                  fontSize: 10.0,
                  letterSpacing: 1.0,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
