import '../models/specialty.dart';
import '../pages/homePage.dart';
import '../services/io_service.dart';

List data409 = [];

class Teacher409 {
  List list = [];
  List enumList = Specialty.values;

  void viewTeacher() {
    list.addAll(data409);
    int name = 1;
    int surname = 2;
    int salary = 3;
    String icon = r"$";
    for (int i = 0; i < data409.length; i += 9) {
      print("Teacher Full Name: ${list[name]} ${list[surname]}\n Salary: ${list[salary]}: $icon");
      name += 8;
      surname += 8;
      salary += 8;
    }
    print('\n----------------------------');
    print(' 1. Home Page');
    print(' 2. Exit');
    int? number = io.num;
    (number == 2) ? print("God bless you") : HomePage();
  }
}
