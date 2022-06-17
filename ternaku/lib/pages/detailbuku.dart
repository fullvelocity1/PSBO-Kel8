import 'package:flutter/material.dart';
import 'package:ternaku/model/buku.dart';
import 'package:ternaku/model/listbuku.dart';
import 'package:ternaku/pages/components/coverbuku.dart';
import '../constants.dart';
import 'package:ternaku/pages/components/bookavailability.dart';

class DetailBuku extends StatelessWidget {
  Buku book;

  DetailBuku(this.book);

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
            child: CoverBuku(
              imgCover: book.getImgCover(),
            )),
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
                    '${book.getGenre()}',
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
                    '${book.getPages()}',
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
                    book.getBahasa(),
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
                          'Rp. ${book.getHarga()}',
                          style: TextStyle(fontSize: 21),
                        ),
                        // Judul
                        Text(book.getJudul(), style: TextStyle(fontSize: 25)),
                        // Author
                        Text(book.getPenulis(),
                            style: TextStyle(
                                fontSize: 20.0, color: heading1Colors)),
                      ],
                    ),
                    //Availability
                    BookAvailStatus(book),
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
                        'Di dalam laut yang kelam, terdapat sejarah yang panjang.',
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
