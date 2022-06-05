import 'package:flutter/material.dart';
import 'package:ternaku/Items/buku.dart';
import 'package:ternaku/Items/listbuku.dart';

class CoverBuku extends StatelessWidget {
  final list_buku = ListBuku.getDummyBooks();
  int bookid;
  double scale;

  CoverBuku({required this.bookid, this.scale = 1});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      child: Image.asset(
        'assets/covers/' + list_buku[bookid].imgCover + '.png',
        scale: scale,
        fit: BoxFit.cover,
      ),
    );
  }
}
