
import 'flutter_zoom_sdk_platform_interface.dart';

class FlutterZoomSdk {
  Future<String?> getPlatformVersion() {
    return FlutterZoomSdkPlatform.instance.getPlatformVersion();
  }
}
