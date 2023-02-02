import '../models/registration.dart';
import '../services/io_service.dart';
import 'homePage.dart';
import 'personalCabinet.dart';

class LoginPage {
  LoginPage() {
    login();
  }

  void login() {
    print("Login");
    io.console("Email:");
    String email = io.text;
    io.console("Password: ");
    String password = io.text;

    if (email == email && password == password) {
      print("You are successfully Login!\n\n\n");
      Cabinet();
    } else {
      print("Check your password or email!");
      selectOption();
    }
  }

  void selectOption() {
    print("1. Registration");
    print("2. Login");

    int page = (io.num ?? 0).toInt();
    print("\n\n\n");
    if (page == 1) {
      Registration();
    } else if (page == 2) {
      LoginPage();
    } else {
      HomePage();
    }
  }
}
