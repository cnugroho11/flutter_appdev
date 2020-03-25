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
            image_location: 'assets/images/cats/017-home.png',
            image_caption: 'Kebutuhan',
          ),

          Category(
            image_location: 'assets/images/cats/farm-products.png',
            image_caption: 'Makanan',
          ),

          Category(
            image_location: 'assets/images/cats/010-detergent.png',
            image_caption: 'Minuman',
          ),

          Category(
            image_location: 'assets/images/cats/019-liquid.png',
            image_caption: 'Sabun',
          ),

          Category(
            image_location: 'assets/images/cats/honey.png',
            image_caption: 'Lain Lain',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;
  Category({this.image_caption, this.image_location});
  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(2),
      child: InkWell(onTap: (){},
        child: Container(
          width: 90,
          child: Container(
            child: Column(
              children: <Widget>[
                Image.asset(
                  image_location,
                  height: 50.0,
                ),
                Container(
                  height: 20,
                  alignment: Alignment.topCenter,
                  child: Text(image_caption),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
