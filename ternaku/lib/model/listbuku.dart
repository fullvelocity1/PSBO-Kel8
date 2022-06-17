import 'package:ternaku/model/buku.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/services.dart';
import '../constants.dart';

class ListBuku {
  List<Buku> list_buku = [];

  ListBuku(this.list_buku);

  void addNewList(List<Buku> new_list) {
    list_buku = new_list;
  }

  factory ListBuku.fromJson(List<dynamic> parsedJson) {
    List<Buku> list_buku = [];
    list_buku = parsedJson.map((i) => Buku.fromJson(i)).toList();

    return ListBuku(list_buku);
  }

  List<Buku> getDummyBooks() {
    return list_buku;
    // return [
    //   Buku(
    //       id: 1,
    //       judul: "Laut Bercerita",
    //       penulis: "Leila S. Chudori",
    //       genre: Genre.Historical,
    //       imgCover: "laut_bercerita",
    //       stok: 1,
    //       pages: 389,
    //       bahasa: "Indonesia",
    //       harga: "100.000",
    //       tipe: BookType.Fiction),
    //   Buku(
    //       id: 1,
    //       judul: "The Poppy War",
    //       penulis: "R.F Kuang",
    //       genre: Genre.Historical,
    //       imgCover: "the_poppy_war",
    //       stok: 1,
    //       pages: 413,
    //       bahasa: "Indonesia",
    //       harga: "130.000",
    //       tipe: BookType.NonFiction),
    //   Buku(
    //       id: 1,
    //       judul: "Laut Bercerita",
    //       penulis: "Leila S. Chudori",
    //       genre: Genre.Historical,
    //       imgCover: "laut_bercerita",
    //       stok: 0,
    //       pages: 389,
    //       bahasa: "Indonesia",
    //       harga: "100.000",
    //       tipe: BookType.Fiction),
    //   Buku(
    //       id: 1,
    //       judul: "The Poppy War",
    //       penulis: "R.F Kuang",
    //       genre: Genre.Historical,
    //       imgCover: "the_poppy_war",
    //       stok: 0,
    //       pages: 413,
    //       bahasa: "Indonesia",
    //       harga: "130.000",
    //       tipe: BookType.NonFiction),
    //   Buku(
    //       id: 1,
    //       judul: "Laut Bercerita",
    //       penulis: "Leila S. Chudori",
    //       genre: Genre.Historical,
    //       imgCover: "laut_bercerita",
    //       stok: 1,
    //       pages: 389,
    //       bahasa: "Indonesia",
    //       harga: "100.000",
    //       tipe: BookType.Fiction),
    //   Buku(
    //       id: 1,
    //       judul: "The Poppy War",
    //       penulis: "R.F Kuang",
    //       genre: Genre.Historical,
    //       imgCover: "the_poppy_war",
    //       stok: 1,
    //       pages: 413,
    //       bahasa: "Indonesia",
    //       harga: "130.000",
    //       tipe: BookType.NonFiction),
    //   Buku(
    //       id: 1,
    //       judul: "Laut Bercerita",
    //       penulis: "Leila S. Chudori",
    //       genre: Genre.Historical,
    //       imgCover: "laut_bercerita",
    //       stok: 0,
    //       pages: 389,
    //       bahasa: "Indonesia",
    //       harga: "100.000",
    //       tipe: BookType.Fiction),
    //   Buku(
    //       id: 1,
    //       judul: "The Poppy War",
    //       penulis: "R.F Kuang",
    //       genre: Genre.Historical,
    //       imgCover: "the_poppy_war",
    //       stok: 0,
    //       pages: 413,
    //       bahasa: "Indonesia",
    //       harga: "130.000",
    //       tipe: BookType.NonFiction),
    //   Buku(
    //       id: 1,
    //       judul: "Laut Bercerita",
    //       penulis: "Leila S. Chudori",
    //       genre: Genre.Historical,
    //       imgCover: "laut_bercerita",
    //       stok: 1,
    //       pages: 389,
    //       bahasa: "Indonesia",
    //       harga: "100.000",
    //       tipe: BookType.Fiction),
    //   Buku(
    //       id: 1,
    //       judul: "The Poppy War",
    //       penulis: "R.F Kuang",
    //       genre: Genre.Historical,
    //       imgCover: "the_poppy_war",
    //       stok: 1,
    //       pages: 413,
    //       bahasa: "Indonesia",
    //       harga: "130.000",
    //       tipe: BookType.NonFiction),
    //   Buku(
    //       id: 1,
    //       judul: "Laut Bercerita",
    //       penulis: "Leila S. Chudori",
    //       genre: Genre.Historical,
    //       imgCover: "laut_bercerita",
    //       stok: 0,
    //       pages: 389,
    //       bahasa: "Indonesia",
    //       harga: "100.000",
    //       tipe: BookType.Fiction),
    //   Buku(
    //       id: 1,
    //       judul: "The Poppy War",
    //       penulis: "R.F Kuang",
    //       genre: Genre.Historical,
    //       imgCover: "the_poppy_war",
    //       stok: 0,
    //       pages: 413,
    //       bahasa: "Indonesia",
    //       harga: "130.000",
    //       tipe: BookType.NonFiction),
    // ];
  }
}
