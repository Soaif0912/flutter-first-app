import 'package:flutter/material.dart';

// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text(
//             'AppBar'
//             ),
//           ),
//         body: Center(
//           child: containerWidget,
//         ),
//       ),
//     ),
//   );
// }

// Text widget --->

Widget textWidget = 
const Center(
  child:Text('Hello')
);


// children widget --->

Widget childrenWidget = 
const Column(
  children: [
    DefaultTextStyle(
      style: TextStyle(fontSize: 30, color: Colors.amber, wordSpacing: 4.0, ),
        child: Column(
          children: [
            Text('First'),
            Text('Second'),
            Text('Third'),
            Text('Fourth'),
          ],
        )
    )
  ],
);


// TextSpan Example --->

Widget textSpanRichText =
RichText(
  text: const TextSpan(
    text: 'Hello ', // Unstyled portion
    style: TextStyle(color: Colors.black, fontSize: 18),
    children: <TextSpan>[
      TextSpan(
        text: 'Flutter', // Bold portion
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
      ),
      TextSpan(
        text: ' developers!', // Italic portion
        style: TextStyle(fontStyle: FontStyle.italic),
      ),
    ],
  ),
);


// Second Method --->

Widget textSpanRichText2 = 
const Text.rich(
  TextSpan(
    text: 'Hello ', // Unstyled portion
    style: TextStyle(color: Colors.black, fontSize: 18),
    children: <TextSpan>[
      TextSpan(
        text: 'Flutter', // Bold portion
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      TextSpan(
        text: ' developers!', // Italic portion
        style: TextStyle(fontStyle: FontStyle.italic),
      ),
    ],
  ),
);


// Container Widget --->

Widget containerWidget = 
Container(
  color:  Colors.red,
  padding: const EdgeInsets.all(100),
  child: const Text('Holla'),
);