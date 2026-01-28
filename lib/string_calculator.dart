class StringCalculator {
  int add(String numbers) {
    if (numbers.isEmpty) {
      return 0;
    }

    String delimiter = ',';
    String numbersPart = numbers;

    // custom delimiter check
    if (numbers.startsWith('//')) {
      delimiter = numbers[2];
      numbersPart = numbers.substring(4);
    }

    final normalized = numbersPart.replaceAll('\n', delimiter);
    final parts = normalized.split(delimiter);

    int sum = 0;
    for (final part in parts) {
      sum += int.parse(part);
    }

    return sum;
  }
}
