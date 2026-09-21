import 'dart:async';

import 'package:feature_a/feature_a.dart';
import 'package:test/test.dart';

@Timeout(Duration(seconds: 420))
void main() {
  test('feature_a slow test 2', () async {
    await Future<void>.delayed(const Duration(seconds: 360));
    expect(featureAValue(), contains('feature_a'));
  });
}
