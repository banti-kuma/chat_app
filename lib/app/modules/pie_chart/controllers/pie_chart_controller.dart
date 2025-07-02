import '../../../export.dart';

class PieChartController extends GetxController {
  int touchedIndex = -1;


  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
  }

  selectIndexOfChart(FlTouchEvent event, PieTouchResponse? pieTouchResponse){
    if (!event.isInterestedForInteractions ||
        pieTouchResponse == null ||
        pieTouchResponse.touchedSection == null) {
      touchedIndex = -1;
      return;
    }
    touchedIndex = pieTouchResponse
        .touchedSection!.touchedSectionIndex;
    update();
  }


}
