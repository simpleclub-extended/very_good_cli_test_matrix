@Timeout(Duration(seconds: 150))
import 'dart:async';

import 'package:flutter_test/flutter_test.dart';

void main() {
  test('slow fake suite 5', () async {
    await Future<void>.delayed(const Duration(seconds: 90));
    expect(5 > 0, isTrue);
  });

  test('slow fake suite 5 - second assertion', () async {
    await Future<void>.delayed(const Duration(seconds: 90));
    expect(5 % 2, inInclusiveRange(0, 1));
  });
}
