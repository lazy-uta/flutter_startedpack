import 'package:flutter/material.dart';

import 'package:get/route_manager.dart';

class MainRouteHelper {
  factory MainRouteHelper() {
    return _mainRouteHelper;
  }

  MainRouteHelper._internal();

  static final MainRouteHelper _mainRouteHelper = MainRouteHelper._internal();

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
