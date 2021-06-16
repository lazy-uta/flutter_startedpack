import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:startedpack/commons/theme_data.dart';
import 'package:startedpack/helpers/main_route_helper.dart';

import 'commons/constant_data.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDateFormatting('id_ID').then(
    (_) => runApp(
      MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final MainThemeData _mainThemeData = MainThemeData();
    final MainRouteHelper _routeHelper = MainRouteHelper();

    return GetMaterialApp(
      title: ConstantData.projectTitle,
      theme: _mainThemeData.lightTheme,
      debugShowCheckedModeBanner: false,
      darkTheme: _mainThemeData.darkTheme,
      themeMode: ThemeMode.light,
      initialRoute: ConstantData.initialRoute,
      transitionDuration: const Duration(milliseconds: 200),
      defaultTransition: Transition.rightToLeftWithFade,
      initialBinding: MainInitialBinding(),
      getPages: _routeHelper.getRoute(),
    );
  }
}
