@Timeout(Duration(seconds: 330))
import 'dart:async';

import 'package:test/test.dart';

void main() {
  test('slow fake suite 12', () async {
    await Future<void>.delayed(const Duration(seconds: 270));
    expect(12 > 0, isTrue);
  });

  test('slow fake suite 12 - second assertion', () async {
    await Future<void>.delayed(const Duration(seconds: 270));
    expect(12 % 2, inInclusiveRange(0, 1));
  });
}
