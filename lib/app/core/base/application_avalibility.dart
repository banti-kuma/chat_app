import '../../export.dart';

class ApplicationAvailabilityDialog extends AlertDialog {
  const ApplicationAvailabilityDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Container(
        height: height_150,
        width: Get.width,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(radius_10),
              topRight: Radius.circular(radius_10),
            )),
        child: TextView(
          text: "Chart Demo",
          textStyle: textStyleBodyLarge().copyWith(
            color: Colors.deepOrangeAccent,
            fontSize: font_28,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      titlePadding: EdgeInsets.zero,
      contentPadding: EdgeInsets.zero,
      content: Container(
        padding: EdgeInsets.symmetric(
          horizontal: margin_10,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextView(
              text: "Demo ",
              textStyle: textStyleBodyLarge()
                  .copyWith(color: Colors.black, fontWeight: FontWeight.w600),
            ).marginOnly(bottom: margin_10),
            TextView(
              text: 'Demo description',
              maxLines: 4,
              textStyle: textStyleBodyLarge().copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: font_14),
            ).marginOnly(bottom: height_20),
          ],
        ),
      ),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius_10)),
    );
  }
}
