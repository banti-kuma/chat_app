import '../../../export.dart';

class GoogleMapBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MapController>(
      () => MapController(),
    );
  }
}
