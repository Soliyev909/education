import '../models/specialty.dart';
import '../pages/homePage.dart';
import '../services/io_service.dart';

List dataFlutter = [];

class FlutterStudents {
  List list = [];
  List enumList = Specialty.values;

  void viewStudet() {
    list.addAll(dataFlutter);
    int name = 1;
    int surname = 2;
    print("Students ${enumList[2]} :");
    for (int i = 0; i < dataFlutter.length; i += 8) {
      print("Stident Full Name: ${list[name]} ${list[surname]}\n");
      name += 7;
      surname += 7;
    }
    print('\n----------------------------');
    print(' 1. Home Page');
    print(' 2. Exit');
    int? number = io.num;
    (number==2)?print("God bless you"):HomePage();
  }
}
