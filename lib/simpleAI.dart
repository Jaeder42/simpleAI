import 'neuron/neuron.dart';
import 'package:rxdart/rxdart.dart';
import 'dart:io';

int calculate() {
  return 6 * 7;
}

runTest() {
  Observable keyUp = new Observable(stdin);
  // keyUp.map((convert) => print(convert));
  Neuron neuron = new Neuron(keyUp);
  Neuron neuron2 = new Neuron(neuron.test.stream);
}
