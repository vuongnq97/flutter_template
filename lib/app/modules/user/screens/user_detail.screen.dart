import 'package:flutter_template/app/data/models/user.model.dart';
import 'package:flutter_template/app/enums/enums.dart';
import 'package:flutter_template/app/modules/user/controllers/user.controller.dart';
import 'package:flutter_template/app/shared/app_bar.dart';
import 'package:flutter_template/app/theme/theme.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserDetail extends StatelessWidget {
  final UserModel user;

  UserDetail({required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: kPrimaryColor,
        title: AppBarWidget(
          title: "User Detail",
        ),
      ),
      body: GetBuilder<UserController>(
        init: Get.find<UserController>(),
        builder: (controller) {
          print(controller.users);
          return Center(
            child: Column(
              children: [
                Text(user.name),
                Text(UserRoleEnum.getName(user.role)),
              ],
            ),
          );
        },
      ),
    );
  }
}
