import 'dart:async';

import 'package:flutter_test/flutter_test.dart';

@Timeout(Duration(seconds: 510))
void main() {
  test('slow fake suite 19', () async {
    await Future<void>.delayed(const Duration(seconds: 450));
    expect(19 > 0, isTrue);
  });

  test('slow fake suite 19 - second assertion', () async {
    await Future<void>.delayed(const Duration(seconds: 450));
    expect(19 % 2, inInclusiveRange(0, 1));
  });
}
