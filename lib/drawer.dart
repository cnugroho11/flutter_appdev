import 'package:flutter/material.dart';

class SideMenu extends StatefulWidget {
  @override
  _SideMenuState createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
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
              leading: Icon(Icons.settings, color: Colors.green,),
            ),
          ),
          InkWell(
            onTap: (){},
            child: ListTile(
              title: Text('Info'),
              leading: Icon(Icons.info, color: Colors.grey,),
            ),
          ),
        ],
      ),
    );
  }
}
