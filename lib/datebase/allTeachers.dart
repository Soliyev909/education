import '../models/specialty.dart';
import '../pages/homePage.dart';
import '../services/io_service.dart';

List allTeacher = [];

class AllTeacher {
  List list = [];
  List enumList = Specialty.values;

  void viewTeacher() {
    list.addAll(allTeacher);
    int name = 1;
    int surname = 2;
    int salary = 3;
    if(!(list.length<2)){
    for (int i = 0; i < allTeacher.length; i += 8) {
      print(
          "Teacher Full Name: ${list[name]} ${list[surname]}\n Salary: ${list[salary]}");
      name += 7;
      surname += 7;
      salary += 7;
      print('\n----------------------------');
      print(' 1. Home Page');
      print(' 2. Exit');
      int? number = io.num;
      (number == 2) ? print("God bless you") : HomePage();
    }}else {
      print("Hozirda Biz O'qituvchilar Mavjud emas");
      print('\n----------------------------');
      print(' 1. Home Page');
      print(' 2. Exit');
      int? number = io.num;
      (number == 2) ? print("God bless you") : HomePage();
    }

  }
}
