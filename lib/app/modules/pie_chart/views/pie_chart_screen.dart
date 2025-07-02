import '../../../export.dart';

class PieChartScreen extends StatelessWidget {
  final controller = Get.put(PieChartController());
  PieChartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(isBack: true, appBarTitleText: strPieChart),
      body: GetBuilder<PieChartController>(
          init: PieChartController(),
          builder: (context) {
            return Scaffold(
              body: PieChart(
                PieChartData(
                  pieTouchData: PieTouchData(
                    touchCallback: (FlTouchEvent event, pieTouchResponse) {
                      controller.selectIndexOfChart(event, pieTouchResponse);
                    },
                  ),
                  startDegreeOffset: 180,
                  borderData: FlBorderData(
                    show: false,
                  ),
                  sectionsSpace: 1,
                  centerSpaceRadius: 0,
                  sections: showingSections(),
                ),
              ),
            );
          }),
    );
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(
      4,
      (i) {
        final isTouched = i == controller.touchedIndex;
        const color0 = AppColors.contentColorBlue;
        const color1 = AppColors.contentColorYellow;
        const color2 = AppColors.contentColorPink;
        const color3 = AppColors.contentColorGreen;

        switch (i) {
          case 0:
            return PieChartSectionData(
              color: color0,
              value: 20,
              title: '20%',
              radius: 80,
              titlePositionPercentageOffset: 0.55,
              borderSide: isTouched
                  ? const BorderSide(
                      color: AppColors.contentColorWhite, width: 6)
                  : BorderSide(
                      color: AppColors.contentColorWhite.withOpacity(0)),
            );
          case 1:
            return PieChartSectionData(
              color: color1,
              value: 30,
              title: '30%',
              radius: 65,
              titlePositionPercentageOffset: 0.55,
              borderSide: isTouched
                  ? const BorderSide(
                      color: AppColors.contentColorWhite, width: 6)
                  : BorderSide(
                      color: AppColors.contentColorWhite.withOpacity(0)),
            );
          case 2:
            return PieChartSectionData(
              color: color2,
              value: 25,
              title: '25%',
              radius: 60,
              titlePositionPercentageOffset: 0.6,
              borderSide: isTouched
                  ? const BorderSide(
                      color: AppColors.contentColorWhite, width: 6)
                  : BorderSide(
                      color: AppColors.contentColorWhite.withOpacity(0)),
            );
          case 3:
            return PieChartSectionData(
              color: color3,
              value: 25,
              title: '25%',
              radius: 70,
              titlePositionPercentageOffset: 0.55,
              borderSide: isTouched
                  ? const BorderSide(
                      color: AppColors.contentColorWhite, width: 6)
                  : BorderSide(
                      color: AppColors.contentColorWhite.withOpacity(0)),
            );
          default:
            throw Error();
        }
      },
    );
  }

}
