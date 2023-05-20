@Deprecated('Use [TimeoutException]')
class RegexMatchTimeoutException implements Exception {}

class TimeoutException implements Exception {}

void main() {
  final RegexMatchTimeoutException e = RegexMatchTimeoutException();
  print(e);
}
