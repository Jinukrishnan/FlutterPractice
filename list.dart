import 'dart:ffi';
import 'dart:io';

void main() {
  List<dynamic> todo = [];
  bool count = true;
  while (count) {
    print('============================================');
    print('TODO');
    print('============================================');
    print('1.Add Task');
    print('2.Display Task');
    print('3.Edit Task');
    print('4.Delete Task');
    print('5.Exit');
    print('============================================');
    print('Enter your Chouce :');
    int choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        print('============================================');
        print('Enter Task Name :');
        String task = stdin.readLineSync()!;
        todo.add(task);
        break;
      case 2:
        print('Entered todos...');
        for (int i = 0; i < todo.length; i++) {
          print('${i + 1}->  ${todo[i]}');
        }
        break;
      case 3:
        print('Enter Task Number for Edit :');
        int index = int.parse(stdin.readLineSync()!);
        print('Enter Task for Edit :');
        String task = stdin.readLineSync()!;
        todo[index - 1] = task;

        break;
      case 4:
        print('Enter Task Number for Delete :');
        int index = int.parse(stdin.readLineSync()!);
        todo.removeAt(index - 1);
        break;
      case 5:
        print('exit');
        count = false;
        break;
    }
    print('============================================');
  }
}
