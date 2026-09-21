@Timeout(Duration(seconds: 240))
import 'dart:async';

import 'package:test/test.dart';

void main() {
  test('slow fake suite 1', () async {
    await Future<void>.delayed(const Duration(seconds: 180));
    expect(1 > 0, isTrue);
  });

  test('slow fake suite 1 - second assertion', () async {
    await Future<void>.delayed(const Duration(seconds: 180));
    expect(1 % 2, inInclusiveRange(0, 1));
  });
}
