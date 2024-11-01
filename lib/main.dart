import 'package:flutter/material.dart';

import 'widgets/rich_text.dart';
import 'widgets/container_widget.dart';
import 'widgets/appbar_example.dart';

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      appBar: AppBarExample(),
      body: ContainerExample(),
    ),
  ));
}
