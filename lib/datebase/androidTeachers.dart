import '../models/specialty.dart';
import '../pages/homePage.dart';
import '../services/io_service.dart';

List dataAndroidT = [];

class AndroidTeachers {
  List list = [];
  List enumList = Specialty.values;

  void viewTeacher() {
    list.addAll(dataAndroidT);
    int name = 1;
    int surname = 2;
    int salary = 3;
    print("Teachers ${enumList[3]} :");
    for (int i = 0; i < dataAndroidT.length; i += 9) {
      print("Teacher Full Name: ${list[name]} ${list[surname]}\n Salary: ${list[salary]}");
      name += 8;
      surname += 8;
      salary += 8;
    }
    print('\n----------------------------');
    print(' 1. Home Page');
    print(' 2. Exit');
    int? number = io.num;
    (number==2)?print("God bless you"):HomePage();
  }
}
