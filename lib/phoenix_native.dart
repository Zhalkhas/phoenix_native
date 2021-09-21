import 'dart:async';

import 'package:flutter/services.dart';

class PhoenixNative {
  static const MethodChannel _channel = MethodChannel('phoenix_native');

  /// Restarts the app
  static Future<bool> restartApp() async {
    return await _channel.invokeMethod('restart');
  }
}
