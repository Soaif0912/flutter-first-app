import 'package:flutter/material.dart';

class BottomNavigationbar extends StatelessWidget{
  const BottomNavigationbar({super.key});


  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      extendBody: true,
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        child: Text('X'),
        shape: CircleBorder(),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        height: 50,
        color: Colors.amber,
        shape: CircularNotchedRectangle(),
        child: Row(
          children: [
            Icon(Icons.house_outlined),
            SizedBox(width: 30,),
            Icon(Icons.search),
            Spacer(),
            Icon(Icons.settings),
            SizedBox(width: 30,),
            Icon(Icons.abc)
          ],
        ),
      ),
    );
  }
}
