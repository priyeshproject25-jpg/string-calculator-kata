class StringCalculator {
  int add(String numbers) {
    if (numbers.isEmpty) {
      return 0;
    }

    String delimiter = ',';
    String numbersPart = numbers;

    // custom delimiter
    if (numbers.startsWith('//')) {
      delimiter = numbers[2];
      numbersPart = numbers.substring(4);
    }

    final normalized = numbersPart.replaceAll('\n', delimiter);
    final parts = normalized.split(delimiter);

    int sum = 0;
    List<int> negatives = [];

    for (final part in parts) {
      final value = int.parse(part);

      if (value < 0) {
        negatives.add(value);
      }

      sum += value;
    }

    if (negatives.isNotEmpty) {
      throw Exception('negatives not allowed: ${negatives.join(',')}');
    }

    return sum;
  }
}
