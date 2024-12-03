import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';

Future<void> testExecutable(FutureOr<void> Function() testMain) async {
  TestWidgetsFlutterBinding.ensureInitialized();

  // Ensure consistent platform during CI
  debugDefaultTargetPlatformOverride = TargetPlatform.linux;

  return testMain();
}
