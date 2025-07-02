import '../export.dart';

class AppPages {
  static const INITIAL = AppRoutes.splashRoute;

  static final routes = [
    GetPage(
      name: AppRoutes.splashRoute,
      page: () => SplashScreen(),
      bindings: [SplashBinding()],
    ),


    GetPage(
      name: AppRoutes.homeRoute,
      page: () => HomeScreen(),
      bindings: [HomeBinding()],
    ),

    GetPage(
      name: AppRoutes.lineChartPageRoute,
      page: () => LineChartScreen(),
      bindings: [LineChartBinding()],
    ),


    GetPage(
      name: AppRoutes.barChartPageRoute,
      page: () => BarChartScreen(),
      bindings: [BarChartBinding()],
    ),


    GetPage(
      name: AppRoutes.pieChartPageRoute,
      page: () => PieChartScreen(),
      bindings: [PieChartBinding()],
    ),


    GetPage(
      name: AppRoutes.radarChartPageRoute,
      page: () => RadarChartScreen(),
      bindings: [RadarChartBinding()],
    ),


    GetPage(
      name: AppRoutes.scatterChartPageRoute,
      page: () => ScatterChartScreen(),
      bindings: [ScatterChartBinding()],
    ),

    GetPage(
      name: AppRoutes.googleMapPageRoute,
      page: () => GoogleMapScreen(),
      bindings: [GoogleMapBinding()],
    ),

  ];
}
