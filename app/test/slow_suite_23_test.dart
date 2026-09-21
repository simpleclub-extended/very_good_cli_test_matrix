import 'dart:async';

import 'package:flutter_test/flutter_test.dart';

@Timeout(Duration(seconds: 420))
void main() {
  test('slow fake suite 23', () async {
    await Future<void>.delayed(const Duration(seconds: 360));
    expect(23 > 0, isTrue);
  });

  test('slow fake suite 23 - second assertion', () async {
    await Future<void>.delayed(const Duration(seconds: 360));
    expect(23 % 2, inInclusiveRange(0, 1));
  });
}
