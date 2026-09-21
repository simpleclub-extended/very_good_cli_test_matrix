@Timeout(Duration(seconds: 420))
import 'dart:async';

import 'package:feature_c/feature_c.dart';
import 'package:test/test.dart';

void main() {
  test('slow fake suite 13', () async {
    await Future<void>.delayed(const Duration(seconds: 360));
    expect(featureCValue(), contains('feature_c_updated'));
  });

  test('slow fake suite 13 - second assertion', () async {
    await Future<void>.delayed(const Duration(seconds: 360));
    expect(13 % 2, inInclusiveRange(0, 1));
  });
}
