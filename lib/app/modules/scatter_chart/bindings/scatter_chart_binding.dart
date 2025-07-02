import '../../../export.dart';

class ScatterChartBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ScatterChartController>(
      () => ScatterChartController(),
    );
  }
}
