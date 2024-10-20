import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      leading: Icon(Icons.menu),
      title: Image.network(
        'https://cdn.mos.cms.futurecdn.net/8gzcr6RpGStvZFA2qRt4v6.jpg',
        height: 30,
      ),
      actions: [
        IconButton(icon: Icon(Icons.search), onPressed: () {}),
        IconButton(icon: Icon(Icons.notifications), onPressed: () {}),
        IconButton(icon: Icon(Icons.account_circle), onPressed: () {}),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(56.0);
}
