class TextUtils {
  TextUtils._();
  static bool isBlankOrNull(String? string) {
    final String text = string ?? "";
    return text.trim().isEmpty;
  }
}
