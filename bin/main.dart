import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:main/class/post_model.dart';
import 'package:main/class/posts.dart';

Future<void> main() async {
  String baseUrl = "https://dummyjson.com";

  Uri uri = Uri.parse("$baseUrl/posts/1");

  http.Response response = await http.delete(uri);

  Map<String, Object?> jsonResponse = jsonDecode(response.body);
  Posts? posts = Posts.fromJson(jsonResponse);
  print(posts);
}
