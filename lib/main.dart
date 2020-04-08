import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

import 'package:tretika/drawer.dart';
import 'package:tretika/horizontal_listview.dart';
import 'package:tretika/products.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    )
  );
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('assets/images/car1.png'),
          AssetImage('assets/images/car2.png'),
          AssetImage('assets/images/car3.jpg'),
        ],
        autoplay: false,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(microseconds: 1000),
        dotSize: 4.0,
        indicatorBgPadding: 8,
        dotBgColor: Colors.transparent,
      ),
    );
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Colors.blue,
        title: Text('E-Warung'),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search, color: Colors.white,), onPressed: (){}),
          new IconButton(icon: Icon(Icons.shopping_cart, color: Colors.white,), onPressed: (){})
        ],
      ),
      drawer: SideMenu(),
      body: new ListView(
        children: <Widget>[
          //gambar geser
          image_carousel,
          //padding
          new Padding(padding: const EdgeInsets.all(8.0),
            child: new Text('Categories'),
          ),
          //horizontal categories
          HorizontalList(),
          //prductrecent
          new Padding(padding: const EdgeInsets.all(8.0),
            child: new Text('Recent Product'),
          ),
          //grid
          Container(
            height: 320.0,
            child: Products(),
          )
        ],
      ),
    );
  }
}
