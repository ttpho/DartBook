class Message {
  String? role;
  String? content;

  Message({
    this.role,
    this.content,
  });

  Map<String, dynamic> toJson() {
    return {
      'role': role,
      'content': content,
    };
  }

  factory Message.fromJson(Map<String, dynamic> json) {
    return Message(
      role: json['role'] as String?,
      content: json['content'] as String?,
    );
  }

  @override
  String toString() => "Message(role: $role,content: $content)";

  @override
  int get hashCode => Object.hash(role, content);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Message &&
          runtimeType == other.runtimeType &&
          role == other.role &&
          content == other.content;
}
