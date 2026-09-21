@Timeout(Duration(seconds: 360))
import 'dart:async';

import 'package:feature_j/feature_j.dart';
import 'package:test/test.dart';

void main() {
  test('feature_j slow test 1', () async {
    await Future<void>.delayed(const Duration(seconds: 300));
    expect(featureJValue(), contains('feature_j'));
  });
}
