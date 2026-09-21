@Timeout(Duration(seconds: 420))
import 'dart:async';

import 'package:flutter_test/flutter_test.dart';

void main() {
  test('slow fake suite 8', () async {
    await Future<void>.delayed(const Duration(seconds: 360));
    expect(8 > 0, isTrue);
  });

  test('slow fake suite 8 - second assertion', () async {
    await Future<void>.delayed(const Duration(seconds: 360));
    expect(8 % 2, inInclusiveRange(0, 1));
  });
}
