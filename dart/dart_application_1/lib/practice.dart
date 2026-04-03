import 'dart:io';

// 1. Check square
void checkSquare() {
  print("Enter length:");
  double length = double.parse(stdin.readLineSync()!);

  print("Enter breadth:");
  double breadth = double.parse(stdin.readLineSync()!);

  if (length == breadth) {
    print("It is a square");
  } else {
    print("It is not a square");
  }
}


// 2. Grading system
void gradingSystem() {
  print("Enter marks:");
  int marks = int.parse(stdin.readLineSync()!);

  if (marks < 25) {
    print("Grade: F");
  } else if (marks <= 45) {
    print("Grade: E");
  } else if (marks <= 50) {
    print("Grade: D");
  } else if (marks <= 60) {
    print("Grade: C");
  } else if (marks <= 80) {
    print("Grade: B");
  } else {
    print("Grade: A");
  }
}

// 3. Attendance
void attendanceCheck() {
  print("Enter total classes held:");
  int held = int.parse(stdin.readLineSync()!);

  print("Enter classes attended:");
  int attended = int.parse(stdin.readLineSync()!);

  double percentage = (attended / held) * 100;

  print("Attendance: ${percentage.toStringAsFixed(2)}%");

  if (percentage >= 75) {
    print("Allowed to sit in exam");
  } else {
    print("Not allowed to sit in exam");
  }
}

// 4. Reverse number
void reverseNumber() {
  print("Enter a number:");
  int num = int.parse(stdin.readLineSync()!);

  int reversed = 0;

  while (num > 0) {
    int digit = num % 10;
    reversed = reversed * 10 + digit;
    num ~/= 10;
  }

  print("Reversed number: $reversed");
}

// 5. Temperature conversion
void temperatureConversion() {
  print("1. Celsius to Fahrenheit");
  print("2. Fahrenheit to Celsius");

  int choice = int.parse(stdin.readLineSync()!);

  print("temperature is:");
  double temp = double.parse(stdin.readLineSync()!);

  if (choice == 1) {
    print("Fahrenheit is: ${(temp * 9 / 5) + 32}");
  } else if (choice == 2) {
    print("Celsius is: ${(temp - 32) * 5 / 9}");
  } else {
    print("Invalid choice");
  }
}

// 6. Positive/Negative + Odd/Even
void checkNumberType() {
  print("Enter a number:");
  int num = int.parse(stdin.readLineSync()!);

  if (num > 0) {
    print("Positive");
    print(num % 2 == 0 ? "Even" : "Odd");
  } else if (num < 0) {
    print("Negative");
  } else {
    print("Zero");
  }
}

// 7. Fibonacci
void fibonacciSeries() {
  print("Enter number of terms:");
  int n = int.parse(stdin.readLineSync()!);

  int a = 0, b = 1;

  for (int i = 0; i < n; i++) {
    print(a);
    int next = a + b;
    a = b;
    b = next;
  }
}

// 8. Count characters
void countCharacters() {
  print("Enter a string:");
  String input = stdin.readLineSync()!;

  int vowels = 0, consonants = 0, digits = 0, special = 0;

  for (var ch in input.split('')) {
    if ("aeiouAEIOU".contains(ch)) {
      vowels++;
    } else if (RegExp(r'[a-zA-Z]').hasMatch(ch)) {
      consonants++;
    } else if (RegExp(r'[0-9]').hasMatch(ch)) {
      digits++;
    } else {
      special++;
    }
  }

  print("Vowels: $vowels");
  print("Consonants: $consonants");
  print("Digits: $digits");
  print("Special: $special");
}

// 9. Palindrome
void palindromeCheck() {
  print("Enter a number:");
  int num = int.parse(stdin.readLineSync()!);

  int original = num, reversed = 0;

  while (num > 0) {
    reversed = reversed * 10 + num % 10;
    num ~/= 10;
  }

  print(original == reversed ? "Palindrome" : "Not Palindrome");
}

// 10. Factorial
int factorialRecursive(int n) {
  if (n == 0) return 1;
  return n * factorialRecursive(n - 1);
}

void factorialProgram() {
  print("Enter a number:");
  int n = int.parse(stdin.readLineSync()!);

  int fact = 1;
  for (int i = 1; i <= n; i++) {
    fact *= i;
  }

  print("Iterative: $fact");
  print("Recursive: ${factorialRecursive(n)}");
}

// 11. Max, Min, Avg
void listOperations() {
  print("Enter number of elements:");
  int n = int.parse(stdin.readLineSync()!);

  List<int> numbers = [];
  int sum = 0;

  for (int i = 0; i < n; i++) {
    int num = int.parse(stdin.readLineSync()!);
    numbers.add(num);
    sum += num;
  }

  int max = numbers[0];
  int min = numbers[0];

  for (int num in numbers) {
    if (num > max) max = num;
    if (num < min) min = num;
  }

  print("Max: $max");
  print("Min: $min");
  print("Average: ${sum / n}");
}

// 12. Leap year
void leapYearCheck() {
  print("Enter year:");
  int year = int.parse(stdin.readLineSync()!);

  if ((year % 4 == 0 && year % 100 != 0) || (year % 400 == 0)) {
    print("Leap Year");
  } else {
    print("Not Leap Year");
  }
}

// 13. Calculator
void calculator() {
  print("first number is:");
  double a = double.parse(stdin.readLineSync()!);

  print("second number is:");
  double b = double.parse(stdin.readLineSync()!);

  print("operator is:");
  String op = stdin.readLineSync()!;

  switch (op) {
    case '+':
      print(a + b);
      break;
    case '-':
      print(a - b);
      break;
    case '*':
      print(a * b);
      break;
    case '/':
      print(b != 0 ? a / b : "Cannot divide by zero");
      break;
    case '%':
      print(b != 0 ? a % b : "Cannot mod by zero");
      break;
    default:
      print("Invalid operator");
  }
}

// 14. Multiplication table
void multiplicationTable() {
  print("Enter number:");
  int n = int.parse(stdin.readLineSync()!);

  for (int i = 1; i <= 10; i++) {
    print("$n x $i = ${n * i}");
  }
}

// MAIN FUNCTION
void main() {
  //checkSquare();
  //gradingSystem();
   //attendanceCheck();
  //reverseNumber();
  // temperatureConversion();
  //checkNumberType();
  //fibonacciSeries();
  // countCharacters();
  //palindromeCheck();
  //factorialProgram();
  //listOperations();
  //leapYearCheck();
  // calculator();
  // multiplicationTable();
}