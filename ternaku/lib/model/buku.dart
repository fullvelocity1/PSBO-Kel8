import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:ternaku/constants.dart';

class Buku {
  int id = 0;
  String judul;
  String penulis;
  Genre genre;
  String imgCover;
  int stok;
  int pages;
  String bahasa;
  String harga;
  BookType tipe = BookType.Unidentified;

  Buku(
      {required this.id,
      required this.judul,
      required this.penulis,
      required this.genre,
      required this.imgCover,
      required this.stok,
      required this.pages,
      required this.bahasa,
      required this.harga,
      required this.tipe});

  factory Buku.newBook(
          int id,
          String judul,
          String penulis,
          Genre genre,
          String imgCover,
          int stok,
          int pages,
          String bahasa,
          String harga,
          BookType tipe) =>
      Buku(
          id: id,
          judul: judul,
          penulis: penulis,
          genre: genre,
          imgCover: imgCover,
          stok: stok,
          pages: pages,
          bahasa: bahasa,
          harga: harga,
          tipe: tipe);

  factory Buku.fromJson(Map<String, dynamic> json) => Buku(
      id: json["id"],
      judul: json["judul"],
      penulis: json["penulis"],
      genre: json["genre"],
      imgCover: json["imgCover"],
      stok: json["stok"],
      pages: json["pages"],
      bahasa: json["bahasa"],
      harga: json["harga"],
      tipe: json["tipe"]);

  Map<String, dynamic> toJson() => {
        "id": id,
        "judul": judul,
        "penulis": penulis,
        "genre": genre,
        "imgCover": imgCover,
        "stok": stok,
        "pages": pages,
        "bahasa": bahasa,
        "harga": harga,
        "tipe": tipe
      };

  bool availability() {
    if (getStok() > 0) {
      return true;
    } else {
      return false;
    }
  }

  String getJudul() {
    return judul;
  }

  String getPenulis() {
    return penulis;
  }

  String getGenre() {
    String str = genre.toString();
    final parsedstr = str.split('.');
    final str_genre = parsedstr[1];
    return str_genre;
  }

  String getImgCover() {
    return imgCover;
  }

  int getStok() {
    return stok;
  }

  int getPages() {
    return pages;
  }

  String getBahasa() {
    return bahasa;
  }

  String getHarga() {
    return harga;
  }

  BookType getType() {
    return tipe;
  }
}
