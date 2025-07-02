
import '../../../export.dart';

class BarChartBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BarChartController>(
      () => BarChartController(),
    );
  }
}
