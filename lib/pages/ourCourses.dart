
import '../models/student.dart';
import '../models/teacher.dart';
import '../services/io_service.dart';
import 'homePage.dart';

class OurCourses {
  OurCourses() {
    viewCourse();
  }

  void viewCourse() {
    print("\t\tOur Courses:");
    print(
        "Java Backend \t Frontend \t Flutter \t Android \t IOS \t Python Backend");

    print(" 1. Teachers");
    print(' 2. Students');
    print(' 3. Back');
    print(' 4. Exit');
    int? number = io.num;

    switch(number){
      case 1:
        Teacher();
        break;
      case 2:
        Student();
        break;
      case 3:
        HomePage();
        break;
      case 4:
        print("God Bless You");
        break;
      default :
        viewCourse();
    }
  }
}
