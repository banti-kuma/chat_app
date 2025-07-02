

import '../../../export.dart';

class PieChartBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PieChartController>(
      () => PieChartController(),
    );
  }
}
