import 'dart:developer';

import 'package:dio/dio.dart';

class ApiHandler {
  static Dio _dio = Dio();

  static Future<Response> get(String url) async {
    try {
      return await _dio.get(url);
    } catch (error) {
      print('Error fetching data: $error');
      throw error;
    }
  }

  static Future<Response> post(
    String url,
    Map<String, dynamic> body,
  ) async {
    try {
      log(url.toString());
      log(body.toString());
      FormData formData = FormData.fromMap(body);

      return await _dio.post(
        url,
        data: body,
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            "Accept": 'application/json',
          },
        ),
      );
    } catch (error) {
      print('Error creating data: $error');
      throw error;
    }
  }

  static Future<Response> put(
    String url,
    Map<String, dynamic> body,
  ) async {
    try {
      FormData formData = FormData.fromMap(body);

      return await _dio.put(
        url,
        data: formData,
        options: Options(
          headers: {'Content-Type': 'multipart/form-data'},
        ),
      );
    } catch (error) {
      print('Error updating data: $error');
      throw error;
    }
  }

  static Future<Response> delete(String url) async {
    try {
      return await _dio.delete(url);
    } catch (error) {
      print('Error deleting data: $error');
      throw error;
    }
  }
}
