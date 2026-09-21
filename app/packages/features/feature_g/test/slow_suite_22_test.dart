@Timeout(Duration(seconds: 330))
import 'dart:async';

import 'package:test/test.dart';

void main() {
  test('slow fake suite 22', () async {
    await Future<void>.delayed(const Duration(seconds: 270));
    expect(22 > 0, isTrue);
  });

  test('slow fake suite 22 - second assertion', () async {
    await Future<void>.delayed(const Duration(seconds: 270));
    expect(22 % 2, inInclusiveRange(0, 1));
  });
}
