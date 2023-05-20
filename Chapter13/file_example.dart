import 'dart:io';

void main() {
  File file = new File('Chapter13/example.txt');
  // Kiểm tra tồn tại của tệp
  final bool exists = file.existsSync();
  if (exists) {
    // Đọc nội dung của tệp
    String contents = file.readAsStringSync();
    print(contents);
    // Đổi tên tệp
    file.renameSync('Chapter13/new_example.txt');
    // Xóa tệp
    // file.deleteSync();
  } else {
    // Tạo tệp mới
    file.createSync();
    // Ghi nội dung vào tệp
    file.writeAsStringSync('Hello, world!');
  }
}
