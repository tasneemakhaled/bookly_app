import 'package:dio/dio.dart';

class ApiService{  // wrapper over api
  final _baseUrl='https://www.googleapis.com/books/v1/volumes';
  final Dio dio;
  ApiService(this.dio);
  Future<Map<String,dynamic>> get({required String endPonit})async{
var res=await dio.get('$_baseUrl/$endPonit');
return res.data;
  }
}