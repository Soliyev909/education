import 'dart:io';

final IoService io = IoService();

class IoService {
  String get text {
    String word = stdin.readLineSync() ?? '';
    return word.trimRight();
  }

  int? get num {
    String word = stdin.readLineSync() ?? '';
    return int.tryParse(word.trim());
  }

  void console(Object? object) {
    stdout.write(object);
  }
}
