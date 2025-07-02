export 'dart:async';
export 'dart:convert';
export 'dart:io';

export 'package:chart_demo/app/core/widget/custom_loader.dart';
export 'package:chart_demo/app/data/network_exceptions.dart';
export 'package:chart_demo/app/core/utils/date_conversion.dart';


/*============================================ third parties libraries ====================================*/

export 'package:flutter/cupertino.dart' hide RefreshCallback;
export 'package:flutter/foundation.dart';
export 'package:country_calling_code_picker/picker.dart';
export 'package:flutter_styled_toast/flutter_styled_toast.dart';
export 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
export 'package:fl_chart/fl_chart.dart';

/* =============================================dart, flutter and getx =====================================*/

export 'package:flutter/gestures.dart';
export 'package:flutter/material.dart' hide DatePickerTheme;
export 'package:flutter/material.dart';
export 'package:flutter/services.dart';
export 'package:get/get.dart'
    hide Response, HeaderValue, MultipartFile, FormData;
export 'package:flutter_screenutil/flutter_screenutil.dart';
export 'package:flutter_animate/flutter_animate.dart';
export 'package:flutter_easyloading/flutter_easyloading.dart';



/*================================================== application binding =====================================*/

export 'package:chart_demo/app/bindings/initial_binding.dart';

/*=============================================== base exports =============================================*/

export 'package:chart_demo/app/core/base/base_controller.dart';
export 'package:chart_demo/app/core/base/base_view.dart';
export 'package:chart_demo/app/core/base/page_state.dart';
export 'package:chart_demo/app/core/utils/helper_widget.dart';
export 'package:chart_demo/app/core/values/app_assets.dart';
export 'package:chart_demo/app/core/values/app_colors.dart';
export 'package:chart_demo/app/core/values/app_constants.dart';
export 'package:chart_demo/app/core/values/app_strings.dart';
export 'package:chart_demo/app/core/values/app_theme.dart';
export 'package:chart_demo/app/core/values/app_values.dart';
export 'package:chart_demo/app/core/widget/asset_image.dart';
export 'package:chart_demo/app/core/widget/button_widget.dart';


/* ================================================app constants ===========================================*/

export 'package:chart_demo/app/core/values/route_arguments.dart';
export 'package:chart_demo/app/core/values/text_styles.dart';
export 'package:chart_demo/app/core/widget/country_picker.dart';
export 'package:chart_demo/app/core/widget/custom_appbar.dart';
export 'package:chart_demo/app/core/widget/custom_flash_bar.dart';
export 'package:chart_demo/app/core/widget/custom_inkwell.dart';

/*=================================================== widgets =============================================*/

export 'package:chart_demo/app/core/widget/loading_widget.dart';
export 'package:chart_demo/app/core/widget/annotated_region_widget.dart';
export 'package:chart_demo/app/core/widget/edit_text_widget.dart';
export 'package:chart_demo/app/core/widget/logout_dialog.dart';
export 'package:chart_demo/app/core/widget/read_more_widget.dart';
export 'package:chart_demo/app/core/widget/square_percent_indicator.dart';
export 'package:chart_demo/app/core/widget/text_view.dart';
export 'package:chart_demo/app/core/widget/time_formatter.dart';
export 'package:chart_demo/app/core/widget/dropdown_text_Widget.dart';
/*==================================================== local services =====================================*/

export 'package:chart_demo/app/data/local/preferences/theme_controller.dart';

/* =========================================== Application bindings =====================================================*/

export 'package:chart_demo/app/modules/splash/bindings/splash_binding.dart';
export 'package:chart_demo/app/modules/home/bindings/home_binding.dart';
export 'package:chart_demo/app/modules/Radar_chart/bindings/radar_chart_binding.dart';
export 'package:chart_demo/app/modules/bar_chart/bindings/bar_chart_binding.dart';
export 'package:chart_demo/app/modules/line_chart/bindings/line_chart_binding.dart';
export 'package:chart_demo/app/modules/pie_chart/bindings/pie_chart_binding.dart';
export 'package:chart_demo/app/modules/scatter_chart/bindings/scatter_chart_binding.dart';
export 'package:chart_demo/app/modules/google_map/bindings/google_map_binding.dart';

/*============================================== application controllers =====================================*/

export 'package:chart_demo/app/modules/home/controllers/home_controller.dart';
export 'package:chart_demo/app/modules/splash/controllers/splash_controller.dart';
export 'package:chart_demo/app/modules/line_chart/controllers/line_chart_controller.dart';
export 'package:chart_demo/app/modules/bar_chart/controllers/bar_chart_controller.dart';
export 'package:chart_demo/app/modules/pie_chart/controllers/pie_chart_controller.dart';
export 'package:chart_demo/app/modules/Radar_chart/controllers/radar_chart_controller.dart';
export 'package:chart_demo/app/modules/scatter_chart/controllers/scatter_chart_controller.dart';
export 'package:chart_demo/app/modules/google_map/controllers/map_controller.dart';


/* ==================================================app routes ===========================================*/

export 'package:chart_demo/app/routes/app_pages.dart';
export 'package:chart_demo/app/routes/app_routes.dart';
export 'package:chart_demo/main.dart';

/*============================================== application screens =====================================*/

export 'package:chart_demo/my_app.dart';
export 'package:chart_demo/app/modules/splash/views/splash_screen.dart';
export 'package:chart_demo/app/modules/home/views/home_screen.dart';
export 'package:chart_demo/app/modules/Radar_chart/views/radar_chart_screen.dart';
export 'package:chart_demo/app/modules/bar_chart/views/bar_chart_screen.dart';
export 'package:chart_demo/app/modules/line_chart/views/line_chart_screen.dart';
export 'package:chart_demo/app/modules/pie_chart/views/pie_chart_screen.dart';
export 'package:chart_demo/app/modules/scatter_chart/views/scatter_chart_screen.dart';
export 'package:chart_demo/app/modules/google_map/views/google_map_screen.dart';

/*============================================== Data Models =====================================*/

