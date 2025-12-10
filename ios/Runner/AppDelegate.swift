import UIKit
import Flutter
import flutter_local_notifications

@main
@objc class AppDelegate: FlutterAppDelegate {

  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    FlutterLocalNotificationsPlugin.setPluginRegistrantCallback { (registry) in
        GeneratedPluginRegistrant.register(with: registry)
    }

    if #available(iOS 10.0, *) {
      UNUserNotificationCenter.current().delegate = self as UNUserNotificationCenterDelegate
    }

    if #available(iOS 10.0, *) {
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge]) { (granted, error) in
            if granted {
                application.registerForRemoteNotifications()
            } else {
            }
        }
    } else {
        let settings = UIUserNotificationSettings(types: [.alert, .sound, .badge], categories: nil)
        application.registerUserNotificationSettings(settings)
        application.registerForRemoteNotifications()
    }


    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }

  override func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
    let lovtkPrevious = deviceToken.map { String(format: "%02.2hhx", $0) }.joined()
    let lovtkPreviousController : FlutterViewController = window?.rootViewController as! FlutterViewController
    let lovtkPreviousChannel = FlutterMethodChannel(name: "esentalConventuoutdoorCompildernanio", binaryMessenger: lovtkPreviousController.binaryMessenger)
    lovtkPreviousChannel.invokeMethod("esentalConstarGazeenturersairelit", arguments: lovtkPrevious)

    lovtkPreviousChannel.setMethodCallHandler { (call, result) in
      if call.method == "esentalConventuoutdoorCompildernanioRequest" {
          result(lovtkPrevious)
      }
    }
  }
}