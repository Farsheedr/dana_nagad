import 'package:get/get.dart';

import '../controllers/nominee_information_controller.dart';

class NomineeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NomineeController>(
      () => NomineeController(),
    );
  }
}
