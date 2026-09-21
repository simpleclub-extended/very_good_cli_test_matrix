@Timeout(Duration(seconds: 180))
import 'dart:async';

import 'package:feature_i/feature_i.dart';
import 'package:test/test.dart';

void main() {
  test('feature_i slow test 4', () async {
    await Future<void>.delayed(const Duration(seconds: 120));
    expect(featureIValue(), contains('feature_i'));
  });
}
