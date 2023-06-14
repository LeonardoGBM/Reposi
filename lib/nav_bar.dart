

import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children:[
          UserAccountsDrawerHeader(
            accountName: Text('Leonardo'),
            accountEmail: Text('Leonardo@.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(child: Image.asset('images/ella.png'),),
            ),
          ),
          ListTile(
            leading: Icon(Icons.file_upload),
            title: Text('Subir Foto'),
            onTap: () {
              Navigator.popAndPushNamed(context, '/login');
            }

          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Perfil'),
            onTap: (){
              Navigator.popAndPushNamed(context, "/home");
            }
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Menu'),
            onTap: () {
              Navigator.popAndPushNamed(context, "/otra");
            }
          ),
           ListTile(
            leading: Icon(Icons.message),
            title: Text('Mensaje'),
            onTap: () =>  Navigator.popAndPushNamed(context, "/registro")
          ),
        ]
      )
    );
  }
}