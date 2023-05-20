import 'choice.dart';
import 'usage.dart';
import 'api_error.dart';

class ChatResponse {
  String? id;
  String? object;
  int? created;
  List<Choice>? choices;
  Usage? usage;
  ApiError? error;

  ChatResponse({
    this.id,
    this.object,
    this.created,
    this.choices,
    this.usage,
    this.error,
  });

  factory ChatResponse.fromJson(Map<String, dynamic> json) {
    return ChatResponse(
      id: json['id'] as String?,
      object: json['object'] as String?,
      created: json['created'] as int?,
      choices: (json['choices'] as List<dynamic>?)
          ?.map((e) => Choice.fromJson(e as Map<String, dynamic>))
          .toList(),
      usage: json['usage'] == null
          ? null
          : Usage.fromJson(json['usage'] as Map<String, dynamic>),
      error: json['error'] == null
          ? null
          : ApiError.fromJson(json['error'] as Map<String, dynamic>),
    );
  }

  @override
  String toString() =>
      "ChatResponse(id: $id,object: $object,created: $created,choices: $choices,usage: $usage, error: $error)";

  @override
  int get hashCode => Object.hash(id, object, created, choices, usage, error);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ChatResponse &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          object == other.object &&
          created == other.created &&
          choices == other.choices &&
          usage == other.usage &&
          error == other.error;
}
