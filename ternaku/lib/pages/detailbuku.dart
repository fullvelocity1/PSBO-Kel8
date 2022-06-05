import 'package:flutter/material.dart';
import 'package:ternaku/Items/buku.dart';
import 'package:ternaku/Items/listbuku.dart';
import 'package:ternaku/Items/coverbuku.dart';
import '../constants.dart';
import 'package:ternaku/Items/bookavailability.dart';

class DetailBuku extends StatelessWidget {
  final list_buku = ListBuku.getDummyBooks();
  int bookid;

  DetailBuku(this.bookid);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Text(
          'Detail Buku',
          style: TextStyle(color: Colors.black54),
        ),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        // Gambar Cover
        Container(
            margin: EdgeInsets.only(
                top: 30.0,
                left: MediaQuery.of(context).size.width / 3,
                right: MediaQuery.of(context).size.width / 3),
            child: CoverBuku(bookid: bookid)),
        // Row Genre, Pages, Bahasa
        Container(
          margin: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
              color: boxColors,
              border: Border.all(color: boxColors),
              borderRadius: BorderRadius.all(Radius.circular(20))),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Container(
              margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Genre',
                    style: TextStyle(fontSize: 18, color: heading1Colors),
                  ),
                  Text(
                    '${list_buku[bookid].getGenre()}',
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Halaman',
                    style: TextStyle(fontSize: 18, color: heading1Colors),
                  ),
                  Text(
                    '${list_buku[bookid].getPages()}',
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Bahasa',
                    style: TextStyle(fontSize: 18, color: heading1Colors),
                  ),
                  Text(
                    list_buku[bookid].getBahasa(),
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                ],
              ),
            ),
          ]),
        ),
        // Harga, Judul, Author || Availability
        Container(
          color: boxColors,
          child: Padding(
            padding: EdgeInsets.only(left: 30.0, top: 15.0, right: 20.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //Harga, Judul, Author
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Harga
                        Text(
                          'Rp. ${list_buku[bookid].getHarga()}',
                          style: TextStyle(fontSize: 21),
                        ),
                        // Judul
                        Text(list_buku[bookid].getJudul(),
                            style: TextStyle(fontSize: 25)),
                        // Author
                        Text(list_buku[bookid].getPenulis(),
                            style: TextStyle(
                                fontSize: 20.0, color: heading1Colors)),
                      ],
                    ),
                    //Availability
                    BookAvailStatus(bookid),
                  ],
                ),
              ],
            ),
          ),
        ),
        // Sinopsis (buat expanded)
        Expanded(
          child: SingleChildScrollView(
            child: Container(
              color: boxColors,
              child: Padding(
                padding: EdgeInsets.only(left: 30.0, top: 15.0, right: 25.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Sinopsis',
                        style: TextStyle(fontSize: 25.0, color: sinopsisColor),
                      ),
                      Text(
                        'Silus adalah seseorang yang sangat cupu. Silus adalah seseorang yang sangat cupu. Silus adalah seseorang yang sangat cupu. Silus adalah seseorang yang sangat cupu. Silus adalah seseorang yang sangat cupu. Silus adalah seseorang yang sangat cupu. Silus adalah seseorang yang sangat cupu. Silus adalah seseorang yang sangat cupu. Silus adalah seseorang yang sangat cupu. Silus adalah seseorang yang sangat cupu. Silus adalah seseorang yang sangat cupu. Silus adalah seseorang yang sangat cupu. Silus adalah seseorang yang sangat cupu. Silus adalah seseorang yang sangat cupu. Silus adalah seseorang yang sangat cupu. Silus adalah seseorang yang sangat cupu. Silus adalah seseorang yang sangat cupu. Silus adalah seseorang yang sangat cupu. Silus adalah seseorang yang sangat cupu. Silus adalah seseorang yang sangat cupu. Silus adalah seseorang yang sangat cupu. Silus adalah seseorang yang sangat cupu. Silus adalah seseorang yang sangat cupu. Silus adalah seseorang yang sangat cupu. Silus adalah seseorang yang sangat cupu. Silus adalah seseorang yang sangat cupu. Silus adalah seseorang yang sangat cupu. Silus adalah seseorang yang sangat cupu. Silus adalah seseorang yang sangat cupu. Silus adalah seseorang yang sangat cupu. Silus adalah seseorang yang sangat cupu. Silus adalah seseorang yang sangat cupu. Silus adalah seseorang yang sangat cupu. Silus adalah seseorang yang sangat cupu. Silus adalah seseorang yang sangat cupu. Silus adalah seseorang yang sangat cupu. Silus adalah seseorang yang sangat cupu. Silus adalah seseorang yang sangat cupu. Silus adalah seseorang yang sangat cupu. Silus adalah seseorang yang sangat cupu. Silus adalah seseorang yang sangat cupu. Silus adalah seseorang yang sangat cupu. Silus adalah seseorang yang sangat cupu. Silus adalah seseorang yang sangat cupu. Silus adalah seseorang yang sangat cupu. Silus adalah seseorang yang sangat cupu. Silus adalah seseorang yang sangat cupu. Silus adalah seseorang yang sangat cupu. Silus adalah seseorang yang sangat cupu. Silus adalah seseorang yang sangat cupu. Silus adalah seseorang yang sangat cupu. Silus adalah seseorang yang sangat cupu. Silus adalah seseorang yang sangat cupu. Silus adalah seseorang yang sangat cupu. Silus adalah seseorang yang sangat cupu. Silus adalah seseorang yang sangat cupu. Silus adalah seseorang yang sangat cupu. Silus adalah seseorang yang sangat cupu. Silus adalah seseorang yang sangat cupu. Silus adalah seseorang yang sangat cupu. Silus adalah seseorang yang sangat cupu. Silus adalah seseorang yang sangat cupu. Silus adalah seseorang yang sangat cupu. Silus adalah seseorang yang sangat cupu. Silus adalah seseorang yang sangat cupu. Silus adalah seseorang yang sangat cupu. Silus adalah seseorang yang sangat cupu. Silus adalah seseorang yang sangat cupu. Silus adalah seseorang yang sangat cupu. Silus adalah seseorang yang sangat cupu. Silus adalah seseorang yang sangat cupu. Silus adalah seseorang yang sangat cupu. Silus adalah seseorang yang sangat cupu. Silus adalah seseorang yang sangat cupu. Silus adalah seseorang yang sangat cupu. Silus adalah seseorang yang sangat cupu. Silus adalah seseorang yang sangat cupu. Silus adalah seseorang yang sangat cupu. Silus adalah seseorang yang sangat cupu. Silus adalah seseorang yang sangat cupu. Silus adalah seseorang yang sangat cupu. Silus adalah seseorang yang sangat cupu. Silus adalah seseorang yang sangat cupu. Silus adalah seseorang yang sangat cupu. Silus adalah seseorang yang sangat cupu. Silus adalah seseorang yang sangat cupu. Silus adalah seseorang yang sangat cupu. Silus adalah seseorang yang sangat cupu. ',
                        textAlign: TextAlign.justify,
                      )
                    ]),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
