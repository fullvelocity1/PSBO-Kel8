import 'package:flutter/material.dart';
import 'package:ternaku/pages/components/overviewbuku.dart';
import '../model/listbuku.dart';
import 'package:ternaku/constants.dart';
import '../model/buku.dart';
import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:ternaku/helpers/book_manager.dart';
import 'package:ternaku/model/user.dart';
import 'package:ternaku/model/admin.dart';

class DaftarBuku extends StatefulWidget {
  final BookType tipe;
  final User user;
  final String role;
  const DaftarBuku(
      {Key? key, required this.tipe, required this.user, required this.role})
      : super(key: key);

  @override
  _DaftarBukuState createState() => _DaftarBukuState(tipe, user, role);
}

class _DaftarBukuState extends State<DaftarBuku> {
  User user = User('', '');
  String role = '';

  BookType tipe_buku = BookType.Unidentified;

  _DaftarBukuState(this.tipe_buku, this.user, this.role) {
    initState();
  }

  @override
  Widget build(BuildContext context) {
    String str_buku = tipe_buku.toString();
    final str_split = str_buku.split('.');
    manager.readBooks();
    ListBuku library = manager.library;
    List<Buku> list_buku = library.getDummyBooks();
    return Scaffold(
        floatingActionButton: FloatingActionButton(
            child: Icon(
              Icons.add,
              size: 35,
            ),
            backgroundColor: Color(0xFF59979B),
            onPressed: () {
              if (role == "admin") {
                Navigator.of(context).pushNamed('/tambahbuku', arguments: user);
              }
            }),
        appBar: AppBar(
          backgroundColor: primaryColor,
          title: Text(
            'Daftar Buku ${str_split[1]}',
            style: TextStyle(color: Colors.black54),
          ),
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 15.0,
              ),
              Padding(
                  padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                  child: SizedBox()),
              Expanded(
                  child: ListView.builder(
                      itemCount: list_buku.length,
                      itemBuilder: (BuildContext ctx, int index) {
                        if (list_buku[index].getType() == tipe_buku) {
                          return user.lihatDetailBuku(list_buku[index]);
                        } else {
                          return SizedBox.shrink();
                        }
                      }))
            ],
          ),
        ));
  }
}
