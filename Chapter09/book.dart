class Book {
  final String title;
  final String type;
  final int salePrice;
  final int price;

  Book(this.title, this.type, this.salePrice, this.price);

  double _discountPercent() {
    if (price == 0) return 0;

    return (salePrice / price) * 100;
  }

  String discountMessage() {
    final String percent = _discountPercent().toStringAsFixed(0);
    return "${percent}%";
  }
}

void main(List<String> args) {
  final Book book = Book(
    "Từ điển văn hóa cổ truyền Việt Nam",
    "Kiến thức - khoa học",
    19845000,
    22050000,
  );

  print(book.discountMessage());
  // 90%
}
