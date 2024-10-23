// import 'package:flutter/material.dart';

// class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       backgroundColor: Colors.white,
//       leading: Icon(Icons.menu),
//       title: Image.network(
//         'https://cdn.mos.cms.futurecdn.net/8gzcr6RpGStvZFA2qRt4v6.jpg',
//         height: 30,
//       ),
//       actions: [
//         IconButton(icon: Icon(Icons.search), onPressed: () {}),
//         IconButton(icon: Icon(Icons.notifications), onPressed: () {}),
//         IconButton(icon: Icon(Icons.account_circle), onPressed: () {}),
//       ],
//     );
//   }

//   @override
//   Size get preferredSize => Size.fromHeight(56.0);
// }
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      
      title: Image.network(
        'data:image/png;base64,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',
        height: 50,
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.search,
              color: Colors.white), // Set icon color to white
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.notifications,
              color: Colors.white), // Set icon color to white
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.account_circle,
              color: Colors.white), // Set icon color to white
          onPressed: () {},
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(56.0);
}
