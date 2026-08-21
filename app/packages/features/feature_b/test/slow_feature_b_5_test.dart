import 'dart:async';

import 'package:feature_b/feature_b.dart';
import 'package:test/test.dart';

void main() {
  test('feature_b slow test 5', () async {
    await Future<void>.delayed(const Duration(seconds: 300));
    expect(featureBValue(), contains('feature_b'));
  });
}
