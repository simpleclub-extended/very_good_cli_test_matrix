import 'dart:async';

import 'package:feature_b/feature_b.dart';
import 'package:test/test.dart';

void main() {
  test('feature_b slow test 3', () async {
    await Future<void>.delayed(const Duration(seconds: 600));
    expect(featureBValue(), contains('feature_b'));
  });
}
