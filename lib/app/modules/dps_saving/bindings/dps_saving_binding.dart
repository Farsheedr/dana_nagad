import 'package:get/get.dart';

import '../controllers/dps_saving_controller.dart';

class DpsSavingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DpsSavingController>(
      () => DpsSavingController(),
    );
  }
}
