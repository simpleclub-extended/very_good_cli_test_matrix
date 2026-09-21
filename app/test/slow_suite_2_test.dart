import 'dart:async';

import 'package:flutter_test/flutter_test.dart';

@Timeout(Duration(seconds: 330))
void main() {
  test('slow fake suite 2', () async {
    await Future<void>.delayed(const Duration(seconds: 270));
    expect(2 > 0, isTrue);
  });

  test('slow fake suite 2 - second assertion', () async {
    await Future<void>.delayed(const Duration(seconds: 270));
    expect(2 % 2, inInclusiveRange(0, 1));
  });
}
