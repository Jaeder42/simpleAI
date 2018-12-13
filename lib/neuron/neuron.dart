import 'package:rxdart/rxdart.dart';

class Neuron {
  Observable input;
  Observable output;
  PublishSubject test;
  Neuron(this.input) {
    print('Neuron created!');
    test = new PublishSubject();
    input.listen(onData);
  }

  onData(data) {
    print(data);
    test.add('test');
  }
}
