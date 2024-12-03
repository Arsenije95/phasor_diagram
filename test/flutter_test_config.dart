import 'dart:async';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';

Future<void> testExecutable(FutureOr<void> Function() testMain) async {
  TestWidgetsFlutterBinding.ensureInitialized();

  // Apply platform override ONLY in CI environment
  if (Platform.environment.containsKey('CI')) {
    debugDefaultTargetPlatformOverride = TargetPlatform.linux;
  }

  return testMain();
}
