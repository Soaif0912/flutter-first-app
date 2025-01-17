
import 'package:flutter/material.dart';

class IndexedStackEample extends StatefulWidget{
  const IndexedStackEample({super.key});

  @override
  State<IndexedStackEample> createState() => _IndexedStackEampleState();
}

class _IndexedStackEampleState extends State<IndexedStackEample>{

  var _index = 0;

  @override
  Widget build(BuildContext context) {
    return(
      Scaffold(appBar: AppBar(title: const Text('Appbar'),),
      body: Center(
        child: IndexedStack(
          index: _index,
          children: [
            Container(
              padding: const EdgeInsets.all(50),
              color: Colors.red,
              child: const Text('First'),
            ),
            Container(
              padding: const EdgeInsets.all(50),
              color: Colors.yellow,
              child: const Text('Second'),
            ),
            Container(
              padding: const EdgeInsets.all(50),
              color: Colors.blue,
              child: const Text('Third'),
            ),
            Container(
              padding: const EdgeInsets.all(50),
              color: Colors.green,
              child: const Text('Fourth'),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(children: [
        FloatingActionButton(
          onPressed: (){
            setState(() {
              if(_index == 0){
                _index = 0;
              }else{
                _index -= 1;
              }
            });
          },
          child: const Icon(Icons.arrow_back),
        ),
        FloatingActionButton(
          onPressed: (){
            setState(() {
              if(_index == 3){
                _index = 3;
              }else{
                _index += 1;
              }
            });
          },
          child: const Icon(Icons.arrow_forward),
        ),
      ],),
      )
    );
  }
}


// The IndexedStack widget in Flutter is a specialized stack widget that shows only one of its children at a time based on the given index. Unlike the regular Stack widget, which displays all its children on top of each other, IndexedStack only displays the child at the specified index while keeping the others hidden but still loaded in memory.

// Key Properties
// index: This determines which child widget to display. Only the widget at this index will be visible, and all others will be hidden.
// children: A list of widgets to be displayed, only one of which will be visible at any given time.