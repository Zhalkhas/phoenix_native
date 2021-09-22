import 'dart:async';
import 'dart:html' as html;

import 'package:flutter/services.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';

/// A web implementation of the PhoenixNative plugin.
class PhoenixNativeWeb {
  static void registerWith(Registrar registrar) {
    final MethodChannel channel = MethodChannel(
      'phoenix_native',
      const StandardMethodCodec(),
      registrar,
    );

    final pluginInstance = PhoenixNativeWeb();
    channel.setMethodCallHandler(pluginInstance.handleMethodCall);
  }

  /// Handles method calls over the MethodChannel of this plugin.
  /// Note: Check the "federated" architecture for a new way of doing this:
  /// https://flutter.dev/go/federated-plugins
  Future<dynamic> handleMethodCall(MethodCall call) async {
    switch (call.method) {
      case 'restart':
        html.window.location.reload();
        return true;
      default:
        throw PlatformException(
          code: 'Unimplemented',
          details:
              'phoenix_native for web doesn\'t implement \'${call.method}\'',
        );
    }
  }
}
