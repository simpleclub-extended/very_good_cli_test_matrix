import 'dart:async';

import 'package:feature_a/feature_a.dart';
import 'package:test/test.dart';

void main() {
  test('feature_a slow test 6', () async {
    await Future<void>.delayed(const Duration(seconds: 360));
    expect(featureAValue(), contains('feature_a'));
  });
}
