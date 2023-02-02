import '../models/registration.dart';
import '../services/io_service.dart';
import 'loginPage.dart';
import 'ourCourses.dart';
import 'personalCabinet.dart';

class HomePage {
  HomePage() {
    viewHome();
  }

  void viewHome() {
    print("LEARN PROGRAMMING IN A WONDERFUL ENVIRONMENT \n");
    print(" 1. Our courses");
    print(" 2. Personal cabinet");
    print(' 3. Registration');
    print(' 4. Login');
    print(' 5. Exit');
    int? number = io.num;

    switch (number) {
      case 1:
        OurCourses();
        break;
      case 2:
        Cabinet();
        viewHome();
        //  TODO: Iplos yoz tezro;
        break;
      case 3:
        Registration();
        break;
      case 4:
        LoginPage();
        break;
      case 5:
        print('God bless you');
        break;
      default:
        viewHome();
    }
  }
}
