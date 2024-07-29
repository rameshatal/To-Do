import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:to_do_app/doorserve_app_screen/controller.dart';

class CountScreen extends GetView<MyController> {
  const CountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var count = 0.obs;
    return Scaffold(
      appBar: AppBar(
        title: Text("Count Screen"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Obx(() => Text("${MyController}")),
            ElevatedButton(onPressed: () {
              count++;
            }, child: Text(controller.a.toString()))
          ],
        ),
      ),
    );
  }
}






















