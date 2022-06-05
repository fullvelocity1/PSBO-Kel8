import 'package:flutter/material.dart';
import 'package:ternaku/Items/overviewbuku.dart';
import '../Items/listbuku.dart';
import 'package:ternaku/constants.dart';
import '../Items/buku.dart';

class DaftarBuku extends StatelessWidget {
  final list_buku = ListBuku.getDummyBooks();
  BookType tipe_buku;

  DaftarBuku(this.tipe_buku);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          backgroundColor: primaryColor,
          title: Text(
            'Daftar Buku',
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
                          return OverviewBuku(bookid: index);
                        } else {
                          return SizedBox.shrink();
                        }
                      }))
            ],
          ),
        ));
  }
}
