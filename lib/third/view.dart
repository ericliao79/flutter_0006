import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

// 使用 GetView 代替 statelessWidget, 只適用只有一個 Controller 的情況
class ThirdPage extends GetView<ThirdLogic> {
  ThirdPage({Key? key}) : super(key: key);

  final arguments = Get.arguments as Map<String, String>;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Third ${Get.arguments}"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("arguments: ${arguments['message']}"),
            Obx(() {
                return Text('${controller.state.name}');
              },
            ),
          ],
        ),
      ),
    );
  }
}