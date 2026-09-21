import 'dart:async';

import 'package:flutter_test/flutter_test.dart';

@Timeout(Duration(seconds: 420))
void main() {
  test('slow fake suite 18', () async {
    await Future<void>.delayed(const Duration(seconds: 360));
    expect(18 > 0, isTrue);
  });

  test('slow fake suite 18 - second assertion', () async {
    await Future<void>.delayed(const Duration(seconds: 360));
    expect(18 % 2, inInclusiveRange(0, 1));
  });
}
