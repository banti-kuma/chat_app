import '../../../export.dart';

class RadarChartBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RadarChartController>(
      () => RadarChartController(),
    );
  }
}
