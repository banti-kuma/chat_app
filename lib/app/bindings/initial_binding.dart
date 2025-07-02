import '../export.dart';

class InitialBinding implements Bindings {
  @override
  void dependencies() {
    SplashBinding().dependencies();
  }
}
