import 'package:flutter/material.dart';
import 'package:ternaku/Items/listbuku.dart';
import 'package:ternaku/Items/buku.dart';
import 'package:ternaku/constants.dart';

class BookAvailStatus extends StatelessWidget {
  List<Buku> list_buku = ListBuku.getDummyBooks();
  int bookid;

  BookAvailStatus(this.bookid);

  @override
  Widget build(BuildContext context) {
    String status = '';
    String img = '';
    if (list_buku[bookid].availability()) {
      return Card(
        margin: EdgeInsets.all(5.0),
        color: Colors.white,
        child: Container(
          margin: EdgeInsets.all(5.0),
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.all(Radius.circular(20.0))),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset('assets/icons/ceklis.png'),
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Text(
                  'Available',
                  style: TextStyle(fontSize: 20.0),
                ),
              )
            ],
          ),
        ),
      );
    } else {
      return Card(
        margin: EdgeInsets.all(5.0),
        color: Colors.white,
        child: Container(
          margin: EdgeInsets.all(5.0),
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.all(Radius.circular(20.0))),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset('assets/icons/silang.png'),
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Text(
                  'Out of Stock',
                  style: TextStyle(fontSize: 20.0),
                ),
              )
            ],
          ),
        ),
      );
    }
  }
}
