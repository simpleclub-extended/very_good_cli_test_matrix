@Timeout(Duration(seconds: 240))
import 'dart:async';

import 'package:flutter_test/flutter_test.dart';

void main() {
  test('slow fake suite 21', () async {
    await Future<void>.delayed(const Duration(seconds: 180));
    expect(21 > 0, isTrue);
  });

  test('slow fake suite 21 - second assertion', () async {
    await Future<void>.delayed(const Duration(seconds: 180));
    expect(21 % 2, inInclusiveRange(0, 1));
  });
}
