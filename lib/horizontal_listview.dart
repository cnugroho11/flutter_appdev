import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_caption: 'Cat1',
          )
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_caption;
  final String image_name;

  Category({this.image_caption, this.image_name});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(2),
      child: InkWell(onTap: (){},
        child: Container(
          width: 100.0,
          child: ListTile(
            title: Container(
              child: Icon(Icons.shop, size: 50, color: Colors.blue,),
            ),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(image_caption),
            )
          ),
        ),
      ),
    );
  }
}
