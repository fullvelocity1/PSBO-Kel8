import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'daftarBuku.dart';
import '../constants.dart';
import 'components/fictionBooks.dart';
import 'components/nonfictionBooks.dart';
import 'package:ternaku/model/user.dart';
import 'package:ternaku/model/admin.dart';

class Home extends StatelessWidget {
  User user = User('', '');
  Home(this.user);
  bool status_admin = false;
  @override
  Widget build(BuildContext context) {
    user is Admin ? status_admin = true : null;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: primaryColor,
          title: Text((user is Admin).toString()),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              SizedBox(height: 70),
              Text(
                'Mau mencari buku apa hari ini?',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              FictionButton(user),
              NonFictionButton(user),
            ],
          ),
        ));
  }
}
