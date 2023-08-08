import 'package:main/class/posts.dart';

class PostModel {
  List<Posts>? posts;
  int? total;
  int? skip;
  int? limit;

  PostModel({
    this.posts,
    this.total,
    this.skip,
    this.limit,
  });

  factory PostModel.fromJson(Map<String, Object?> json) => PostModel(
        posts: (json['posts'] as List).map((e) => Posts.fromJson(e)).toList(),
        total: json['total'] as int?,
        skip: json['skip'] as int?,
        limit: json['limit'] as int?,
      );

  Map<String, Object?> tojson() => {
        "posts": posts,
        "total": total,
        "skip": skip,
        "limit": limit,
      };

  @override
  String toString() =>
      " PostModel(posts: $posts,total: $total,skip: $skip,limit: $limit)";
}
