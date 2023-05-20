bool isPalindrome(String? text) {
  final String nonNullText = text ?? "";
  if (nonNullText.isEmpty) return false;

  final int length = nonNullText.length;
  if (length == 1) return true;

  for (var i = 0; i < length ~/ 2; i++) {
    if (nonNullText[i] != nonNullText[length - 1 - i]) return false;
  }

  return true;
}

void main() {
  print(isPalindrome(null)); // false
  print(isPalindrome("")); // false
  print(isPalindrome("a")); // true
  print(isPalindrome("Palindrome")); // false
  print(isPalindrome("ABCDEDCBA")); // true
  print(isPalindrome("ABCDDCBA")); // true
}
