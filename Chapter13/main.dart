void main2() async {
  print("Bắt đầu lấy dữ liệu...");
  int data = await fetchData();
  print("Kết quả: " + data.toString()); // Kết quả: 42
}

Future<int> fetchData() async {
  // Thực hiện lệnh lấy dữ liệu
  return 42;
}

void main() {
  print("Bắt đầu lấy dữ liệu...");
  fetchData().then(
    (value) => {
      print("Kết quả: " + value.toString()) // Kết quả: 42
    },
  );
}

Future<String> fetchJson() async {
  // Thực hiện tác vụ lấy dữ liệu bất đồng bộ
  return "{}";
}

void main3() {
  // Gọi hàm fetchJson bằng từ khóa await
  fetchJson().then(
    (value) => {
      // Tiếp tục thực thi các lệnh khác sau khi kết quả trả về
      print("Kết quả: " + value.toString()) // Kết quả: 42
    },
  );
}
