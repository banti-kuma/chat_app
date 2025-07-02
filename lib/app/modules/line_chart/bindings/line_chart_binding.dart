import '../../../export.dart';

class LineChartBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LineChartController>(
          () => LineChartController(),
    );
  }
}
