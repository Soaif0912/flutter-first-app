import 'package:flutter/material.dart';

class OverlappingSectionsExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none, // Allow widgets to overflow
        children: [
          // Bottom Section
          ClipPath(
            clipper: SedcoHeaderDesign(),
            child: Container(
              height: 300,
              color: Colors.blue,
              child: const Center(
                child: Text(
                  "Bottom Section",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
          ),
          // Top Section
          Positioned(
            top: 0,
            child: ClipPath(
              clipper: SedcoHeaderDesignSecond(),
              child: Container(
                height: 300,
                width: size.width,
                decoration: const BoxDecoration(
                  color: Colors.green,
                ),
                child: const Center(
                  child: Text(
                    "Top Section (Overlapping)",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}



// class ClipPathExample extends StatelessWidget {
  
//   const ClipPathExample({super.key});

//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.sizeOf(context);
//     return Scaffold(
//       appBar: AppBar(title: const Text("ClipPath Example")),
//       body: Column(
//         children: [
//           ClipPath(
//             clipper: SedcoHeaderDesign(),
//             child: Container(
//               width: size.width,
//               height: 200,
//               color: Colors.blue,
//               child: const Center(
//                 child: Text(
//                   "Triangle Clip",
//                   style: TextStyle(color: Colors.black, fontSize: 16),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }


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


class SedcoHeaderDesign extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height ); // Start point

    path.quadraticBezierTo(
      0, size.height * 0.85, // Control point
      size.width * .15, size.height * 0.85, // Middle point
    );

    path.lineTo(size.width * .85, size.height * .85);

    path.quadraticBezierTo(
      size.width , size.height * 0.85, // Control point
      size.width, size.height * .70, // End point
    );
    path.lineTo(size.width,0);
    path.close(); // Close the path
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false; // Change logic if needed
  }
}


class SedcoHeaderDesignSecond extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height -8); // Start point

    path.quadraticBezierTo(
      0, size.height * 0.85 - 8, // Control point
      size.width * .15, size.height * 0.85 - 8, // Middle point
    );

    path.lineTo(size.width * .85, size.height * .85 - 8);

    path.quadraticBezierTo(
      size.width , size.height * 0.85 -8, // Control point
      size.width, size.height * .70 -8, // End point
    );
    path.lineTo(size.width,0);
    path.close(); // Close the path
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false; // Change logic if needed
  }
}




class JaggedClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    // path.lineTo(20, size.height - 50);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}


class JaggedClipperNew extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}