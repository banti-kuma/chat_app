import 'package:chart_demo/app/modules/line_chart/line_chart_widget.dart';

import '../../../export.dart';

class LineChartScreen extends StatelessWidget {
  final controller = Get.put(LineChartController());

  LineChartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(isBack: true, appBarTitleText: strLineChart),
      body: GetBuilder<LineChartController>(
        init: LineChartController(),
        builder: (context) {
          return Scaffold(
            body: Center(
              child: SizedBox(
                height: Get.width,
                child: LineChartWidget(duration: Duration(milliseconds: 250), isShowingMainData: false),
              ),
            ),
          );
        },
      ),
    );
  }
}
