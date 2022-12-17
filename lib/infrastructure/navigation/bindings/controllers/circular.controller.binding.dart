import 'package:get/get.dart';

import '../../../../presentation/circular/controllers/circular.controller.dart';

class CircularControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CircularController>(
      () => CircularController(),
    );
  }
}
