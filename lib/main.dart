import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

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
          AssetImage('assets/images/c1.jpg'),
          AssetImage('assets/images/w3.jpeg'),
          AssetImage('assets/images/m1.jpeg'),
          AssetImage('assets/images/w1.jpeg'),
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
        title: Text('(TR Etika nama app)'),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search, color: Colors.white,), onPressed: (){}),
          new IconButton(icon: Icon(Icons.shopping_cart, color: Colors.white,), onPressed: (){})
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            //head
            new UserAccountsDrawerHeader(
                accountName: Text('admin'),
                accountEmail: Text('cahyo@developer.dev'),
                currentAccountPicture: GestureDetector(
                  child: new CircleAvatar(
                    backgroundColor: Colors.blueGrey,
                    child: Icon(Icons.person, color: Colors.white,),
                ),
              ),
              decoration: new BoxDecoration(
                color: Colors.blue,
              ),
            ),
            //body
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Halaman Awal'),
                leading: Icon(Icons.home, color: Colors.blueAccent,),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Akun'),
                leading: Icon(Icons.person, color:Colors.blueAccent,),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Pesanan'),
                leading: Icon(Icons.shopping_basket, color: Colors.blueAccent,),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Kategori'),
                leading: Icon(Icons.category, color: Colors.blueAccent,),
              ),
            ),
            Divider(
              color: Colors.grey,
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Pengaturan'),
                leading: Icon(Icons.settings, color: Colors.blueAccent,),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Info'),
                leading: Icon(Icons.info, color: Colors.blueAccent,),
              ),
            ),
          ],
        ),
      ),
      body: new ListView(
        children: <Widget>[
          image_carousel
        ],
      ),
    );
  }
}
