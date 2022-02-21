import 'package:flutter/material.dart';
import 'certificates.dart';

class CertCard extends StatelessWidget {
  final Certificate? cert;
  //const ({ Key? key }) : super(key: key);

  CertCard({this.cert});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              child: Column(
                children: <Widget>[
                  Text(
                    '${cert?.month}',
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                  Text(
                    '${cert?.time}',
                    style: TextStyle(fontSize: 11, color: Colors.grey),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              child: Column(
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: AssetImage('${cert?.image}'),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              child: Column(
                children: <Widget>[
                  Row(
                    children: [
                      Text(
                        '${cert?.name}',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.location_on_outlined,
                        color: Colors.grey,
                        size: 20.0,
                      ),
                      Text(
                        '${cert?.location}',
                        style: TextStyle(fontSize: 11, color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
