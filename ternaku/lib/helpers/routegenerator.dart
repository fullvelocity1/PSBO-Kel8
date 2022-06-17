import 'package:flutter/material.dart';
import 'package:ternaku/model/buku.dart';
import 'package:ternaku/constants.dart';
import 'package:ternaku/pages/admin_addBookPage.dart';
import 'package:ternaku/pages/login.dart';
import 'package:ternaku/pages/daftarBuku.dart';
import 'package:ternaku/pages/detailbuku.dart';
import 'package:ternaku/pages/admin_addBookPage.dart';
import 'package:ternaku/pages/login.dart';
import 'package:ternaku/model/user.dart';
import 'package:ternaku/model/admin.dart';

import '../main.dart';
import '../pages/home.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => Login());
      case '/home':
        if (args is User) {
          return MaterialPageRoute(builder: (_) => Home(args));
        }
        return _errorRoute();
      case '/daftarbuku':
        if (args is List<dynamic>) {
          return MaterialPageRoute(
              builder: (_) => DaftarBuku(
                    tipe: args[0],
                    user: args[1],
                    role: args[2],
                  ));
        }
        return _errorRoute();
      case '/detailbuku':
        if (args is Buku) {
          return MaterialPageRoute(builder: (_) => DetailBuku(args));
        }
        return _errorRoute();
      case '/tambahbuku':
        if (args is Admin) {
          return MaterialPageRoute(builder: (_) => BookForm(user: args));
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
