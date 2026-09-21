@Timeout(Duration(seconds: 420))
import 'dart:async';

import 'package:feature_i/feature_i.dart';
import 'package:test/test.dart';

void main() {
  test('feature_i slow test 2', () async {
    await Future<void>.delayed(const Duration(seconds: 360));
    expect(featureIValue(), contains('feature_i'));
  });
}
