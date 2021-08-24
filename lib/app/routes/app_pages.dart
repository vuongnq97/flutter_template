import 'package:flutter_template/app/modules/user/bindings/user.binding.dart';
import 'package:flutter_template/app/modules/user/screens/user.screen.dart';

import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.HOME;

  static final pages = [
    GetPage(
      name: Routes.HOME,
      page: () => UserScreen(),
      binding: UserBinding(),
    ),
    /*bindings: [
        UserBinding(),
      ],*/
  ];
}
