import 'package:flutter/material.dart';

class ContainerExample extends StatelessWidget {
  const ContainerExample({super.key});

  @override
  Widget build(BuildContext context) {
    return (Container(
      width: 300,
      height: 100,
      alignment: Alignment.center,
      // padding: EdgeInsets.all(10.0),
      margin: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
      decoration: BoxDecoration(
        // color: Colors.lightBlue,
        borderRadius: BorderRadius.circular(15),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            offset: Offset(5, 5),
            blurRadius: 10.0,
          ),
        ],
        gradient: const LinearGradient(
          colors: [Colors.blue, Colors.lightBlueAccent],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      transform: Matrix4.rotationZ(0.05),
      child: const Text(
        'Hello, Container!',
        style: TextStyle(color: Colors.white, fontSize: 18),
      ),
    ));
  }
}
