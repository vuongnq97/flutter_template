import 'package:flutter_template/app/data/models/response.model.dart';
import 'package:flutter_template/app/data/models/user.model.dart';
import 'package:flutter_template/app/data/repositories/user.repository.dart';
import 'package:flutter_template/app/enums/enums.dart';
import 'package:flutter_template/app/utils/message_dialog.dart';
import 'package:flutter_template/generated/locales.g.dart';

import 'package:get/get.dart';

class UserController extends GetxController {
  final UserRepository repository;

  static UserController get to => Get.find();

  UserController({required this.repository});

  RxList<UserModel> _users = RxList<UserModel>();

  List<UserModel> get users => _users;

  RxBool isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    getUser();
  }

  Future<void> getUser() async {
    try {
      await repository.getUsers().then(
        (response) {
          if (response.statusCode == APIStatus.Successfully) {
            var fakeResult = {
              "data" : response.body,
              "totalCount": 11,
            };
            DataResultModel dataResultModel = DataResultModel.fromJson(fakeResult);

            List<UserModel> result = dataResultModel.data.map<UserModel>((item) => new UserModel.fromJson(item)).toList();
            _users.addAll(result);
          }
          isLoading.value = false;
          update();
        },
      );
    } catch (e) {
      isLoading.value = false;
      update();
      MessageDialog.showError(message: LocaleKeys.Shared_ErrorMessage.tr);
      throw e;
    }
  }

  @override
  void onReady() async {
    super.onReady();
  }
}
