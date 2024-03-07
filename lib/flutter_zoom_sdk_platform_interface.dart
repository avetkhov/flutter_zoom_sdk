import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_zoom_sdk_method_channel.dart';

abstract class FlutterZoomSdkPlatform extends PlatformInterface {
  /// Constructs a FlutterZoomSdkPlatform.
  FlutterZoomSdkPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterZoomSdkPlatform _instance = MethodChannelFlutterZoomSdk();

  /// The default instance of [FlutterZoomSdkPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterZoomSdk].
  static FlutterZoomSdkPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterZoomSdkPlatform] when
  /// they register themselves.
  static set instance(FlutterZoomSdkPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
