String? getOTP(final String? message, {final int maxLength = 160}) {
  if (message == null) return null;
  final String messageTrimmed = message.trim();

  if (messageTrimmed.isEmpty) return null;

  if (messageTrimmed.length > maxLength) return null;

  final String code = messageTrimmed.replaceAll(RegExp(r'[^0-9]'), '');

  return code.isEmpty ? null : code;
}
