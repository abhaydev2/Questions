import 'dart:io';

void main() {
  // --- Task 1: List of names ---
  print('--- Task 1: Names List ---');
  List<String> names = ['Alice', 'Bob', 'Charlie'];
  print(names);


  // --- Task 2: Set of fruits using a loop ---
  print('\n--- Task 2: Fruits Set ---');
  Set<String> fruits = {'Apple', 'Banana', 'Cherry'};
  for (var fruit in fruits) {
    print(fruit);
  }


  // --- Task 3: Expenses total from user input ---
  print('\n--- Task 3: Expense Tracker ---');
  print('How many expenses do you want to enter?');
  int? count = int.tryParse(stdin.readLineSync() ?? '0');
  List<double> expenses = [];
  double total = 0;

  for (int i = 0; i < (count ?? 0); i++) {
    print('Enter expense ${i + 1}:');
    double amount = double.tryParse(stdin.readLineSync() ?? '0') ?? 0;
    expenses.add(amount);
    total += amount;
  }
  print('Total Expenses: \$${total.toStringAsFixed(2)}');


  // --- Task 4: Empty list of days using add() ---
  print('\n--- Task 4: Days of the Week ---');
  List<String> days = [];
  days.add('Monday');
  days.add('Tuesday');
  days.add('Wednesday');
  days.add('Thursday');
  days.add('Friday');
  days.add('Saturday');
  days.add('Sunday');
  print(days);


  // --- Task 5: Use .where to find names starting with 'a' ---
  print('\n--- Task 5: Names starting with "a" ---');
  List<String> friends = ['Alice', 'Aaron', 'Bob', 'Alex', 'Charlie', 'David', 'Eve'];
  var startsWithA = friends.where((name) => name.toLowerCase().startsWith('a'));
  print('Friends starting with A: ${startsWithA.toList()}');


  // --- Task 6: Map with details and updating country ---
  print('\n--- Task 6: User Info Map ---');
  Map<String, dynamic> person = {
    'name': 'Kiran',
    'address': '123 Street',
    'age': 25,
    'country': 'Nepal'
  };
  person['country'] = 'Canada'; // Updating country
  person.forEach((key, value) => print('$key: $value'));


  // --- Task 7: Map with phone keys, filtering length 4 ---
  print('\n--- Task 7: Filter Keys with length 4 ---');
  Map<String, String> phoneMap = {
    'Home': '123456',
    'Work': '987654',
    'Cell': '555000',
    'Emergency': '911'
  };
  var lengthFourKeys = phoneMap.keys.where((key) => key.length == 4);
  print('Keys with length 4: ${lengthFourKeys.toList()}');


  // --- Task 8: Simple To-Do Application Logic ---
  print('\n--- Task 8: Mini To-Do App ---');
  List<String> todoList = [];
  bool running = true;

  while (running) {
    print('\nTo-Do Menu: 1.Add  2.Remove  3.View  4.Exit');
    String? choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        print('Enter task:');
        todoList.add(stdin.readLineSync() ?? '');
        print('Task added.');
        break;
      case '2':
        print('Enter task index to remove (0 to ${todoList.length - 1}):');
        int? index = int.tryParse(stdin.readLineSync() ?? '');
        if (index != null && index >= 0 && index < todoList.length) {
          todoList.removeAt(index);
          print('Task removed.');
        } else {
          print('Invalid index.');
        }
        break;
      case '3':
        print('Your Tasks: $todoList');
        break;
      case '4':
        running = false;
        print('Exiting To-Do App...');
        break;
      default:
        print('Invalid option.');
    }
    // Break the loop for this demo so it doesn't hang in a single run
    if (choice == '4') break; 
  }
}