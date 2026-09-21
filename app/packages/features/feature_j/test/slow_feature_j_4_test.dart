@Timeout(Duration(seconds: 210))
import 'dart:async';

import 'package:feature_j/feature_j.dart';
import 'package:test/test.dart';

void main() {
  test('feature_j slow test 4', () async {
    await Future<void>.delayed(const Duration(seconds: 150));
    expect(featureJValue(), contains('feature_j'));
  });
}
