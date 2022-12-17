import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controllers/circular.controller.dart';

class CircularScreen extends GetView<CircularController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CircularScreen'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'CircularScreen is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
