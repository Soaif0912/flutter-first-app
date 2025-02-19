import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/getx_demo.dart/getbuild_vs_obx/getbuild_vs_obx_view.dart';
import 'package:flutter_application_1/screens/getx_demo.dart/ui.dart';
import 'package:flutter_application_1/screens/shopping_page/shopping_list.dart';
import 'package:flutter_application_1/widget/Bottom%20Bar/bottom_bar.dart';

// widget importing -->
import 'widget/Clipper Widget/clip_path.dart';


void main() {
  runApp( MaterialApp(
    title: 'Shopping App',
    debugShowCheckedModeBanner: false,
    home: BottomNavigationbar(),
  ));
}
