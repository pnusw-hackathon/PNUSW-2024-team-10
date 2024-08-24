import Flutter
import UIKit
import GoogleMaps

@main
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
      guard let gmsApiKey = Bundle.main.infoDictionary?["GMSApiKey"] as? String else {
          fatalError("Missing Google Maps API Key")
      }
      
      GMSServices.provideAPIKey(gmsApiKey)
      
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}