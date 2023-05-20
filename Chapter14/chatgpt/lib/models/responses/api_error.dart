class ApiError {
  String? message;
  String? type;
  String? code;

  ApiError({
    this.message,
    this.type,
    this.code,
  });

  factory ApiError.fromJson(Map<String, dynamic> json) {
    return ApiError(
      message: json['message'] as String?,
      type: json['type'] as String?,
      code: json['code'] as String?,
    );
  }

  @override
  String toString() => "Error(message: $message,type: $type, code: $code)";

  @override
  int get hashCode => Object.hash(message, type, code);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ApiError &&
          runtimeType == other.runtimeType &&
          message == other.message &&
          type == other.type &&
          code == other.code;
}
