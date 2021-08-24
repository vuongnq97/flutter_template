import 'package:flutter_template/app/modules/user/controllers/user.controller.dart';
import 'package:flutter_template/app/modules/user/widgets/user_item.widget.dart';
import 'package:flutter_template/app/shared/app_bar.dart';
import 'package:flutter_template/app/theme/theme.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_template/generated/locales.g.dart';
import 'package:get/get.dart';

class UserScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: kPrimaryColor,
        title: AppBarWidget(
          title: LocaleKeys.appTitle.tr,
        ),
      ),
      body: GetBuilder<UserController>(
        init: Get.find<UserController>(),
        builder: (controller) {
          return ListView.builder(
            itemCount: controller.users.length,
            padding: const EdgeInsets.symmetric(
              horizontal: kHorizontalContentPadding,
              vertical: 10,
            ),
            itemBuilder: (context, index) {
              final item = controller.users[index];
              return UserItem(user: item);
            },
          );
        },
      ),
    );
  }
}
