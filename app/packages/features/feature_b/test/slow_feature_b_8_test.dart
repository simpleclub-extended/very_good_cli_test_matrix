@Timeout(Duration(seconds: 210))
import 'dart:async';

import 'package:feature_b/feature_b.dart';
import 'package:test/test.dart';

void main() {
  test('feature_b slow test 8', () async {
    await Future<void>.delayed(const Duration(seconds: 150));
    expect(featureBValue(), contains('feature_b'));
  });
}
