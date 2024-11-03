import 'package:flutter/material.dart';

class DrawerWidgetExample extends StatelessWidget {
  const DrawerWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Appbar'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.blue,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ClipOval(
                    child: Image.asset(
                      "images/soaif_profile.png",
                      width: 70,
                      height: 70,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text('Soaif'),
                ],
              ),
            ),
            const ListTile(
              title: Text('Home'),
              leading: Icon(Icons.home),
            ),
            const ListTile(
              title: Text('Account'),
              leading: Icon(Icons.account_box),
            ),
            const ListTile(
              title: Text('Cart'),
              leading: Icon(Icons.shopping_cart),
            ),
            const ListTile(
              title: Text('Logout'),
              leading: Icon(Icons.logout),
            ),
          ],
        ),
      ),
    );
  }
}
