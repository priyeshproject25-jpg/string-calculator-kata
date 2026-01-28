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
}
