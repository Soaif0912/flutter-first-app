import 'package:flutter/material.dart';

class RichTextExample extends StatelessWidget {
  const RichTextExample({super.key});

  @override
  Widget build(BuildContext context) {
    return (RichText(
      text: const TextSpan(
        children: [
          TextSpan(
            text: 'Hello, ',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
          TextSpan(
            text: 'world!',
            style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          TextSpan(
            text: ' How are you today?',
            style: TextStyle(
              color: Colors.green,
              fontStyle: FontStyle.italic,
              fontSize: 20,
            ),
          ),
        ],
      ),
    ));
  }
}



// In Flutter, "rich text" refers to text with multiple styles or formatting within a single block. You can achieve this using the RichText widget, which allows you to apply different styles (such as color, font weight, and font size) to different parts of the text.

// Here’s a basic overview of how to use it:

// RichText Widget: This widget allows for displaying richly formatted text. Inside the RichText, the TextSpan widget is used to define each section of the text with specific styles.

// TextSpan Widget: The TextSpan widget allows you to create styled text spans, or sections, within the RichText. You can nest TextSpans to apply different styles to different parts of the text.

// Style with TextStyle: Each TextSpan can be styled using the TextStyle class, where you can define properties like color, font size, font weight, font style, decoration, and more.


