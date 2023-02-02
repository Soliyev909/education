import 'package:education/datebase/allTeachers.dart';
import 'package:education/datebase/teacher409.dart';
import '../datebase/androidTeachers.dart';
import '../datebase/flutterTeachers.dart';
import '../datebase/frontTeachers.dart';
import '../datebase/iosTeachers.dart';
import '../datebase/javaTeachers.dart';
import '../datebase/pythonTeachers.dart';
import '../datebase/teacher501.dart';
import '../pages/ourCourses.dart';
import '../services/io_service.dart';

class Teacher {
  Teacher() {
    viewTeacher();
  }

  void viewTeacher() {
    print("1. All Teachers");
    print("2. Java Backend Teachers ");
    print("3. Frontend Teachers ");
    print("4. Flutter Teachers ");
    print("5. Android Teachers ");
    print("6. Ios Teachers ");
    print("7. Python Backend Teachers ");
    print(r"8. Over $500 a Salary Teachers");
    print(r"9. Less than $500 Salary Teachers");
    print("10. Back");
    print('0. Exit');
    int? number = io.num;

    switch (number) {
      case 1:
        AllTeacher().viewTeacher();
        break;
      case 2:
        JavaTeachers().viewTeacher();
        break;
      case 3:
        FrontednTeachers().viewTeacher();
        break;
      case 4:
        FlutterTeachers().viewTeacher();
        break;
      case 5:
        AndroidTeachers().viewTeacher();
        break;
      case 6:
        IosTeachers().viewTeacher();
        break;
      case 7:
        PythonTeachers().viewTeacher();
        break;
      case 8:
        Teacher409().viewTeacher();
        break;
      case 9:
        Teacher501().viewTeacher();
        break;
      case 10:
        OurCourses();
        break;
      case 0:
        print("God bless you");
        break;
      default:
        viewTeacher();
    }
  }
}
