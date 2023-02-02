import '../datebase/androidStudents.dart';
import '../datebase/flutterStudents.dart';
import '../datebase/frontStudents.dart';
import '../datebase/iosStudents.dart';
import '../datebase/javaStudents.dart';
import '../datebase/pythonStudents.dart';
import '../pages/ourCourses.dart';
import '../services/io_service.dart';

class Student{
  Student(){
    viewStudent();
  }

  void viewStudent() {
    print("1. Java Backend students ");
    print("2. Frontend students ");
    print("3. Flutter students ");
    print("4. Android students ");
    print("5. Ios students ");
    print("6. Python Backend students ");
    print("7. Back");
    print('8. Exit');
    int? number = io.num;

    switch(number){
      case 1:
        JavaStudents().viewStudet();
        break;
      case 2:
        FrontendStudents().viewStudet();
        break;
      case 3:
        FlutterStudents().viewStudet();
        break;
      case 4:
        AndroidStudents().viewStudet();
        break;
      case 5:
        IosStudents().viewStudet();
        break;
      case 6:
        PythonStudents().viewStudet();
        break;
      case 7:
        OurCourses().viewCourse();
        break;
      case 8:
        print("God bless you");
        break;
      default :
        viewStudent();
    }
  }
}


