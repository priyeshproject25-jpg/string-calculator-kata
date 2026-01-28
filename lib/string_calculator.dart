class StringCalculator {
  int add(String numbers) {
    if (numbers.isEmpty) {
      return 0;
    }

    // comma + newline dono ko handle karne ke liye
    final normalized = numbers.replaceAll('\n', ',');
    final parts = normalized.split(',');

    int sum = 0;
    for (final part in parts) {
      sum += int.parse(part);
    }

    return sum;
  }
}
