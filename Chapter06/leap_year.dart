bool? isLeapYear(int year, {int minYear = 1900, int maxYear = 20000}) {
  if (year < minYear || year > maxYear) {
    return null;
  } else {
    return (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0);
  }
}

bool? isLeapYear2(
  int year, {
  int minYear = 1900,
  int maxYear = 20000,
}) {
  if (year < minYear || year > maxYear) return null;

  return (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0);
}

// number days in each month
int? dayInMonth(int month, int year) {
  final leapYear = isLeapYear(year);
  if (leapYear == null) return null;

  if (month < 1 || month > 12) return null;

  switch (month) {
    case 1:
    case 3:
    case 5:
    case 7:
    case 8:
    case 10:
    case 12:
      return 31;
    case 2:
      return leapYear == true ? 29 : 28;
    case 4:
    case 6:
    case 9:
    case 11:
      return 30;
  }
  return null;
}

int? dayInMonth2(int month, int year) {
  final leapYear = isLeapYear(year);
  if (leapYear == null) return null;

  if (month < 1 || month > 12) return null;
  if (month == 2) {
    return leapYear == true ? 29 : 28;
  }
  if ([1, 3, 5, 7, 8, 10, 12].contains(month)) {
    return 31;
  }

  return 30;
}

void main(List<String> args) {
  print(isLeapYear(2024)); // true
  print(dayInMonth(5, 2024)); // 31
}
