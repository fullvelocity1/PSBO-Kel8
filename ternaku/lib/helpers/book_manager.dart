import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:ternaku/model/listbuku.dart';
import 'package:ternaku/model/buku.dart';

class BookStorage {
  List<Buku> list_buku = [];
  ListBuku library = ListBuku([]);

  Future<String> get _localPath async {
    final directory = await getExternalStorageDirectory();

    return directory.path;
  }

  Future<File> get _localFile async {
    final path = await _localPath;
    return File('$path/databuku.json');
  }

  Future<String> readBooks() async {
    try {
      final file = await _localFile;

      // Read the file
      final contents = await file.readAsString();
      library = ListBuku.fromJson(jsonDecode(contents));
    } catch (e) {
      // If encountering an error, return 0
      return "error";
    }
    return "success";
  }

  Future<File> writeBooks(ListBuku args) async {
    final file = await _localFile;

    // Write the file
    return file.writeAsString('$args');
  }
}
