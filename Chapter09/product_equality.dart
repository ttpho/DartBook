class Product {
  final double id;
  final String sku;
  final String name;

  Product(this.id, this.sku, this.name);

  @override
  int get hashCode => Object.hash(id, sku, name);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Product &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          sku == other.sku &&
          name == other.name);
}

void main(List<String> args) {
  final Product book1 = Product(170345809, "8663021474", "Kính vạn hoa");
  final Product book2 = Product(170345809, "8663021474", "Kính vạn hoa");
  print(book1 == book2); // true

  final Set<Product> listBook = {};
  listBook
    ..add(book1)
    ..add(book2);
  print(listBook.length); // 1
}
