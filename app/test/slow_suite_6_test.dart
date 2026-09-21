import 'dart:async';

import 'package:flutter_test/flutter_test.dart';

@Timeout(Duration(seconds: 240))
void main() {
  test('slow fake suite 6', () async {
    await Future<void>.delayed(const Duration(seconds: 180));
    expect(6 > 0, isTrue);
  });

  test('slow fake suite 6 - second assertion', () async {
    await Future<void>.delayed(const Duration(seconds: 180));
    expect(6 % 2, inInclusiveRange(0, 1));
  });
}
