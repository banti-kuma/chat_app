import '../../../export.dart';

class RadarChartScreen extends StatelessWidget {
  final controller = Get.put(RadarChartController());

  RadarChartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          isBack: true, appBarTitleText: strRadarChart),
      body: GetBuilder<RadarChartController>(
          init: RadarChartController(),
          builder: (context) {
            return Scaffold(
              body: Center(
                child: SizedBox(
                  child: RadarChart(
                    RadarChartData(
                      radarTouchData: RadarTouchData(
                        touchCallback: (FlTouchEvent event, response) {
                          controller.selectIndexOfChart(event,response);
                        },
                      ),
                      dataSets: showingDataSets(),
                      radarBackgroundColor: Colors.transparent,
                      borderData: FlBorderData(show: false),
                      radarBorderData: const BorderSide(color: Colors.transparent),
                      titlePositionPercentageOffset: 0.2,
                      titleTextStyle:
                      TextStyle(color: AppColors.appGreenColor, fontSize: 14),
                      getTitle: (index, angle) {
                        final usedAngle =
                        controller.relativeAngleMode ? angle + controller.angleValue : controller.angleValue;
                        switch (index) {
                          case 0:
                            return RadarChartTitle(
                              text: 'Mobile or Tablet',
                              angle: usedAngle,
                            );
                          case 2:
                            return RadarChartTitle(
                              text: 'Desktop',
                              angle: usedAngle,
                            );
                          case 1:
                            return RadarChartTitle(text: 'TV', angle: usedAngle);
                          default:
                            return const RadarChartTitle(text: '');
                        }
                      },
                      tickCount: 1,
                      ticksTextStyle:
                      const TextStyle(color: Colors.transparent, fontSize: 10),
                      tickBorderData: const BorderSide(color: Colors.transparent),
                      gridBorderData: BorderSide(color: AppColors.contentColorPurple, width: 2),
                    ),
                    swapAnimationDuration: const Duration(milliseconds: 400),
                  ),
                ),
              )
            );
          }),
    );
  }

  List<RadarDataSet> showingDataSets() {
    return rawDataSets().asMap().entries.map((entry) {
      final index = entry.key;
      final rawDataSet = entry.value;

      final isSelected = index == controller.selectedDataSetIndex
          ? true
          : controller.selectedDataSetIndex == -1
          ? true
          : false;

      return RadarDataSet(
        fillColor: isSelected
            ? rawDataSet.color.withOpacity(0.2)
            : rawDataSet.color.withOpacity(0.05),
        borderColor:
        isSelected ? rawDataSet.color : rawDataSet.color.withOpacity(0.25),
        entryRadius: isSelected ? 3 : 2,
        dataEntries:
        rawDataSet.values.map((e) => RadarEntry(value: e)).toList(),
        borderWidth: isSelected ? 2.3 : 2,
      );
    }).toList();
  }


  List<RawDataSet> rawDataSets() {
    return [
      RawDataSet(
        title: 'Fashion',
        color: AppColors.contentColorBlue,
        values: [
          300,
          50,
          250,
        ],
      ),
      RawDataSet(
        title: 'Art & Tech',
        color: AppColors.contentColorPink,
        values: [
          250,
          100,
          200,
        ],
      ),
      RawDataSet(
        title: 'Entertainment',
        color: AppColors.contentColorGreen,
        values: [
          200,
          150,
          50,
        ],
      ),
      RawDataSet(
        title: 'Off-road Vehicle',
        color: AppColors.contentColorCyan,
        values: [
          150,
          200,
          150,
        ],
      ),
      RawDataSet(
        title: 'Boxing',
        color: AppColors.appGreenColor,
        values: [
          100,
          250,
          100,
        ],
      ),
    ];
  }


}


class RawDataSet {
  RawDataSet({
    required this.title,
    required this.color,
    required this.values,
  });

  final String title;
  final Color color;
  final List<double> values;
}