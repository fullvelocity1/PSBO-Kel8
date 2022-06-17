import 'package:flutter/material.dart';
import 'package:ternaku/constants.dart';
import 'buku.dart';
import 'package:ternaku/pages/components/overviewbuku.dart';

class User {
  String email = '';
  String password = '';

  User(this.email, this.password);

  lihatKatalog(BuildContext ctx, BookType tipe) {
    Navigator.of(ctx).pushNamed('/daftarbuku', arguments: [tipe, this, "user"]);
  }

  lihatDetailBuku(Buku book) {
    return OverviewBuku(book: book);
  }

  String getEmail() {
    return email;
  }

  void setEmail(String args) {
    if (args.isNotEmpty) email = args;
  }

  String getPassword() {
    return password;
  }

  void setPassword(String args) {
    if (args.isNotEmpty) password = args;
  }
}
