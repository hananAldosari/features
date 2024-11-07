import 'dart:convert';
import 'package:features/model/dataModel.dart';
import 'package:http/http.dart' as http;


class ApiService{
    final String baseUrl='https://jsonplaceholder.typicode.com/';
    Future<List<Post>> fetchPost(int page, int pageSize)async{
        final response = await http.get(Uri.parse('$baseUrl/posts?_page=$page&_limit=$pageSize'));
        if (response.statusCode ==200){
          List<dynamic> data= json.decode(response.body);
          return data.map((post)=> Post.fromJson(post)).toList();
        }else{
          throw Exception("faild to load posts");
        }
    }
}