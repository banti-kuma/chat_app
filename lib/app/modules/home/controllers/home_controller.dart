import 'package:chart_demo/app/modules/home/charts_name_model.dart';
import '../../../export.dart';

class HomeController extends GetxController {

  List<ChartsNameModel> chartNamesList = [
    ChartsNameModel("Line Chart", iconsLineGraph, AppRoutes.lineChartPageRoute),
    ChartsNameModel("Bar Chart", iconsBarChart, AppRoutes.barChartPageRoute),
    ChartsNameModel("Pie Chart", iconsPieChart, AppRoutes.pieChartPageRoute),
    ChartsNameModel("Radar Chart", iconsRadarChart, AppRoutes.radarChartPageRoute),
    ChartsNameModel("Scatter Chart", iconsScatterChart, AppRoutes.scatterChartPageRoute),
    ChartsNameModel("Google Map", iconsGoogleMap, AppRoutes.googleMapPageRoute),
  ];

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
