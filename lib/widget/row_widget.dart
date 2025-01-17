import 'package:flutter/material.dart';

class RowWidgetExample extends StatelessWidget{
  const RowWidgetExample({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Row Widget'),
        backgroundColor: const Color.fromARGB(233, 9, 196, 209),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Container(
            color: const Color.fromARGB(249, 5, 209, 134),
            alignment: Alignment.center,
            height: 100,
            width: 100,
            child: const Text('First'),
          ),
          Container(
            color: const Color.fromARGB(255, 124, 15, 3),
            alignment: Alignment.center,
            height: 100,
            width: 100,
            child: const Text('First'),
          ),
          Container(
            color: const Color.fromARGB(245, 231, 247, 9),
            alignment: Alignment.center,
            height: 100,
            width: 100,
            child: const Text('First',selectionColor: Color.fromARGB(5, 0, 0, 0)),
          )
        ],
      ),
    );
  }
}




// The Row widget in Flutter is used to arrange its child widgets in a horizontal direction (left to right by default). Similar to Column, it is one of the fundamental layout widgets in Flutter.

// Here are all the properties of the Row widget and their descriptions:

// 1. children
// Type: List<Widget>
// Description: A list of widgets to be displayed horizontally. Each child is placed next to the previous child in a horizontal line.
// Example:
// dart
// Copy code
// Row(
//   children: [
//     Icon(Icons.star),
//     Text('Star Icon'),
//     ElevatedButton(onPressed: () {}, child: Text('Button')),
//   ],
// )
// 2. mainAxisAlignment
// Type: MainAxisAlignment
// Description: Controls the alignment of the children along the main axis, which is the horizontal axis in a Row. This property helps manage the horizontal distribution of the child widgets.
// Possible Values:
// MainAxisAlignment.start: Places children at the start (left) of the row.
// MainAxisAlignment.end: Places children at the end (right) of the row.
// MainAxisAlignment.center: Aligns children in the horizontal center of the row.
// MainAxisAlignment.spaceBetween: Distributes children evenly with no space at the start or end.
// MainAxisAlignment.spaceAround: Distributes children evenly with space before the first child and after the last child.
// MainAxisAlignment.spaceEvenly: Places equal space between and around all children.
// Example:
// dart
// Copy code
// Row(
//   mainAxisAlignment: MainAxisAlignment.center,
//   children: [
//     Icon(Icons.star),
//     Text('Centered Row'),
//   ],
// )
// 3. crossAxisAlignment
// Type: CrossAxisAlignment
// Description: Controls the alignment of the children along the cross axis, which is the vertical axis in a Row. This property determines how the child widgets are aligned vertically within the row.
// Possible Values:
// CrossAxisAlignment.start: Aligns children at the top of the row.
// CrossAxisAlignment.end: Aligns children at the bottom of the row.
// CrossAxisAlignment.center: Vertically centers the children.
// CrossAxisAlignment.stretch: Stretches children to fill the available vertical space.
// CrossAxisAlignment.baseline: Aligns children along their text baselines (requires textBaseline to be set).
// Example:
// dart
// Copy code
// Row(
//   crossAxisAlignment: CrossAxisAlignment.start,
//   children: [
//     Icon(Icons.star),
//     Text('Start aligned Row'),
//   ],
// )
// 4. mainAxisSize
// Type: MainAxisSize
// Description: Controls how much space the Row should take along the main axis (horizontal axis). It can either take up the minimum amount of space needed for its children or occupy the maximum available space.
// Possible Values:
// MainAxisSize.max (default): Takes up as much horizontal space as possible.
// MainAxisSize.min: Takes only as much horizontal space as its children need.
// Example:
// dart
// Copy code
// Row(
//   mainAxisSize: MainAxisSize.min,
//   children: [
//     Icon(Icons.star),
//     Text('Min size Row'),
//   ],
// )
// 5. verticalDirection
// Type: VerticalDirection
// Description: Determines the order in which children are laid out vertically in the row. Normally, children are laid out from top to bottom, but this can be reversed.
// Possible Values:
// VerticalDirection.down (default): Children are laid out from top to bottom.
// VerticalDirection.up: Children are laid out from bottom to top.
// Example:
// dart
// Copy code
// Row(
//   verticalDirection: VerticalDirection.up,
//   crossAxisAlignment: CrossAxisAlignment.start,
//   children: [
//     Icon(Icons.star),
//     Text('Bottom to Top'),
//   ],
// )
// 6. textDirection
// Type: TextDirection
// Description: Controls the direction in which the children are laid out horizontally. This is mainly used for languages that are read left-to-right (LTR) or right-to-left (RTL).
// Possible Values:
// TextDirection.ltr: Layout children from left to right.
// TextDirection.rtl: Layout children from right to left.
// Example:
// dart
// Copy code
// Row(
//   textDirection: TextDirection.rtl,
//   children: [
//     Icon(Icons.star),
//     Text('Right to Left Layout'),
//   ],
// )
// 7. crossAxisAlignment.baseline
// Type: TextBaseline
// Description: This property is used only when crossAxisAlignment is set to CrossAxisAlignment.baseline. It aligns the children along their baseline, which is useful in text-based layouts.
// Possible Values:
// TextBaseline.alphabetic
// TextBaseline.ideographic
// Example:
// dart
// Copy code
// Row(
//   crossAxisAlignment: CrossAxisAlignment.baseline,
//   textBaseline: TextBaseline.alphabetic,
//   children: [
//     Text('Aligned'),
//     Text('Along Baseline'),
//   ],
// )
// 8. clipBehavior
// Type: Clip
// Description: Determines how to clip (or trim) the content if it overflows the bounds of the Row. This can be useful to manage overflow behavior.
// Possible Values:
// Clip.none: No clipping is applied, allowing overflow.
// Clip.hardEdge: Clip the content at the edges.
// Clip.antiAlias: Clip with antialiasing to smooth edges.
// Clip.antiAliasWithSaveLayer: Antialiased clipping with a save layer.
// Example:
// dart
// Copy code
// Row(
//   clipBehavior: Clip.hardEdge,
//   children: [
//     Text('This text may overflow'),
//   ],
// )
// Summary of Key Properties:
// children: Widgets to be displayed horizontally in the row.
// mainAxisAlignment: Controls horizontal alignment.
// crossAxisAlignment: Controls vertical alignment.
// mainAxisSize: Defines how much horizontal space the row should occupy.
// verticalDirection: Controls the vertical direction of the layout (top-to-bottom or bottom-to-top).
// textDirection: Sets the layout direction (LTR or RTL).
// textBaseline: Used for aligning children along their baseline.
// clipBehavior: Determines how content that overflows the row’s bounds is clipped.
// These properties give you fine-grained control over how the Row widget behaves, allowing you to create horizontally aligned and responsive layouts in Flutter.