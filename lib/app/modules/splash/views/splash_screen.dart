import '../../../export.dart';


class SplashScreen extends StatelessWidget {
  final themeController = Get.put(ThemeController());

  SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      init: SplashController(),
      builder: (controller) {
        return Scaffold(
          backgroundColor: AppColors.appColor,
            body: SizedBox(width: Get.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextView(text: "Chart Demo",textStyle: textStyleBodyLarge().copyWith(
                    color: Colors.deepOrangeAccent,
                    fontSize: font_28,
                    fontWeight: FontWeight.w700,
                  ),).paddingAll(margin_10).animate().slideY(delay: Duration(milliseconds: 100)),
                ],
              ),
            ),
        );
      }
    );
  }
}
