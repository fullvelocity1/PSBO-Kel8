import 'package:flutter/material.dart';
import './animal_manager.dart';
import './home.dart';
import './daftarBuku.dart';
import './constants.dart';
import './helpers/routegenerator.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: primaryColor),
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
