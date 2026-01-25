import 'package:dio/dio.dart';

class ApiService{  // wrapper over api
  final _baseUrl='https://www.googleapis.com/books/v1/volumes';
  final Dio _dio;
  ApiService(this._dio);
  Future<Map<String,dynamic>> get({required String endPonit})async{
var res=await _dio.get('$_baseUrl/$endPonit');
return res.data;
  }
}