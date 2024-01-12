import 'dart:io';

class Student {
  String name;
  int age;
  String grade;

  Student(this.name, this.age, this.grade);

  @override
  String toString() {
    return 'Name: $name, Age: $age, Grade: $grade';
  }
}

class StudentManagementSystem {
  List<Student> students = [];

  void addStudent() {
    print('Enter student details:');
    stdout.write('Name: ');
    String name = stdin.readLineSync()!;
    stdout.write('Age: ');
    int age = int.parse(stdin.readLineSync()!);
    stdout.write('Grade: ');
    String grade = stdin.readLineSync()!;

    students.add(Student(name, age, grade));
    print('Student added successfully!\n');
  }

  void displayStudents() {
    if (students.isEmpty) {
      print('No students available.\n');
    } else {
      print('Student List:');
      for (var student in students) {
        print(student);
      }
      print('');
    }
  }
}

void main() {
  var studentSystem = StudentManagementSystem();

  while (true) {
    print('Student Management System');
    print('1. Add Student');
    print('2. Display Students');
    print('3. Exit');

    stdout.write('Enter your choice (1/2/3): ');
    var choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        studentSystem.addStudent();
        break;
      case '2':
        studentSystem.displayStudents();
        break;
      case '3':
        print('Exiting the program. Goodbye!');
        return;
      default:
        print('Invalid choice. Please enter 1, 2, or 3.\n');
    }
  }
}
