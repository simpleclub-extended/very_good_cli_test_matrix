import 'dart:async';

import 'package:feature_a/feature_a.dart';
import 'package:test/test.dart';

void main() {
  test('feature_a slow test 8', () async {
    await Future<void>.delayed(const Duration(seconds: 120));
    expect(featureAValue(), contains('feature_a'));
  });
}
