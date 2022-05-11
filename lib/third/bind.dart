import 'package:get/get.dart';

import 'logic.dart';

class ThirdBind extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ThirdLogic>(() => ThirdLogic());
  }
}