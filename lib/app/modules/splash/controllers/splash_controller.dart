import '../../../export.dart';

class SplashController extends GetxController {
  var timer;

  @override
  void onInit() {
    _navigateToNextScreen();
    super.onInit();
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }


  //*===================================================================== Check App validity ==========================================================*
  void _navigateToNextScreen() =>
      timer = Timer(const Duration(seconds: 3, milliseconds: 500), () async {
        Get.offAndToNamed(AppRoutes.homeRoute);
      });


}
