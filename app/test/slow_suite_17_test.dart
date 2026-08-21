import 'dart:async';

import 'package:flutter_test/flutter_test.dart';

void main() {
  test('slow fake suite 17', () async {
    await Future<void>.delayed(const Duration(seconds: 270));
    expect(17 > 0, isTrue);
  });

  test('slow fake suite 17 - second assertion', () async {
    await Future<void>.delayed(const Duration(seconds: 270));
    expect(17 % 2, inInclusiveRange(0, 1));
  });
}
