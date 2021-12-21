import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final color = Color(0xff453658);
    return Drawer(
      child: ListView(
        // Remove padding
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Tanu Sharma'),
            accountEmail: Text('tanu@gmail.com'),
            decoration: BoxDecoration(
              color: color,
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      '')
                      ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text('Favorites'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Profile'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.category),
            title: Text('Category'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('History'),
          ),
          Divider(),
          // ListTile(
          //   leading: Icon(Icons.settings),
          //   title: Text('Settings'),
          //   onTap: () => null,
          // ),
          // ListTile(
          //   leading: Icon(Icons.description),
          //   title: Text('Policies'),
          //   onTap: () => null,
          // ),
          // Divider(),
          ListTile(
            title: Text('Logout'),
            leading: Icon(Icons.exit_to_app),
            onTap: () => null,
          ),
        ],
      ),
    );
  }
}


