@Timeout(Duration(seconds: 510))
import 'dart:async';

import 'package:test/test.dart';

void main() {
  test('slow fake suite 9', () async {
    await Future<void>.delayed(const Duration(seconds: 450));
    expect(9 > 0, isTrue);
  });

  test('slow fake suite 9 - second assertion', () async {
    await Future<void>.delayed(const Duration(seconds: 450));
    expect(9 % 2, inInclusiveRange(0, 1));
  });
}
