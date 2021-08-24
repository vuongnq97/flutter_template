import 'package:flutter_template/app/data/models/user.model.dart';
import 'package:flutter_template/app/enums/enums.dart';
import 'package:flutter_template/app/modules/user/screens/user_detail.screen.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserItem extends StatelessWidget {
  final UserModel user;

  UserItem({required this.user});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(UserDetail(user: user));
      },
      child: Container(
        margin: const EdgeInsets.all(10),
        height: 50,
        color: Colors.grey,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(user.name),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(UserRoleEnum.getName(user.role)),
            )
          ],
        ),
      ),
    );
  }
}
