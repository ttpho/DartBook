import 'package:otp/otp.dart';
import 'package:test/test.dart';

void main() {
  test('no 0, chuỗi null', () {
    expect(getOTP(null), null);
  });

  test('no 1, chuỗi empty', () {
    expect(getOTP(" "), null);
  });

  test('no 2, chuỗi có độ dài hơn 160 ký tự', () {
    final longMessage = "Google verification code" * 161;
    expect(getOTP(longMessage), null);
  });

  test('no 3, chuỗi không chứa OTP', () {
    final message = "Google verification code";
    expect(getOTP(message), null);
  });

  test('no 4, chuỗi có chứa mã OTP duy nhất', () {
    final message = "G-568413 is your Google verification code.";
    expect(getOTP(message), "568413");
  });

  test('no 5, chuỗi có chứa nhiều mã OTP', () {
    final message = "G-568413, G-568414 is your Google verification code.";
    expect(getOTP(message), "568413");
  });
}
