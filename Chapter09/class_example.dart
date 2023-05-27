void main(List<String> args) {
  final User user = User(
    123,
    "ttpho",
  );
  final Customer customer = Customer(
    customerId: 123,
    name: "Trần Thanh Phố",
  );

  final Product product = Product(
    sku: 'TKI1234',
    quantity: 3,
  );

  print(user);
  print(customer);
  print(product);
}

// final User user = User(
//   123,
//   "ttpho",
// );
class User {
  String? userName;
  int? userId;
  User(this.userId, this.userName);
}

// final Customer customer = Customer(
//   customerId: 123,
//   name: "Trần Thanh Phố",
// );
class Customer {
  int? customerId;
  String? name;

  Customer({
    this.customerId,
    this.name,
  });
}

// final Product product = Product(
//   sku: 'TKI1234',
//   quantity: 3,
// );
class Product {
  String? sku;
  int? quantity;
  Product({
    required this.sku,
    required this.quantity,
  });
}
