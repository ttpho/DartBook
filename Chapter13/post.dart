import 'dart:convert';
import 'dart:io';

class Post {
  int? userId;
  int? id;
  String? title;
  String? body;

  Post({
    this.userId,
    this.id,
    this.title,
    this.body,
  });

  Map<String, dynamic> toJson() {
    return {
      'userId': userId,
      'id': id,
      'title': title,
      'body': body,
    };
  }

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      userId: json['userId'] as int?,
      id: json['id'] as int?,
      title: json['title'] as String?,
      body: json['body'] as String?,
    );
  }

  @override
  String toString() =>
      "Post(userId: $userId,id: $id,title: $title,body: $body)";

  @override
  int get hashCode => Object.hash(userId, id, title, body);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Post &&
          runtimeType == other.runtimeType &&
          userId == other.userId &&
          id == other.id &&
          title == other.title &&
          body == other.body;
}

Future<String> readJsonFile(final String fileName) =>
    File(fileName).readAsString();

List<Post> mapListUser(final String source) {
  final list = (jsonDecode(source) as List?) ?? [];
  return list.map((e) => Post.fromJson(e)).toList();
}

Future<List<Post>> fromFileJson(String fileName) async {
  final String jsonContent = await readJsonFile(fileName);
  return mapListUser(jsonContent);
}

Future<void> main(List<String> args) async {
  final fileName = "Chapter13/posts.json";
  final List<Post> listPost = await fromFileJson(fileName);
  for (var post in listPost) {
    print(post);
  }
}
