import 'package:flutter/material.dart';
import 'dart:ui';

class Buku {
  int id = 0;
  String judul;
  String penulis;
  String genre;
  String imgCover;
  int stok;
  int pages;
  String bahasa;

  Buku(
      {required this.id,
      required this.judul,
      required this.penulis,
      required this.genre,
      required this.imgCover,
      required this.stok,
      required this.pages,
      required this.bahasa});
}
