
import '../pages/homePage.dart';
import '../pages/registerStudent.dart';
import '../pages/registerTeacher.dart';
import '../services/io_service.dart';

class Registration{
  Registration(){
    viewRegistration();
  }

  void viewRegistration(){
    print(" 1. Teacher Registration");
    print(" 2. Student Registration");
    print(' 3. Back');
    print(' 4. Exit');
    int? number = io.num;

    switch(number){
      case 2:
        RegisterStudent();
        break;
      case 1:
        RegisterTeacher();
        break;
      case 3:
        HomePage();
        break;
      case 4:
        print("God bless you");
        break;
      default:
        viewRegistration();
    }
  }
}