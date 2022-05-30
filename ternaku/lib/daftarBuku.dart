import 'package:flutter/material.dart';
import 'package:ternaku/constants.dart';

class DaftarBuku extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          backgroundColor: primaryColor,
          title: Text('Yubaca'),
        ),
        body: Center(
            child: Column(
          children: <Widget>[
            Text(
              'Hello, how a yu?',
              style: TextStyle(fontSize: 50),
            ),
            Text(
              'I am unda d watr',
              style: TextStyle(fontSize: 12),
            )
          ],
        )));
  }
}
