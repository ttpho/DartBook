/*
class TodoItem {
  int? userId;
  int? id;
  String? title;
  bool? completed;

  TodoItem({
    this.userId,
    this.id,
    this.title,
    this.completed,
  });

  Map<String, dynamic> toJson() {
    return {
      'userId': userId,
      'id': id,
      'title': title,
      'completed': completed,
    };
  }

  factory TodoItem.fromJson(Map<String, dynamic> json) {
    return TodoItem(
      userId: json['userId'] as int?,
      id: json['id'] as int?,
      title: json['title'] as String?,
      completed: json['completed'] as bool?,
    );
  }
}
*/

import 'package:json_annotation/json_annotation.dart';
part 'todo_item.g.dart';

@JsonSerializable()
class TodoItem {
  int? userId;
  int? id;
  String? title;
  bool? completed;

  TodoItem({
    this.userId,
    this.id,
    this.title,
    this.completed,
  });

  factory TodoItem.fromJson(Map<String, dynamic> json) =>
      _$TodoItemFromJson(json);

  Map<String, dynamic> toJson() => _$TodoItemToJson(this);
}
