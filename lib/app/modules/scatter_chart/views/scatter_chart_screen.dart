import 'dart:math';

import '../../../export.dart';

class ScatterChartScreen extends StatelessWidget {
  final controller = Get.put(ScatterChartController());

  ScatterChartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(isBack: true, appBarTitleText: strScatterChart),
      body: GetBuilder<ScatterChartController>(
          init: ScatterChartController(),
          builder: (context) {
            return Scaffold(
              body: Center(
                child: SizedBox(
                  height: Get.width,
                  child: ScatterChart(
                    ScatterChartData(
                      scatterSpots: controller.showFlutter
                          ? flutterLogoData()
                          : randomData(),
                      minX: 0,
                      maxX: controller.maxX,
                      minY: 0,
                      maxY: controller.maxY,
                      borderData: FlBorderData(
                        show: false,
                      ),
                      gridData: const FlGridData(
                        show: false,
                      ),
                      titlesData: titlesData1,
                      scatterTouchData: ScatterTouchData(
                        enabled: false,
                      ),
                    ),
                    swapAnimationDuration: const Duration(milliseconds: 600),
                    swapAnimationCurve: Curves.fastOutSlowIn,
                  ),
                ),
              ),
            );
          }),
    );
  }

  FlTitlesData get titlesData1 => const FlTitlesData(
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: true),
        ),
        rightTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        leftTitles: AxisTitles(
            sideTitles: SideTitles(showTitles: true)),
      );

  List<ScatterSpot> flutterLogoData() {
    return [
      /// section 1
      ScatterSpot(
        20,
        14.5,
        dotPainter: FlDotCirclePainter(
            color: AppColors.appBlueColor, radius: controller.radius),
      ),
      ScatterSpot(
        20,
        14.5,
        dotPainter: FlDotCirclePainter(
            color: AppColors.appBlueColor, radius: controller.radius),
      ),
      ScatterSpot(
        22,
        16.5,
        dotPainter: FlDotCirclePainter(
            color: AppColors.appBlueColor, radius: controller.radius),
      ),
      ScatterSpot(
        24,
        18.5,
        dotPainter: FlDotCirclePainter(
            color: AppColors.appBlueColor, radius: controller.radius),
      ),

      ScatterSpot(
        22,
        12.5,
        dotPainter: FlDotCirclePainter(
            color: AppColors.appBlueColor, radius: controller.radius),
      ),
      ScatterSpot(
        24,
        14.5,
        dotPainter: FlDotCirclePainter(
            color: AppColors.appBlueColor, radius: controller.radius),
      ),
      ScatterSpot(
        26,
        16.5,
        dotPainter: FlDotCirclePainter(
            color: AppColors.appBlueColor, radius: controller.radius),
      ),

      ScatterSpot(
        24,
        10.5,
        dotPainter: FlDotCirclePainter(
            color: AppColors.appBlueColor, radius: controller.radius),
      ),
      ScatterSpot(
        26,
        12.5,
        dotPainter: FlDotCirclePainter(
            color: AppColors.appBlueColor, radius: controller.radius),
      ),
      ScatterSpot(
        28,
        14.5,
        dotPainter: FlDotCirclePainter(
            color: AppColors.appBlueColor, radius: controller.radius),
      ),

      ScatterSpot(
        26,
        8.5,
        dotPainter: FlDotCirclePainter(
            color: AppColors.appBlueColor, radius: controller.radius),
      ),
      ScatterSpot(
        28,
        10.5,
        dotPainter: FlDotCirclePainter(
            color: AppColors.appBlueColor, radius: controller.radius),
      ),
      ScatterSpot(
        30,
        12.5,
        dotPainter: FlDotCirclePainter(
            color: AppColors.appBlueColor, radius: controller.radius),
      ),

      ScatterSpot(
        28,
        6.5,
        dotPainter: FlDotCirclePainter(
            color: AppColors.appBlueColor, radius: controller.radius),
      ),
      ScatterSpot(
        30,
        8.5,
        dotPainter: FlDotCirclePainter(
            color: AppColors.appBlueColor, radius: controller.radius),
      ),
      ScatterSpot(
        32,
        10.5,
        dotPainter: FlDotCirclePainter(
            color: AppColors.appBlueColor, radius: controller.radius),
      ),

      ScatterSpot(
        30,
        4.5,
        dotPainter: FlDotCirclePainter(
            color: AppColors.appBlueColor, radius: controller.radius),
      ),
      ScatterSpot(
        32,
        6.5,
        dotPainter: FlDotCirclePainter(
            color: AppColors.appBlueColor, radius: controller.radius),
      ),
      ScatterSpot(
        34,
        8.5,
        dotPainter: FlDotCirclePainter(
            color: AppColors.appBlueColor, radius: controller.radius),
      ),

      ScatterSpot(
        34,
        4.5,
        dotPainter: FlDotCirclePainter(
            color: AppColors.appBlueColor, radius: controller.radius),
      ),
      ScatterSpot(
        36,
        6.5,
        dotPainter: FlDotCirclePainter(
            color: AppColors.appBlueColor, radius: controller.radius),
      ),

      ScatterSpot(
        38,
        4.5,
        dotPainter: FlDotCirclePainter(
            color: AppColors.appBlueColor, radius: controller.radius),
      ),

      /// section 2
      ScatterSpot(
        20,
        14.5,
        dotPainter: FlDotCirclePainter(
            color: AppColors.appGreenColor, radius: controller.radius),
      ),
      ScatterSpot(
        22,
        12.5,
        dotPainter: FlDotCirclePainter(
            color: AppColors.appGreenColor, radius: controller.radius),
      ),
      ScatterSpot(
        24,
        10.5,
        dotPainter: FlDotCirclePainter(
            color: AppColors.appGreenColor, radius: controller.radius),
      ),

      ScatterSpot(
        22,
        16.5,
        dotPainter: FlDotCirclePainter(
            color: AppColors.appGreenColor, radius: controller.radius),
      ),
      ScatterSpot(
        24,
        14.5,
        dotPainter: FlDotCirclePainter(
            color: AppColors.appGreenColor, radius: controller.radius),
      ),
      ScatterSpot(
        26,
        12.5,
        dotPainter: FlDotCirclePainter(
            color: AppColors.appGreenColor, radius: controller.radius),
      ),

      ScatterSpot(
        24,
        18.5,
        dotPainter: FlDotCirclePainter(
            color: AppColors.appGreenColor, radius: controller.radius),
      ),
      ScatterSpot(
        26,
        16.5,
        dotPainter: FlDotCirclePainter(
            color: AppColors.appGreenColor, radius: controller.radius),
      ),
      ScatterSpot(
        28,
        14.5,
        dotPainter: FlDotCirclePainter(
            color: AppColors.appGreenColor, radius: controller.radius),
      ),

      ScatterSpot(
        26,
        20.5,
        dotPainter: FlDotCirclePainter(
            color: AppColors.appGreenColor, radius: controller.radius),
      ),
      ScatterSpot(
        28,
        18.5,
        dotPainter: FlDotCirclePainter(
            color: AppColors.appGreenColor, radius: controller.radius),
      ),
      ScatterSpot(
        30,
        16.5,
        dotPainter: FlDotCirclePainter(
            color: AppColors.appGreenColor, radius: controller.radius),
      ),

      ScatterSpot(
        28,
        22.5,
        dotPainter: FlDotCirclePainter(
            color: AppColors.appGreenColor, radius: controller.radius),
      ),
      ScatterSpot(
        30,
        20.5,
        dotPainter: FlDotCirclePainter(
            color: AppColors.appGreenColor, radius: controller.radius),
      ),
      ScatterSpot(
        32,
        18.5,
        dotPainter: FlDotCirclePainter(
            color: AppColors.appGreenColor, radius: controller.radius),
      ),

      ScatterSpot(
        30,
        24.5,
        dotPainter: FlDotCirclePainter(
            color: AppColors.appGreenColor, radius: controller.radius),
      ),
      ScatterSpot(
        32,
        22.5,
        dotPainter: FlDotCirclePainter(
            color: AppColors.appGreenColor, radius: controller.radius),
      ),
      ScatterSpot(
        34,
        20.5,
        dotPainter: FlDotCirclePainter(
            color: AppColors.appGreenColor, radius: controller.radius),
      ),

      ScatterSpot(
        34,
        24.5,
        dotPainter: FlDotCirclePainter(
            color: AppColors.appGreenColor, radius: controller.radius),
      ),
      ScatterSpot(
        36,
        22.5,
        dotPainter: FlDotCirclePainter(
            color: AppColors.appGreenColor, radius: controller.radius),
      ),

      ScatterSpot(
        38,
        24.5,
        dotPainter: FlDotCirclePainter(
            color: AppColors.appGreenColor, radius: controller.radius),
      ),

      /// section 3
      ScatterSpot(
        10,
        25,
        dotPainter: FlDotCirclePainter(
            color: AppColors.appGreenColor, radius: controller.radius),
      ),
      ScatterSpot(
        12,
        23,
        dotPainter: FlDotCirclePainter(
            color: AppColors.appGreenColor, radius: controller.radius),
      ),
      ScatterSpot(
        14,
        21,
        dotPainter: FlDotCirclePainter(
            color: AppColors.appGreenColor, radius: controller.radius),
      ),

      ScatterSpot(
        12,
        27,
        dotPainter: FlDotCirclePainter(
            color: AppColors.appGreenColor, radius: controller.radius),
      ),
      ScatterSpot(
        14,
        25,
        dotPainter: FlDotCirclePainter(
            color: AppColors.appGreenColor, radius: controller.radius),
      ),
      ScatterSpot(
        16,
        23,
        dotPainter: FlDotCirclePainter(
            color: AppColors.appGreenColor, radius: controller.radius),
      ),

      ScatterSpot(
        14,
        29,
        dotPainter: FlDotCirclePainter(
            color: AppColors.appGreenColor, radius: controller.radius),
      ),
      ScatterSpot(
        16,
        27,
        dotPainter: FlDotCirclePainter(
            color: AppColors.appGreenColor, radius: controller.radius),
      ),
      ScatterSpot(
        18,
        25,
        dotPainter: FlDotCirclePainter(
            color: AppColors.appGreenColor, radius: controller.radius),
      ),

      ScatterSpot(
        16,
        31,
        dotPainter: FlDotCirclePainter(
            color: AppColors.appGreenColor, radius: controller.radius),
      ),
      ScatterSpot(
        18,
        29,
        dotPainter: FlDotCirclePainter(
            color: AppColors.appGreenColor, radius: controller.radius),
      ),
      ScatterSpot(
        20,
        27,
        dotPainter: FlDotCirclePainter(
            color: AppColors.appGreenColor, radius: controller.radius),
      ),

      ScatterSpot(
        18,
        33,
        dotPainter: FlDotCirclePainter(
            color: AppColors.appGreenColor, radius: controller.radius),
      ),
      ScatterSpot(
        20,
        31,
        dotPainter: FlDotCirclePainter(
            color: AppColors.appGreenColor, radius: controller.radius),
      ),
      ScatterSpot(
        22,
        29,
        dotPainter: FlDotCirclePainter(
            color: AppColors.appGreenColor, radius: controller.radius),
      ),

      ScatterSpot(
        20,
        35,
        dotPainter: FlDotCirclePainter(
            color: AppColors.appGreenColor, radius: controller.radius),
      ),
      ScatterSpot(
        22,
        33,
        dotPainter: FlDotCirclePainter(
            color: AppColors.appGreenColor, radius: controller.radius),
      ),
      ScatterSpot(
        24,
        31,
        dotPainter: FlDotCirclePainter(
            color: AppColors.appGreenColor, radius: controller.radius),
      ),

      ScatterSpot(
        22,
        37,
        dotPainter: FlDotCirclePainter(
            color: AppColors.appGreenColor, radius: controller.radius),
      ),
      ScatterSpot(
        24,
        35,
        dotPainter: FlDotCirclePainter(
            color: AppColors.appGreenColor, radius: controller.radius),
      ),
      ScatterSpot(
        26,
        33,
        dotPainter: FlDotCirclePainter(
            color: AppColors.appGreenColor, radius: controller.radius),
      ),

      ScatterSpot(
        24,
        39,
        dotPainter: FlDotCirclePainter(
            color: AppColors.appGreenColor, radius: controller.radius),
      ),
      ScatterSpot(
        26,
        37,
        dotPainter: FlDotCirclePainter(
            color: AppColors.appGreenColor, radius: controller.radius),
      ),
      ScatterSpot(
        28,
        35,
        dotPainter: FlDotCirclePainter(
            color: AppColors.appGreenColor, radius: controller.radius),
      ),

      ScatterSpot(
        26,
        41,
        dotPainter: FlDotCirclePainter(
            color: AppColors.appGreenColor, radius: controller.radius),
      ),
      ScatterSpot(
        28,
        39,
        dotPainter: FlDotCirclePainter(
            color: AppColors.appGreenColor, radius: controller.radius),
      ),
      ScatterSpot(
        30,
        37,
        dotPainter: FlDotCirclePainter(
            color: AppColors.appGreenColor, radius: controller.radius),
      ),

      ScatterSpot(
        28,
        43,
        dotPainter: FlDotCirclePainter(
            color: AppColors.appGreenColor, radius: controller.radius),
      ),
      ScatterSpot(
        30,
        41,
        dotPainter: FlDotCirclePainter(
            color: AppColors.appGreenColor, radius: controller.radius),
      ),
      ScatterSpot(
        32,
        39,
        dotPainter: FlDotCirclePainter(
            color: AppColors.appGreenColor, radius: controller.radius),
      ),

      ScatterSpot(
        30,
        45,
        dotPainter: FlDotCirclePainter(
            color: AppColors.appGreenColor, radius: controller.radius),
      ),
      ScatterSpot(
        32,
        43,
        dotPainter: FlDotCirclePainter(
            color: AppColors.appGreenColor, radius: controller.radius),
      ),
      ScatterSpot(
        34,
        41,
        dotPainter: FlDotCirclePainter(
            color: AppColors.appGreenColor, radius: controller.radius),
      ),

      ScatterSpot(
        34,
        45,
        dotPainter: FlDotCirclePainter(
            color: AppColors.appGreenColor, radius: controller.radius),
      ),
      ScatterSpot(
        36,
        43,
        dotPainter: FlDotCirclePainter(
            color: AppColors.appGreenColor, radius: controller.radius),
      ),

      ScatterSpot(
        38,
        45,
        dotPainter: FlDotCirclePainter(
            color: AppColors.appGreenColor, radius: controller.radius),
      ),
    ];
  }

  List<ScatterSpot> randomData() {
    const blue1Count = 21;
    const blue2Count = 57;
    return List.generate(blue1Count + blue2Count, (i) {
      Color color;
      if (i < blue1Count) {
        color = AppColors.appGreenColor;
      } else {
        color = AppColors.appBlueColor;
      }

      return ScatterSpot(
        (Random().nextDouble() * (controller.maxX - 8)) + 4,
        (Random().nextDouble() * (controller.maxY - 8)) + 4,
        dotPainter: FlDotCirclePainter(
          color: color,
          radius: (Random().nextDouble() * 8) + 4,
        ),
      );
    });
  }

}
