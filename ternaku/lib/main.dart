import 'package:flutter/material.dart';
import './animal_manager.dart';
import './home.dart';
import './daftarBuku.dart';
import './constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DaftarBuku(),
      theme: ThemeData(primaryColor: primaryColor),
    );
  }
}
