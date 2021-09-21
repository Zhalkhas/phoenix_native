import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:phoenix_native/phoenix_native.dart';

void main() {
  const MethodChannel channel = MethodChannel('phoenix_native');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return true;
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('restartApp', () async {
    expect(await PhoenixNative.restartApp(), true);
  });
}
