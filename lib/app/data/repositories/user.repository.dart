import 'package:dio/dio.dart';
import 'package:flutter_template/app/data/mock/user.mock.dart';
import 'package:flutter_template/app/settings/endpoints.dart';
import 'package:flutter_template/app/utils/http_utils.dart';

class UserRepository {
  Future<HttpResponse> getUsers() async {
     return await HttpHelper.get(Endpoints.USERS);
    return HttpResponse(
      body: UserMock.getUsers2(),
      headers: Headers(),
      request: RequestOptions(path: ''),
      statusMessage: "Success",
      statusCode: 200,
    );
  }
}
