import 'dart:async';

import 'package:feature_b/feature_b.dart';
import 'package:test/test.dart';

@Timeout(Duration(seconds: 210))
void main() {
  test('feature_b slow test 4', () async {
    await Future<void>.delayed(const Duration(seconds: 150));
    expect(featureBValue(), contains('feature_b'));
  });
}
