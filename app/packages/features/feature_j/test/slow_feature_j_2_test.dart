@Timeout(Duration(seconds: 510))
import 'dart:async';

import 'package:feature_j/feature_j.dart';
import 'package:test/test.dart';

void main() {
  test('feature_j slow test 2', () async {
    await Future<void>.delayed(const Duration(seconds: 450));
    expect(featureJValue(), contains('feature_j'));
  });
}
