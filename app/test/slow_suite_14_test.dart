import 'dart:async';

import 'package:flutter_test/flutter_test.dart';

void main() {
  test('slow fake suite 14', () async {
    await Future<void>.delayed(const Duration(seconds: 450));
    expect(14 > 0, isTrue);
  });

  test('slow fake suite 14 - second assertion', () async {
    await Future<void>.delayed(const Duration(seconds: 450));
    expect(14 % 2, inInclusiveRange(0, 1));
  });
}
