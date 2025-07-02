import 'package:chart_demo/app/core/widget/card_view.dart';
import 'package:chart_demo/app/modules/home/charts_name_model.dart';
import '../../../export.dart';

class HomeScreen extends StatelessWidget {
  final controller = Get.put(HomeController());
  final themeController = Get.put(ThemeController());

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        init: controller,
        builder: (controller) {
          return Scaffold(
              appBar: AppBar(
                  backgroundColor: Colors.white,
                  title: TextView(
                    text: "Chart Demo",
                    textStyle: textStyleBodyLarge().copyWith(
                      color: Colors.deepOrangeAccent,
                      fontSize: font_28,
                      fontWeight: FontWeight.w700,
                    ),
                  )),
              body: Column(
                children: [
                  SizedBox(height: height_30),
                  Expanded(
                    child: GridView.count(
                        crossAxisCount: 2,
                        crossAxisSpacing: 12.0,
                        mainAxisSpacing: 12.0,
                        children: List.generate(
                          controller.chartNamesList.length,
                          (index) {
                            return InkWell(
                              onTap: (){
                                Get.toNamed(controller.chartNamesList[index].route);
                              },
                              child: Center(
                                child: chartCard(controller.chartNamesList[index]),
                              ),
                            );
                          },
                        )).paddingSymmetric(horizontal: margin_4),
                  ),
                ],
              ));
        });
  }

  chartCard(ChartsNameModel chartNamesList) {
    return CardViewScreen(
      color: Colors.deepOrangeAccent.shade100,
      radius: 22.5,
      borderColor: Colors.black,
      widget: Column(
        children: [
          Expanded(
            child:
                AssetImageWidget(chartNamesList.icon, imageFitType: BoxFit.fill)
                    .paddingAll(margin_10),
          ),
          TextView(text: chartNamesList.name)
        ],
      ),
    );
  }
}
