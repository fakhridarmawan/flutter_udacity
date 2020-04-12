import 'package:flutter/material.dart';
import 'package:flutter_udacity/category.dart';

class CategoryRoute extends StatelessWidget {
  const CategoryRoute();

  static const _categoryNames = <String>[
    'Length',
    'Area',
    'Volume',
    'Mass',
    'Time',
    'Digital Storage',
    'Energy',
    'Currency',
  ];

  static const _baseColors = <Color>[
    Colors.teal,
    Colors.orange,
    Colors.pinkAccent,
    Colors.blueAccent,
    Colors.yellow,
    Colors.greenAccent,
    Colors.purpleAccent,
    Colors.red,
  ];

  @override
  Widget build(BuildContext context) {
    final listView = Container(
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        child: _buildCategoryList()
      );
    final appBar = AppBar(
        title: Text(
          'Unit Converter',
          style: TextStyle(fontSize: 30.0),
        ),
      );

    return Scaffold(
      appBar: appBar,
      body: listView,
      backgroundColor: Colors.green[100],
    );
  } // build

  Widget _buildCategoryList() {
    return ListView.builder(
      itemCount: _categoryNames.length,
      itemBuilder: (context, i) {
        return Category(
          name: _categoryNames[i],
          color: _baseColors[i],
          icon: Icons.cake,
        );
      },
    );
  }
}