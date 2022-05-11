import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class OtherPage extends StatelessWidget {
  OtherPage({Key? key}) : super(key: key);

  final arguments = Get.arguments as Map<String, String>;
  final logic = Get.put(OtherLogic());
  final state = Get.find<OtherLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${arguments['title']}'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("arguments: ${arguments['message']}"),
          ],
        ),
      ),
    );
  }
}
