@Timeout(Duration(seconds: 510))
import 'dart:async';

import 'package:feature_b/feature_b.dart';
import 'package:test/test.dart';

void main() {
  test('feature_b slow test 2', () async {
    await Future<void>.delayed(const Duration(seconds: 450));
    expect(featureBValue(), contains('feature_b'));
  });
}
