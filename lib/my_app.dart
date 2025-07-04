import 'package:chart_demo/app/core/values/app_global_values.dart';
import 'package:chart_demo/app/export.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus &&
            currentFocus.focusedChild != null) {
          FocusManager.instance.primaryFocus!.unfocus();
        }
      },
      child: ScreenUtilInit(
        builder: (context, widget) => GetMaterialApp(
          theme: ThemeConfig.lightTheme,
          darkTheme: ThemeConfig.lightTheme,
          themeMode: ThemeMode.system,
          initialRoute: AppPages.INITIAL,
          initialBinding: InitialBinding(),
          getPages: AppPages.routes,
          scaffoldMessengerKey: scaffoldMessengerState,
          navigatorKey: navState,
          debugShowCheckedModeBanner: false,
          enableLog: true,
          builder: EasyLoading.init(),
          defaultTransition: Transition.cupertino,
        ),
      ),
    );
  }
}


