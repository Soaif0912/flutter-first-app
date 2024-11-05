import 'package:flutter/material.dart';

class ClipRRectExample extends StatelessWidget{
  const ClipRRectExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home'),),
      // drawer: const Drawer(),
      body: Center(
        child:  ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(50)),
          child: Align(
            alignment: Alignment.center,
            heightFactor: 0.7,
            widthFactor: 0.8,
            child: Image.asset("images/nature1_demo.jpg"),
          ),
        ),
      )
      
    );
  }
}




// The ClipRRect widget in Flutter is used to clip its child widget with rounded corners. It wraps any widget and applies a rectangular clip with customizable corner radii, making it useful for creating rounded corners on images, containers, or other UI elements.

// Key Properties
// borderRadius: Defines the radius of the rounded corners. It accepts a BorderRadius object, allowing you to specify different radii for each corner or apply a uniform radius to all corners.
// clipBehavior: Defines how to handle clipping. By default, it is Clip.antiAlias, which smoothens the edges. Other options include Clip.none, Clip.hardEdge, and Clip.antiAliasWithSaveLayer.
// Use Cases
// The ClipRRect widget is especially useful for:

// Rounding the corners of images
// Adding rounded corners to any widget without using decoration
// Creating a more polished and smooth UI by rounding the edges of UI components