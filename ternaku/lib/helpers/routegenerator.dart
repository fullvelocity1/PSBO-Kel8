import 'package:flutter/material.dart';
import 'package:ternaku/daftarBuku.dart';
import '../main.dart';
import '../home.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => Home());
      case '/daftarbuku':
        return MaterialPageRoute(builder: (_) => DaftarBuku());
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
