#if os(iOS)
  import Flutter
  import UIKit
#elseif os(macOS)
  import Cocoa
  import FlutterMacOS
#endif

public class FlutterZoomSdkPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    #if os(iOS)
      let messenger = registrar.messenger()
    #elseif os(macOS)
      let messenger = registrar.messenger
    #endif

    let channel = FlutterMethodChannel(name: "flutter_zoom_sdk", binaryMessenger: messenger)
    let instance = FlutterZoomSdkPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
    case "getPlatformVersion":
      result("iOS " + UIDevice.current.systemVersion)
    default:
      result(FlutterMethodNotImplemented)
    }
  }
}
