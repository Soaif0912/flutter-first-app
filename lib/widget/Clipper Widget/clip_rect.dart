
import 'package:flutter/material.dart';

class ClipRectExample extends StatelessWidget{
  const ClipRectExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home'),),
      // drawer: const Drawer(),
      body: Center(
        child: ClipRect(
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


// Explanation
// In the example:

// ClipRect applies a rectangular clipping region around its child.
// Align is used with widthFactor and heightFactor to scale down the visible area, effectively clipping the image so only the central portion is shown.


// The ClipRect widget in Flutter is used to clip (or crop) its child widget within a rectangular area. It creates a rectangular clipping region that prevents any parts of the child widget outside this region from being displayed. This is useful when you want to display only a specific section of a widget without resizing or repositioning it.

// Key Features of ClipRect
// Rectangular Clipping: ClipRect only supports rectangular clipping.
// Performance: It's generally efficient because clipping is handled by the underlying graphics engine.
// Typical Usage of ClipRect
// The ClipRect widget is often used in scenarios where you want to show part of a larger widget, like an image or text, within a constrained area. For instance:

// Cropping images or videos: Display only a portion of a large image.
// Custom animations or scroll effects: Show part of a widget that scrolls or animates into view.