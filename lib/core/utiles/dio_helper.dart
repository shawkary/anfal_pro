import 'package:dio/dio.dart';


class DioHelper
{
  DioHelper(this._dio);
  final Dio _dio;

  final _baseUrl = 'http://test-diar-alanfal.odoo.com/api/';

  Future<Response> postData({
    required String endPoint,
    query,
    required Map<String, dynamic> data,
  })async {
    _dio.options.headers = {
      'db': 'diaranfal-16-0-14232546'
    };
    return await _dio.post('$_baseUrl$endPoint', queryParameters: query, data: data);
  }

  Future<Response> putData({
    required String endPoint,
    query,
    required Map<String, dynamic> data,
    token,
  })async {
    _dio.options.headers = {
      'Authorization': token,
    };
    return await _dio.put('$_baseUrl$endPoint', queryParameters: query, data: data);
  }

  Future<Map<String, dynamic>> getData({
    required String endPoint,
    String? email,
    String? password,
  })async {
    _dio.options.headers = {
      'login': email,
      'password': password,
      'db': 'diaranfal-16-0-14232546'
    };
    var response = await _dio.get('$_baseUrl$endPoint');
    return response.data;
  }
}