import 'package:flutter/material.dart';

import 'widgets/rich_text.dart';
import 'widgets/container_widget.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text('App Title'),
      ),
      body: const ContainerExample(),
    ),
  ));
}
