import 'package:flutter/material.dart';
import './animal_manager.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ternaku'),
        ),
        body: AnimalManager('Cow Says Moo'),
      ),
    );
  }
}
