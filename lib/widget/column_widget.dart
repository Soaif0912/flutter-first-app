import 'package:flutter/material.dart';

class ColumnExample extends StatelessWidget {

  const ColumnExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Column Example')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center, // Align children vertically in the center
        crossAxisAlignment: CrossAxisAlignment.center, // Align children horizontally in the center
        children: <Widget>[
          const Text('Item 1'),
          const Text('Item 2'),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Button'),
          ),
        ],
      ),
    );
  }
}



// The Column widget in Flutter is used to arrange its child widgets in a vertical direction, from top to bottom. It is one of the most commonly used layout widgets for building UI elements that need to be stacked vertically.

// Key Characteristics of Column:
// Vertical Layout: The primary function of Column is to lay out its children vertically.
// Alignment Options: You can control the horizontal and vertical alignment of its children using properties like mainAxisAlignment and crossAxisAlignment.
// Takes Unlimited Children: A Column can have multiple child widgets, but unlike ListView, it does not scroll by default. If you have too many children, it may cause overflow, so you might need to wrap it inside a SingleChildScrollView for scrolling.
// Common Properties of Column:
// children: A list of widgets that are laid out vertically.

// mainAxisAlignment: Controls the vertical alignment of the children along the vertical axis (main axis). You can set it to values like:

// MainAxisAlignment.start (default): Aligns children at the top.
// MainAxisAlignment.end: Aligns children at the bottom.
// MainAxisAlignment.center: Aligns children in the middle.
// MainAxisAlignment.spaceBetween: Distributes space evenly between the children.
// MainAxisAlignment.spaceAround: Similar to spaceBetween, but with space before the first and after the last child.
// MainAxisAlignment.spaceEvenly: Distributes space evenly between and around all children.
// crossAxisAlignment: Controls the horizontal alignment of the children along the horizontal axis (cross axis). You can set it to:

// CrossAxisAlignment.start: Aligns children to the left.
// CrossAxisAlignment.end: Aligns children to the right.
// CrossAxisAlignment.center (default): Aligns children in the center horizontally.
// CrossAxisAlignment.stretch: Stretches the children to fill the available horizontal space.
// mainAxisSize: Controls the size of the Column along its main axis. It can be set to:

// MainAxisSize.max (default): Takes as much vertical space as possible.
// MainAxisSize.min: Takes only as much vertical space as the children need.

// Important Notes:
// Column does not scroll by itself. If you have many children or the children’s height exceeds the screen height, you should wrap the Column inside a SingleChildScrollView.
// If you need to display widgets both vertically and scrollable, use a ListView.
