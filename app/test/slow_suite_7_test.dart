import 'dart:async';

import 'package:flutter_test/flutter_test.dart';

void main() {
  test('slow fake suite 7', () async {
    await Future<void>.delayed(const Duration(seconds: 270));
    expect(7 > 0, isTrue);
  });

  test('slow fake suite 7 - second assertion', () async {
    await Future<void>.delayed(const Duration(seconds: 270));
    expect(7 % 2, inInclusiveRange(0, 1));
  });
}
