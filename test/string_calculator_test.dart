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

  test('numbers separated by comma and newline returns sum', () {
    final calculator = StringCalculator();
    expect(calculator.add('1\n2,3'), 6);
  });
  test('custom delimiter returns sum', () {
    final calculator = StringCalculator();
    expect(calculator.add('//;\n1;2'), 3);
  });
  test('negative numbers throw exception', () {
    final calculator = StringCalculator();

    expect(
          () => calculator.add('1,-2,3'),
      throwsA(
        predicate(
              (e) =>
          e is Exception &&
              e.toString().contains('negatives not allowed'),
        ),
      ),
    );
  });

  test('numbers greater than 1000 are ignored', () {
    final calculator = StringCalculator();
    expect(calculator.add('2,1001'), 2);
  });
}
