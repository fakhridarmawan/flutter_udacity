import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

final _rowHeight = 100.0;
final _borderRadius = BorderRadius.circular(_rowHeight / 2);

class Category extends StatelessWidget {

  final String name; 
  final ColorSwatch color;
  final IconData icon;

  const Category({
    Key key, 
    @required this.name,
    @required this.color, 
    @required this.icon
  }) : assert(name != null),
       assert(color != null),
       assert(icon != null),
       super(key:key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        height: _rowHeight,
        padding: EdgeInsets.all(8.0),
        child: InkWell(
          highlightColor: color,
          borderRadius: _borderRadius,
          splashColor: color,
          onTap: (){
            print('tap');
          },
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: EdgeInsets.all(3.0),
                  child: Icon(
                    icon,
                    size: 60.0,
                  ),
                ),
                Center(
                  child: Text(
                    name,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline,
                  ),
                )
              ],
            ),
          ),
        )
      ),
    );
  }
}

