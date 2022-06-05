import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'daftarBuku.dart';
import '../constants.dart';
import '../Sections/fictionBooks.dart';
import '../Sections/nonfictionBooks.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: primaryColor,
          title: Text('Bookagraphy'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              SizedBox(height: 70),
              Text(
                'Mau mencari buku apa hari ini?',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              FictionButton(),
              NonFictionButton(),
            ],
          ),
        ));
  }
}
