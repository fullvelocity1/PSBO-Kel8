import 'package:flutter/material.dart';
import 'package:ternaku/model/buku.dart';
import 'package:ternaku/model/listbuku.dart';

class CoverBuku extends StatelessWidget {
  String imgCover;
  double scale;

  CoverBuku({required this.imgCover, this.scale = 1});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      child: Image.asset(
        'assets/covers/' + imgCover + '.png',
        scale: scale,
        fit: BoxFit.cover,
      ),
    );
  }
}
