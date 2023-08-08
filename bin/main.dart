import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:main/class/post_model.dart';
import 'package:main/class/posts.dart';

Future<void> main() async {
  String baseUrl = "https://dummyjson.com";

  Uri uri = Uri.parse("$baseUrl/posts/add");

  Posts? post = Posts(
      title: "my own page",
      body: "hello it is mine",
      tags: [
        'her',
        'him',
      ],
      userId: 7);

  http.Response response = await http.post(
    uri,
    headers: <String, String>{
      "Content-Type": "application/json; charset=UTF-8"
    },
    body: jsonEncode(post.toJson()),
  );

  Map<String, dynamic> jsonResponse = jsonDecode(response.body);
  Posts? posts = Posts.fromJson(jsonResponse);
  print(posts);
}
