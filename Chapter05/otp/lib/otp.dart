String? getOTP(final String? message, {final int maxLength = 1024}) {
  if (message == null) return null;
  final String messageTrimmed = message.trim();

  if (messageTrimmed.isEmpty) return null;

  if (messageTrimmed.length > maxLength) return null;

  final List<String?> codes = RegExp(r'\d+')
      .allMatches(messageTrimmed)
      .map((m) => m.group(0))
      .toList(growable: false);

  return codes.isEmpty ? null : codes.first;
}
