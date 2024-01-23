
import 'package:dio/dio.dart';
import 'package:imthonproekt/models/person.dart';

class PersonRepositor {
 final dio = Dio();
 Future<List<Api>> getData()async{
   final response =await dio.get("https://6565e550eb8bb4b70ef2891b.mockapi.io/api/v1/posts");
  List<dynamic> data = response.data;


  List<Api> ls = data.map((e) => Api.fromJson(e)).toList();
  return ls;
 }
}