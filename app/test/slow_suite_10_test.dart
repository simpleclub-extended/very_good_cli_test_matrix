import 'dart:async';

import 'package:flutter_test/flutter_test.dart';

void main() {
  test('slow fake suite 10', () async {
    await Future<void>.delayed(const Duration(seconds: 90));
    expect(10 > 0, isTrue);
  });

  test('slow fake suite 10 - second assertion', () async {
    await Future<void>.delayed(const Duration(seconds: 90));
    expect(10 % 2, inInclusiveRange(0, 1));
  });
}
