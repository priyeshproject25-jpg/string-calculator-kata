import 'package:flutter_test/flutter_test.dart';
import 'package:string_calculator_kata/string_calculator.dart';

void main() {
  test('empty string returns 0', () {
    final calculator = StringCalculator();
    expect(calculator.add(''), 0);
  });

  test('single number returns the number', () {
    final calculator = StringCalculator();
    expect(calculator.add('5'), 5);
  });

  test('two numbers comma separated returns sum', () {
    final calculator = StringCalculator();
    expect(calculator.add('1,2'), 3);
  });
  test('multiple numbers comma separated returns sum', () {
    final calculator = StringCalculator();
    expect(calculator.add('1,2,3'), 6);
  });
}
