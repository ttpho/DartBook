import 'package:chatgpt/models/params/messages.dart';

class Choice {
  int? index;
  Message? message;
  String? finishReason;

  Choice({
    this.index,
    this.message,
    this.finishReason,
  });

  factory Choice.fromJson(Map<String, dynamic> json) {
    return Choice(
      index: json['index'] as int?,
      message: json['message'] == null
          ? null
          : Message.fromJson(json['message'] as Map<String, dynamic>),
      finishReason: json['finish_reason'] as String?,
    );
  }

  @override
  String toString() =>
      "Choices(index: $index,message: $message,finishReason: $finishReason)";

  @override
  int get hashCode => Object.hash(index, message, finishReason);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Choice &&
          runtimeType == other.runtimeType &&
          index == other.index &&
          message == other.message &&
          finishReason == other.finishReason;
}
