import 'package:flutter/material.dart';

class AppBarExample extends StatelessWidget implements PreferredSizeWidget{

  const AppBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return( 
      AppBar(
        leading: const Icon(Icons.menu, size: 35, color: Colors.black,),
        title: const Text('Custom AppBar'),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Icon(Icons.shopping_bag)
          ),
        ],
        titleTextStyle: const TextStyle(color: Colors.purple, fontSize: 25, fontWeight: FontWeight.bold,),
        actionsIconTheme: const IconThemeData(
          color: Colors.purple,
          size: 30,
        ),
        elevation: 50,  // Shadow height
        shadowColor: Colors.green[700],
      )
    );
  }

  // Implement the preferredSize getter
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

}