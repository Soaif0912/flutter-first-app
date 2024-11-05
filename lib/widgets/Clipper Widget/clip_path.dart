
import 'package:flutter/material.dart';

class ClipPathExample extends StatelessWidget {
  
  const ClipPathExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("ClipPath Example")),
      body: Center(
        child: ClipPath(
          clipper: WaveClipper(),
          child: Container(
            width: 200,
            height: 200,
            color: Colors.blue,
            child: const Center(
              child: Text(
                "Triangle Clip",
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
            ),
          ),
        ),
      ),
    );
  }
}


class TriangleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false; // return true if you want to recalculate the path
  }
}


class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height * 0.6); // Start point
    path.quadraticBezierTo(
      size.width / 4, size.height, // Control point
      size.width / 2, size.height * 0.6, // Middle point
    );
    path.quadraticBezierTo(
      size.width * 3 / 4, size.height * 0.2, // Control point
      size.width, size.height * 0.6, // End point
    );
    path.lineTo(size.width, 0); // Top right point
    path.close(); // Close the path
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false; // Change logic if needed
  }
}
