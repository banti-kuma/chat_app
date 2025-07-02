import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../../export.dart';

class GoogleMapScreen extends StatelessWidget {
  final controller = Get.put(MapController());
  final themeController = Get.put(ThemeController());

  GoogleMapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MapController>(
        init: MapController(),
        builder: (controller) {
          return Scaffold(
            appBar: AppBar(
                backgroundColor: Colors.white,
                title: TextView(
                  text: "Google Map",
                  textStyle: textStyleBodyLarge().copyWith(
                    color: Colors.cyan,
                    fontSize: font_28,
                    fontWeight: FontWeight.w700,
                  ),
                )),
            body: GoogleMap(
              mapType: MapType.normal,
              initialCameraPosition: controller.kGooglePlex,
              onMapCreated: (GoogleMapController cntr) {
                controller.googleMapController.complete(cntr);
              },
            ),
            floatingActionButton: FloatingActionButton.extended(
              onPressed: controller.goToTheLake,
              label: const Text('To the lake!'),
              icon: const Icon(Icons.directions_boat),
            ),
          );
        });
  }

}
