import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:main/class/post_model.dart';
import 'package:main/class/posts.dart';

Future<void> main() async {
  String baseUrl = "https://dummyjson.com";

  Uri uri = Uri.parse("$baseUrl/posts/8");

  http.Response response = await http.put(
    uri,
    headers: <String, String>{
      "Content-Type": "application/json; charset=UTF-8"
    },
    body: jsonEncode({
      "title": "Tony Stark",
      "body": "bu endi tony starkga tegishli",
      "tags": [
        'her',
        'him',
      ],
      "userId": 8,
    }),
  );

  Map<String, Object?> jsonResponse = jsonDecode(response.body);
  Posts? posts = Posts.fromJson(jsonResponse);
  print(posts);
}
