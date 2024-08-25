
import 'package:dio/dio.dart';
class ApiService
{
  final Dio dio;
  final baseUrl='https://www.googleapis.com/books/v1/';
  //end point=volumes?q=programming
  ApiService(this.dio);


  Future<Map<String,dynamic>> get({required  String endPoint})async
 {
  var response=await dio.get('$baseUrl$endPoint');

  return response.data;
 }
}