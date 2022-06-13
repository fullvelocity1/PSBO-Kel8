import 'package:flutter/material.dart';
import 'package:ternaku/model/buku.dart';
import 'package:ternaku/constants.dart';
import 'package:ternaku/pages/daftarBuku.dart';
import 'package:ternaku/pages/detailbuku.dart';
import '../main.dart';
import '../pages/home.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => Home());
      case '/daftarbuku':
        if (args is BookType) {
          return MaterialPageRoute(builder: (_) => DaftarBuku(tipe: args));
        }
        return _errorRoute();
      case '/detailbuku':
        if (args is Buku) {
          return MaterialPageRoute(builder: (_) => DetailBuku(args));
        }
        return _errorRoute();
      default:
        return _errorRoute();
    }
  }
}

Route<dynamic> _errorRoute() {
  return MaterialPageRoute(builder: (_) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ERROR"),
      ),
      body: Center(
        child: Text('ERROR'),
      ),
    );
  });
}
