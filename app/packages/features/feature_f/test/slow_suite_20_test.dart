@Timeout(Duration(seconds: 150))
import 'dart:async';

import 'package:test/test.dart';

void main() {
  test('slow fake suite 20', () async {
    await Future<void>.delayed(const Duration(seconds: 90));
    expect(20 > 0, isTrue);
  });

  test('slow fake suite 20 - second assertion', () async {
    await Future<void>.delayed(const Duration(seconds: 90));
    expect(20 % 2, inInclusiveRange(0, 1));
  });
}
