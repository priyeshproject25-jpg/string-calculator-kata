# String Calculator Kata (Flutter + Dart)

This repository contains an implementation of the String Calculator Kata using Flutter (Dart), following Test Driven Development (TDD) practices.

The solution is developed step-by-step with multiple commits to clearly demonstrate the RED → GREEN → REFACTOR cycle.

---

## Problem Statement

Create a method `add(String numbers)` that:

- Returns 0 for an empty string
- Returns the number itself for a single number
- Returns the sum of comma-separated numbers
- Supports multiple numbers
- Throws an exception for negative numbers
- Ignores numbers greater than 1000

---

## Features Implemented

- Empty string returns 0
- Single number input
- Multiple comma-separated numbers
- Handles any amount of numbers
- Throws exception for negative numbers
- Ignores numbers greater than 1000
- Fully covered with unit tests
- Written using TDD

---

## Example Usage

```dart
StringCalculator calculator = StringCalculator();

calculator.add("");        // 0
calculator.add("5");       // 5
calculator.add("1,2");     // 3
calculator.add("1,2,3");   // 6
calculator.add("1001,2");  // 2
