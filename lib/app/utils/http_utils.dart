import 'package:flutter_template/app/utils/dio_interceptors.dart';

import 'dart:io';
import 'package:dio/dio.dart';
import 'package:path/path.dart';

class HttpResponse<T> {
  HttpResponse({
    required this.body,
    required this.headers,
    required this.request,
    required this.statusCode,
    required this.statusMessage,
    this.extra,
  });

  T body;
  Headers headers;
  RequestOptions request;
  int statusCode;
  String statusMessage;
  Map<String, dynamic>? extra;
}

class HttpHelper {
  static getDio() {
    Dio _dio = Dio();
    _dio.interceptors.add(DioInterceptors(_dio));
    return _dio;
  }

  static Future<HttpResponse> get(String url) async {
    final dio = HttpHelper.getDio();
    final Response response = await dio.get(url);
    return HttpResponse(
      body: response.data,
      headers: response.headers,
      request: response.requestOptions,
      statusCode: response.statusCode!,
      statusMessage: response.statusMessage!,
      extra: response.extra,
    );
  }

  static Future<HttpResponse> post(String url, Object data) async {
    final dio = HttpHelper.getDio();
    final Response response = await dio.post(url, data: data);
    return HttpResponse(
      body: response.data,
      headers: response.headers,
      request: response.requestOptions,
      statusCode: response.statusCode!,
      statusMessage: response.statusMessage!,
      extra: response.extra,
    );
  }

  static Future<HttpResponse> put(String url, Object data) async {
    final dio = HttpHelper.getDio();
    final Response response = await dio.put(url, data: data);
    return HttpResponse(
      body: response.data,
      headers: response.headers,
      request: response.requestOptions,
      statusCode: response.statusCode!,
      statusMessage: response.statusMessage!,
      extra: response.extra,
    );
  }

  static Future<HttpResponse> delete(String url, [Object? data]) async {
    final dio = HttpHelper.getDio();
    final Response response = await dio.delete(url, data: data);
    return HttpResponse(
      body: response.data,
      headers: response.headers,
      request: response.requestOptions,
      statusCode: response.statusCode!,
      statusMessage: response.statusMessage!,
      extra: response.extra,
    );
  }

  static Future<HttpResponse> uploadFile(String url, {required File file}) async {
    final dio = HttpHelper.getDio();
    final uploadFile = await MultipartFile.fromFile(
      file.path,
      filename: basename(file.path),
    );
    final formData = FormData.fromMap({'file': uploadFile});
    final response = await dio.post(url, data: formData);
    return HttpResponse(
      body: response.data,
      headers: response.headers,
      request: response.request,
      statusCode: response.statusCode,
      statusMessage: response.statusMessage,
      extra: response.extra,
    );
  }

  static String getUriQueryParam(Uri uri, String key) {
    final queryParams = uri.queryParametersAll.entries.toList();
    if (queryParams.any((_) => _.key == key)) {
      return queryParams.firstWhere((_) => _.key == key).value.first;
    }
    return '';
  }
}
