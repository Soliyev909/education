import 'package:education/datebase/androidStudents.dart';
import 'package:education/datebase/frontStudents.dart';
import 'package:education/datebase/iosStudents.dart';
import 'package:education/datebase/pythonStudents.dart';
import '../datebase/flutterStudents.dart';
import '../datebase/javaStudents.dart';
import '../services/io_service.dart';
import 'homePage.dart';

enum Senum{student}
class RegisterStudent {
  RegisterStudent() {
    registration();
  }
  List studentList = [];
  void registration() {
    print("\t\t\tRegistration");
    print("Choose a specialty:");
    print("\t1. Java_Backend \t 2. Frontend \t 3. Flutter \t 4. Android \t 5. IOS \t 6. Python Backend");
    int? specialty = io.num;
    if(specialty == 1 || specialty == 2 ||specialty == 3 ||specialty == 4 ||specialty == 5 ||specialty == 6 ){
      studentList.add(specialty);
      print("FirstName: ");
      String firstName = io.text;
      studentList.add(firstName);
      print("LastName: ");
      String lastName = io.text;
      studentList.add(lastName);
      print("Email: ");
      String email = io.text;
      studentList.add(email);
      print("Telephone: ");
      String telephone = io.text;
      studentList.add(telephone);
      print("Address: ");
      String address = io.text;
      studentList.add(address);
      print("Password: ");
      String password = io.text;
      studentList.add(password);
      (specialty == 1)?  dataJava.addAll(studentList):
      (specialty == 2)? dataFront.addAll(studentList):
      (specialty == 3)? dataFlutter.addAll(studentList):
      (specialty == 4)? dataAndroid.addAll(studentList):
      (specialty == 5)? dataIos.addAll(studentList):
      (specialty == 6)? dataPython.addAll(studentList):
      [];
      print("You are successfully registration!\n");
    }else{
      print('No Such Course Exists');
      print("--------------");
      registration();
    }

    HomePage();
  }
}

