import 'package:flutter/material.dart';
import 'appbar_example.dart';

class SingleChildScrollViewExample extends StatelessWidget {
  const SingleChildScrollViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    // Get screen dimensions
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: const AppBarExample(),
      // drawer: const Drawer(),
      body: SingleChildScrollView(
        reverse: false,
        padding:  EdgeInsets.all(screenHeight * 0.03),
        child: Column(
          children: [
            Container(
              color: const Color.fromARGB(243, 242, 2, 2),
              height: screenHeight * 0.4, // 40% of screen height
              width: screenWidth * 0.9, // 90% of screen width
              child: const Center(
                child: Text(
                  'First Container',
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 30,
                  ),
                ),
              ),
            ),
            Container(
              height: screenHeight * 0.4, // 40% of screen height
              width: screenWidth * 0.9, // 90% of screen width
              child: Image.asset('images/demo-pexels-1.jpg'),
            ),
            Container(
              color: const Color.fromARGB(243, 6, 2, 242),
              height: screenHeight * 0.4, // 40% of screen height
              width: screenWidth * 0.9, // 90% of screen width
              child: const Center(
                child: Text(
                  'Third Container',
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 30,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}