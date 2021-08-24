import 'package:flutter_template/app/data/repositories/user.repository.dart';
import 'package:flutter_template/app/modules/user/controllers/user.controller.dart';

import 'package:get/get.dart';

class UserBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(UserController(
      repository: UserRepository(),
    ));
  }
}
