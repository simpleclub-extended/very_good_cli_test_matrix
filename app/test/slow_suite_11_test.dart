import 'dart:async';

import 'package:flutter_test/flutter_test.dart';

void main() {
  test('slow fake suite 11', () async {
    await Future<void>.delayed(const Duration(seconds: 180));
    expect(11 > 0, isTrue);
  });

  test('slow fake suite 11 - second assertion', () async {
    await Future<void>.delayed(const Duration(seconds: 180));
    expect(11 % 2, inInclusiveRange(0, 1));
  });
}
