import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../../export.dart';

class MapController extends GetxController {
  final Completer<GoogleMapController> googleMapController =
      Completer<GoogleMapController>();

  CameraPosition kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  CameraPosition kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(29.3867, 77.7414),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
  }

  Future<void> goToTheLake() async {
    final GoogleMapController controller = await googleMapController.future;
    await controller.animateCamera(CameraUpdate.newCameraPosition(kLake));
  }
}
