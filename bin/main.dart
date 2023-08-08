import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:main/class/post_model.dart';
import 'package:main/class/posts.dart';

Future<void> main() async {
  String baseUrl = "https://dummyjson.com";

  Uri uri = Uri.parse("$baseUrl/posts/search?q=love");
  http.Response response = await http.get(uri);

  Map<String, Object?> json = jsonDecode(response.body);

  PostModel? posts = PostModel.fromJson(json);
  print(posts);
}
