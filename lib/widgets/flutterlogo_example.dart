import 'package:flutter/material.dart';
import 'appbar_example.dart';

class FlutterLogoExample extends StatefulWidget {
  const FlutterLogoExample({super.key});

  @override
  _FlutterLogoExampleState createState() => _FlutterLogoExampleState();
}

class _FlutterLogoExampleState extends State<FlutterLogoExample> {
  double _size = 100.0; // Ensure this is a double

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarExample(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlutterLogo(
              size: _size,
              curve: Curves.easeIn,
              duration: const Duration(seconds: 1),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  if(_size >= 300){
                    _size = 100;
                  }else{
                    _size += 50;
                  }
                });
              },
              child: const Text('Click'),
            )
          ],
        ),
      )
    );
  }
}


