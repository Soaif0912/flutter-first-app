import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/getx_demo.dart/ui.dart';
import 'package:flutter_application_1/screens/shopping_page/shopping_list.dart';

// widget importing -->
import 'widget/Clipper Widget/clip_path.dart';


void main() {
  runApp( MaterialApp(
    title: 'Shopping App',
    debugShowCheckedModeBanner: false,
    home: ProductPage(),
  ));
}
