import 'dart:convert';
import 'package:model/comment.dart';
import 'package:model/todo_item.dart';

void main(List<String> arguments) {
  final String jsonTodoItemText = """
{
  "userId": 1,
  "id": 1,
  "title": "delectus aut autem",
  "completed": false
}
""";
  final jsonTodoItemMap = jsonDecode(jsonTodoItemText);
  final TodoItem item = TodoItem.fromJson(jsonTodoItemMap);
  print(item.title); // delectus aut autem

  final String jsonCommentText = """
{
  "postId": 1,
  "id": 1,
  "name": "id labore ex et",
  "email": "Eliseo@gardner.biz",
  "body": "est quidem magnam voluptate ipsam"
}
""";

  final jsonCommentMap = jsonDecode(jsonCommentText);
  final Comment comment = Comment.fromJson(jsonCommentMap);
  print(comment);
  // Comment(postId: 1, id: 1, name: id labore ex et, email: Eliseo@gardner.biz, body: est quidem magnam voluptate ipsam)
  print(comment.toJson());
  // {postId: 1, id: 1, name: id labore ex et, email: Eliseo@gardner.biz, body: est quidem magnam voluptate ipsam}
}
