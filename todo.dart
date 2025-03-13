// ignore_for_file: unused_local_variable

import 'dart:io';

void main() {
  List<String> tasks = []; // List to store tasks

  while (true) {
    print("\n===== To-Do List Menu =====");
    print("1. Add Task");
    print("2. View Tasks");
    print("3. Remove Task");
    print("4. Exit");
    stdout.write("Choose an option: ");

    String? choice = stdin.readLineSync();

    if (choice == "1") {
      stdout.write("Enter a new task: ");
      String? task = stdin.readLineSync();
      if (task != null && task.isNotEmpty) {
        tasks.add(task);
        print("Task added successfully!");
      } else {
        print("Task cannot be empty.");
      }
    } 
    
    else if (choice == "2") {
      print("\nTask List:");
      if (tasks.isEmpty) {
        print("No tasks added yet.");
      } else {
        for (int i = 0; i < tasks.length; i++) {
          print("${i + 1}. ${tasks[i]}");
        }
      }
    } 
    
    else if (choice == "3") {
      if (tasks.isEmpty) {
        print("\nNo tasks available to remove.");
        continue;
      }

      print("\nEnter the task number to remove:");
      for (int i = 0; i < tasks.length; i++) {
        print("${i + 1}. ${tasks[i]}");
      }

      stdout.write("Task number: ");
      String? indexStr = stdin.readLineSync();
      int? index = int.tryParse(indexStr ?? "");

      if (index != null && index > 0 && index <= tasks.length) {
        print("Removed: ${tasks.removeAt(index - 1)}");
      } else {
        print("Invalid task number.");
      }
    } 
    
    else if (choice == "4") {
      print("Thank you for using the To-Do List. Goodbye!");
      break;
    } 
    
    else {
      print("Invalid choice. Please enter a number between 1-4.");
    }
  }
}
