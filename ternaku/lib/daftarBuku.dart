import 'package:flutter/material.dart';
import './Items/listbuku.dart';
import 'package:ternaku/constants.dart';
import './Items/buku.dart';

class DaftarBuku extends StatelessWidget {
  final list_buku = ListBuku.getDummyBooks();

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
                padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                child: Text(
                  "Daftar Buku",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                  child: ListView.builder(
                      itemCount: list_buku.length,
                      itemBuilder: (BuildContext ctx, int index) {
                        return Container(
                          decoration: BoxDecoration(
                              border: Border(
                            bottom: BorderSide(color: Colors.grey, width: 5.0),
                          )),
                          margin: EdgeInsets.all(15),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    top: 15, left: 30, right: 30, bottom: 15),
                                child: Image.asset(
                                  'assets/covers/' +
                                      list_buku[index].imgCover +
                                      '.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Container(
                                child: Padding(
                                  padding: EdgeInsets.only(top: 0, bottom: 25),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          list_buku[index].judul,
                                          style: TextStyle(fontSize: 24),
                                          textAlign: TextAlign.left,
                                        ),
                                        Text(
                                          list_buku[index].penulis,
                                          style: TextStyle(fontSize: 18),
                                          textAlign: TextAlign.left,
                                        ),
                                        Text(
                                          list_buku[index].genre,
                                          style: TextStyle(fontSize: 12),
                                          textAlign: TextAlign.left,
                                        ),
                                      ]),
                                ),
                              )
                            ],
                          ),
                        );
                      }))
            ],
          ),
        ));
  }
}
