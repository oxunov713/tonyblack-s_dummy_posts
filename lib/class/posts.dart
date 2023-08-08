class Posts {
  int? id;
  String? title;
  String? body;
  int? userId;
  List<String>? tags;
  int? reactions;

  Posts({
    this.id,
    this.title,
    this.body,
    this.tags,
    this.userId,
    this.reactions,
  });

  factory Posts.fromJson(Map<String, Object?> json) => Posts(
        id: json['id'] as int?,
        title: json['title'] as String?,
        body: json['body'] as String?,
        tags: json['tags'] as List<String>?,
        userId: json['userId'] as int?,
        reactions: json['reactions'] as int?,
      );

  Map<String, Object?> toJson() => {
        'id': id,
        'title': title,
        'body': body,
        'tags': tags,
        'userId': userId,
        'reactions': reactions,
      };
  @override
  String toString() =>
      "Posts(id: $id,title: $title,body: $body,tags: $tags,userId: $userId,reactions: $reactions)";
}
