import 'package:flutter/material.dart';
import 'package:ternaku/pages/components/overviewbuku.dart';
import '../model/listbuku.dart';
import 'package:ternaku/constants.dart';
import '../model/buku.dart';
import 'dart:convert';
import 'package:flutter/services.dart';

class DaftarBuku extends StatefulWidget {
  final BookType tipe;
  const DaftarBuku({Key? key, required this.tipe}) : super(key: key);

  @override
  _DaftarBukuState createState() => _DaftarBukuState(tipe);
}

class _DaftarBukuState extends State<DaftarBuku> {
  List<Buku> list_buku = [];
  ListBuku library = ListBuku([]);

  // Fetch content from the json file
  Future<void> readJson() async {
    final String response =
        await rootBundle.loadString('assets/data/data_buku.json');
    final data = await json.decode(response);
    setState(() {
      for (var i = 0; i < data.length; i++) {
        list_buku.add(Buku(
            id: data[i]["id"],
            judul: data[i]["judul"],
            penulis: data[i]["penulis"],
            genre: Genre.values
                .firstWhere((e) => e.toString() == data[i]["genre"]),
            imgCover: data[i]["imgCover"],
            stok: data[i]["stok"],
            pages: data[i]["pages"],
            bahasa: data[i]["bahasa"],
            harga: data[i]["harga"],
            tipe: BookType.values
                .firstWhere((e) => e.toString() == data[i]["tipe"])));
      }
      library.addNewList(list_buku);
    });
  }

  BookType tipe_buku = BookType.Unidentified;

  _DaftarBukuState(this.tipe_buku);

  @override
  Widget build(BuildContext context) {
    String str_buku = tipe_buku.toString();
    final str_split = str_buku.split('.');
    readJson();
    return Scaffold(
        floatingActionButton: FloatingActionButton(
            child: Icon(
              Icons.add,
              size: 35,
            ),
            backgroundColor: Color(0xFF59979B),
            onPressed: () => Navigator.of(context).pushNamed('/tambahbuku')),
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
                          return OverviewBuku(book: list_buku[index]);
                        } else {
                          return SizedBox.shrink();
                        }
                      }))
            ],
          ),
        ));
  }
}
