@Timeout(Duration(seconds: 300))
import 'dart:async';

import 'package:feature_i/feature_i.dart';
import 'package:test/test.dart';

void main() {
  test('feature_i slow test 1', () async {
    await Future<void>.delayed(const Duration(seconds: 240));
    expect(featureIValue(), contains('feature_i'));
  });
}
