import 'dart:math';

extension RandomExt on Random {
  (String, String) randomNameAndEmail() {
    final listFirstName = [
      "Liam",
      "Olivia",
      "Noah",
      "Emma",
      "Oliver",
      "Charlotte",
      "Elijah",
      "Amelia",
      "James",
      "Ava",
      "William",
      "Sophia",
      "Benjamin",
      "Isabella",
      "Lucas",
      "Mia",
      "Henry",
      "Evelyn",
      "Theodore",
      "Harper"
    ];
    final listLastName = [
      "Smith",
      "Johnson",
      "Williams",
      "Brown",
      "Jones",
      "Garcia",
      "Miller",
      "Davis",
      "Rodriguez",
      "Martinez"
    ];
    final emailDomains = [
      "gmail.com",
      "yahoo.com",
      "hotmail.com",
      "aol.com",
      "msn.com",
      "outlook.com"
    ];

    listFirstName.shuffle(this);
    listLastName.shuffle(this);
    emailDomains.shuffle(this);
    final firstName = listFirstName.first;
    final lastName = listLastName.first;
    final domain = emailDomains.first;

    return (
      "$firstName $lastName",
      "${firstName}_${lastName}@$domain".toLowerCase()
    );
  }
}

void main(List<String> args) {
  final random = Random();
  final (String fullName, String email) = random.randomNameAndEmail();
  print(fullName); // Liam Brown
  print(email); // liam_brown@yahoo.com
}
