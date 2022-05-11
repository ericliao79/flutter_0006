import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final logic = Get.put(HomeLogic());
  final state = Get.find<HomeLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Other'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                child: const Text('Go to Other'),
                onPressed: () {
                  var arguments =  {
                    'title': 'The title is from arguments',
                    'message': 'The message is from arguments',
                  };
                  Get.toNamed('/other', arguments: arguments);
                })
          ],
        ),
      ),
    );
  }
}
