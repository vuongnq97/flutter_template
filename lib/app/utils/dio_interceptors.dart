import 'package:flutter_template/app/utils/message_dialog.dart';
import 'package:flutter_template/generated/locales.g.dart';

import 'package:dio/src/response.dart' as dio;
import 'package:get/get.dart';
import 'package:connectivity/connectivity.dart';
import 'package:dio/dio.dart';
import 'package:get_storage/get_storage.dart';

class DioInterceptors extends InterceptorsWrapper {
  final Dio _dio;
  final _store = GetStorage();

  DioInterceptors(this._dio);

  @override
  Future onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    final bool hasInternet = await _checkInternetConnection();
    if (hasInternet) {
      //TODO: Implement
    } else {
      MessageDialog.showMessage(LocaleKeys.Login_NoInternet.tr);
      return;
    }
    super.onRequest(options, handler);
    return options;
  }

  @override
  void onResponse(dio.Response response, ResponseInterceptorHandler handler) {
    super.onResponse(response, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    super.onError(err, handler);
  }

  Future<bool> _checkInternetConnection() async {
    final result = await Connectivity().checkConnectivity();
    final bool hasInternet = result != ConnectivityResult.none;
    return hasInternet;
  }
}
