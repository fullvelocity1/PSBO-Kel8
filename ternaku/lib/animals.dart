import 'package:flutter/material.dart';

class Animals extends StatelessWidget {
  final List<String> animals;

  Animals(this.animals);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: animals
          .map((element) => Card(
                child: Column(
                  children: <Widget>[
                    Image.asset('assets/sapi.jpeg'),
                    Text(element)
                  ],
                ),
              ))
          .toList(),
    );
  }
}
