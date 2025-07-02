import '../../../export.dart';

class RadarChartController extends GetxController {
 var selectedDataSetIndex = -1;
 double angleValue = 0;
 bool relativeAngleMode = true;


  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
  }

 selectIndexOfChart(FlTouchEvent event, RadarTouchResponse? response){
   if (!event.isInterestedForInteractions) {
     selectedDataSetIndex = -1;
     return;
   }
   selectedDataSetIndex =
       response?.touchedSpot?.touchedDataSetIndex ?? -1;
   update();
 }



}
