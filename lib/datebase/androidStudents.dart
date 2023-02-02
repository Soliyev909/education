import 'package:education/pages/homePage.dart';

import '../models/specialty.dart';
import '../services/io_service.dart';

List dataAndroid = [];

class AndroidStudents {
  List list = [];
  List enumList = Specialty.values;

  void viewStudet() {
    list.addAll(dataAndroid);
    int name = 1;
    int surname = 2;
    print("Students ${enumList[3]} :");
    for (int i = 0; i < dataAndroid.length; i += 9) {
      print("Stident Full Name: ${list[name]} ${list[surname]}\n");
      name += 8;
      surname += 8;
    }
    print('\n----------------------------');
    print(' 1. Home Page');
    print(' 2. Exit');
    int? number = io.num;
    (number==2)?print("God bless you"):HomePage();
  }
}

