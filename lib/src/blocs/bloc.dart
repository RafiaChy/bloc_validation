import 'dart:async';

class Bloc {
  final _emailController = StreamController<String>();
  final _passawordController = StreamController<String>();

  Function(String) get addEmail => _emailController.sink.add;
  Function(String) get addPassword => _passawordController.sink.add;

  Stream<String> get email => _emailController.stream;
  Stream<String> get password => _passawordController.stream;
}
