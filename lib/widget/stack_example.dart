
import 'package:flutter/material.dart';

class StackExample extends StatelessWidget{
  const StackExample({super.key});

  @override
  Widget build(BuildContext context) {
    return(
      Scaffold(appBar: AppBar(title: const Text('Appbar'),),
      body: Center(
          child: Stack(
            // alignment: Alignment.center,
            textDirection: TextDirection.ltr,
            children: [
              Container(
                height: 250,
                width: 250,
                color: Colors.red,
              ),
              Container(
                height: 150,
                width: 150,
                color: Colors.yellow,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.green,
              ),
              const Text('Text'),
              Positioned(
                bottom: 50,
                right: 50,
                child: Container(
                  height: 50,
                  width: 50,
                  color: Colors.black,
                )
              ),
              // Positioned.fill(
              //   top: 10,
              //   bottom: 10,
              //   right: 10,
              //   left: 10,
              //   child: Container(color: Colors.blue,),
              // ),
            ],
          ),
      ),
      )
    );
  }
}




// The Stack widget in Flutter is a powerful layout widget that allows you to place multiple widgets on top of each other, in a "stacked" manner. It’s particularly useful when you want to overlap or layer widgets, creating custom layouts that require flexible alignment.

// Key Properties
// alignment: Defines how the child widgets are aligned within the stack. The default is AlignmentDirectional.topStart.
// fit: Determines how the non-positioned children (widgets without explicit alignment) will fill the available space. It can be StackFit.loose (default), StackFit.expand (fills the available space), or StackFit.passthrough.
// clipBehavior: Controls how overflow from child widgets is managed. It can be Clip.none, Clip.hardEdge, Clip.antiAlias, or Clip.antiAliasWithSaveLayer.
// Positioned Widget
// The Stack widget works in combination with Positioned widgets to place children in specific positions within the stack. Positioned allows you to place a widget at a certain position from the top, bottom, left, or right.

// Use Cases
// Stack is ideal for creating complex UI layouts that require elements to overlap or layer in a specific way, like:

// Overlaying text on images
// Building custom floating action buttons or tooltips
// Creating advanced background designs with overlapping containers