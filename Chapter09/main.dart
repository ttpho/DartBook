import 'text_utils.dart';

void main(List<String> args) {
  assert(TextUtils.isBlankOrNull(null), true);
  assert(TextUtils.isBlankOrNull("  "), true);
  assert(TextUtils.isBlankOrNull(''), true);
  assert(TextUtils.isBlankOrNull('dart') == false);
}
