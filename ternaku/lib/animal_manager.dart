import 'package:flutter/material.dart';
import './animals.dart';

class AnimalManager extends StatefulWidget {
  final String startingAnimal;

  AnimalManager(this.startingAnimal);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _AnimalManagerState();
  }
}

class _AnimalManagerState extends State<AnimalManager> {
  List<String> _animals = [];

  @override
  void initState() {
    _animals.add(widget.startingAnimal);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10.0),
          child: RaisedButton(
            onPressed: () {
              setState(() {
                _animals.add('Sheep says Baa');
              });
            },
            child: Text('Tambah Hewan'),
          ),
        ),
        Animals(_animals),
      ],
    );
  }
}
