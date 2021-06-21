import 'package:flutter/material.dart';

import 'package:get/route_manager.dart';

class RouteHelper {
  factory RouteHelper() {
    return _mainRouteHelper;
  }

  RouteHelper._internal();

  static final RouteHelper _mainRouteHelper = RouteHelper._internal();

  List<GetPage> getRoute() => <GetPage>[
        /// main routes

        ///main akun
        // GetPage(
        //   name: ConstantData.mainAkunListVa,
        //   page: () => MainListVaRoute(),
        //   alignment: Alignment.center,
        //   binding: MainListVaBinding(),
        // ),
      ];
}
