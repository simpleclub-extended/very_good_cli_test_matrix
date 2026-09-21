@Timeout(Duration(seconds: 240))
import 'dart:async';

import 'package:test/test.dart';

void main() {
  test('slow fake suite 16', () async {
    await Future<void>.delayed(const Duration(seconds: 180));
    expect(16 > 0, isTrue);
  });

  test('slow fake suite 16 - second assertion', () async {
    await Future<void>.delayed(const Duration(seconds: 180));
    expect(16 % 2, inInclusiveRange(0, 1));
  });
}
