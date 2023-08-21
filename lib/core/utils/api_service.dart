import 'package:dio/dio.dart';

class ApiService {
  ApiService(this._dio);

   final Dio _dio;
  final baseUrl = 'https://www.googleapis.com/books/v1/';
  Future<Map<String, dynamic>> getBooks({required String endPoint}) async {
    Response response = await _dio.get('$baseUrl$endPoint');
    return response.data;
  }

}
