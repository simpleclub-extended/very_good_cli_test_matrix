import 'dart:async';

import 'package:flutter_test/flutter_test.dart';

void main() {
  test('slow fake suite 24', () async {
    await Future<void>.delayed(const Duration(seconds: 450));
    expect(24 > 0, isTrue);
  });

  test('slow fake suite 24 - second assertion', () async {
    await Future<void>.delayed(const Duration(seconds: 450));
    expect(24 % 2, inInclusiveRange(0, 1));
  });
}
