import 'package:flutter/material.dart';
import 'package:ternaku/constants.dart';
import './listbuku.dart';
import './buku.dart';
import './coverbuku.dart';
import './bookavailability.dart';

class OverviewBuku extends StatelessWidget {
  Buku book;

  OverviewBuku({required this.book}) {}

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(
      onTap: () =>
          Navigator.of(context).pushNamed('/detailbuku', arguments: book),
      child: Container(
        decoration: BoxDecoration(
            border: Border(
          bottom: BorderSide(color: Colors.grey, width: 5.0),
        )),
        margin: EdgeInsets.all(15),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.width / 20,
                  left: MediaQuery.of(context).size.width / 20,
                  right: MediaQuery.of(context).size.width / 20,
                  bottom: MediaQuery.of(context).size.width / 20),
              child: CoverBuku(
                imgCover: book.getImgCover(),
                scale: 1.2,
              ),
            ),
            Expanded(
              child: Container(
                child: Padding(
                  padding: EdgeInsets.only(top: 0, bottom: 25),
                  child: Container(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            book.getJudul(),
                            style: TextStyle(fontSize: 24),
                            textAlign: TextAlign.left,
                          ),
                          Text(
                            book.getPenulis(),
                            style: TextStyle(fontSize: 18),
                            textAlign: TextAlign.left,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: cardColor,
                                  border: Border.all(color: cardColor),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20.0))),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 1.0,
                                    bottom: 1.0,
                                    left: 3.0,
                                    right: 3.0),
                                child: Text(
                                  '${book.getGenre()}',
                                  style: TextStyle(fontSize: 12),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ),
                          ),
                          Text(
                            'Rp. ${book.getHarga()}',
                            style: TextStyle(fontSize: 22),
                            textAlign: TextAlign.left,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(),
                              BookAvailStatus(book),
                            ],
                          )
                        ]),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
