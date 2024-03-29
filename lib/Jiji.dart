import 'package:dart_ping/dart_ping.dart';

void main() async {
  // Create ping object with desired args
  final ping = Ping('google.com');
  int i = 0;

  // [Optional]
  // Preview command that will be run (helpful for debugging)
  print('Running command: ${ping.command}');

  // Begin ping process and listen for output
  ping.stream.listen((event) {
    print("$event - $i");
    if (i == 5) ping.stop();
    i++;
  });
}