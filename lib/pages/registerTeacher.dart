import 'package:education/datebase/allTeachers.dart';
import 'package:education/datebase/teacher409.dart';
import '../datebase/androidTeachers.dart';
import '../datebase/flutterTeachers.dart';
import '../datebase/frontTeachers.dart';
import '../datebase/iosTeachers.dart';
import '../datebase/javaTeachers.dart';
import '../datebase/pythonTeachers.dart';
import '../datebase/teacher501.dart';
import '../services/io_service.dart';
import 'homePage.dart';

class RegisterTeacher {
  RegisterTeacher() {
    registration();
  }

  List teacherList = [];

  void registration() {
    print("Registration");
    print("Choose a specialty");
    print(
        "\t1. Java_Backend \t 2. Frontend \t 3. Flutter \t 4. Android \t 5. IOS \t 6. Python Backend");
    int? specialty = io.num;
    if (specialty == 1 ||
        specialty == 2 ||
        specialty == 3 ||
        specialty == 4 ||
        specialty == 5 ||
        specialty == 6) {
      teacherList.add(specialty);
      print("FirstName: ");
      String firstName = io.text;
      teacherList.add(firstName);
      print("LastName: ");
      String lastName = io.text;
      teacherList.add(lastName);
      print("Salary: ");
      int? salary = io.num;
      if (salary is int) {
        teacherList.add(salary);
        print("Email: ");
        String email = io.text;
        teacherList.add(email);
        print("Telephone: ");
        String telephone = io.text;
        teacherList.add(telephone);
        print("Address: ");
        String address = io.text;
        teacherList.add(address);
        print("Password: ");
        String password = io.text;
        teacherList.add(password);
        (specialty == 1)
            ? dataJavaT.addAll(teacherList)
            : (specialty == 2)
                ? dataFrontT.addAll(teacherList)
                : (specialty == 3)
                    ? dataFlutterT.addAll(teacherList)
                    : (specialty == 4)
                        ? dataAndroidT.addAll(teacherList)
                        : (specialty == 5)
                            ? dataIosT.addAll(teacherList)
                            : (specialty == 6)
                                ? dataPythonT.addAll(teacherList)
                                : [];
        allTeacher.addAll(teacherList);
        (salary> 500)
            ? data409.addAll(teacherList)
            : data501.addAll(teacherList);
      } else{
        print("Salary Enter the number\n");
        registration();
      }
    } else {
      print('No Such Course Exists');
      print("--------------");
      registration();
    }

    print("You are successfully registration!\n");
    HomePage();
  }
}
