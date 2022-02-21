import 'package:flutter/material.dart';
import '../certificates.dart';
import '../cert_card.dart';

class History extends StatefulWidget {
  const History({Key? key}) : super(key: key);

  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  List<Certificate> certs = [
    Certificate(
        month: 'Jan',
        time: '06:30AM',
        name: 'Juan Reyes',
        location: 'Jollibee Fairview',
        image: 'assets/cat.jpg'),
    Certificate(
        month: 'Jan',
        time: '08:54PM',
        name: 'Cristina Santos',
        location: 'Infinitea Fairview',
        image: 'assets/dog.jpg'),
    Certificate(
        month: 'Mar',
        time: '02:25PM',
        name: 'Paulina Concepcion',
        location: '7 eleven Brgy Bel-air',
        image: 'assets/bird.jpg'),
    Certificate(
        month: 'April',
        time: '09:13PM',
        name: 'Pamela Bonifacio',
        location: 'Davids Salon Makati',
        image: 'assets/smiley.jpg'),
    Certificate(
        month: 'May',
        time: '00:12AM',
        name: 'Teodoro Lopez',
        location: 'North Ave MRT Station',
        image: 'assets/flower.jpg'),
    Certificate(
        month: 'June',
        time: '03:40AM',
        name: 'Faustina Dela Cruz',
        location: 'S&R Commonwealth',
        image: 'assets/rabbit.jpg'),
    Certificate(
        month: 'July',
        time: '05:45PM',
        name: 'Jose Lucas',
        location: 'National University Manila',
        image: 'assets/sunset.jpg'),
    Certificate(
        month: 'August',
        time: '00:28PM',
        name: 'Antonio Geraldo',
        location: 'KFC SM Fairview',
        image: 'assets/person.jpg')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        leading: Icon(
          Icons.arrow_back,
        ),
        title: Container(
          child: Column(
            children: <Widget>[
              Text(
                'SCAN HISTORY',
                style: TextStyle(
                  fontSize: 15,
                  letterSpacing: 1.0,
                ),
              ),
              Text(
                '100 certificates',
                style: TextStyle(
                  fontSize: 11,
                  color: Color.fromARGB(255, 14, 206, 126),
                ),
              ),
            ],
          ),
        ),
        centerTitle: true, // like this!
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Icon(
              Icons.search,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(width: 1.0, color: Colors.grey),
                        ),
                      ),
                      padding: EdgeInsets.all(3.0),
                      child: TextButton(
                        style: TextButton.styleFrom(
                          textStyle: const TextStyle(fontSize: 11),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'YEAR',
                          style: TextStyle(fontSize: 11, color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(width: 2.5, color: Colors.black),
                        ),
                      ),
                      padding: EdgeInsets.all(3.0),
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          'MONTH',
                          style: TextStyle(fontSize: 11, color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            width: 1.0,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      padding: EdgeInsets.all(3.0),
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          'DAY',
                          style: TextStyle(fontSize: 11, color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                  children: certs
                      .map((cert) => CertCard(
                            cert: cert,
                          ))
                      .toList()),
            ],
          ),
        ),
      ),
    );
  }
}
