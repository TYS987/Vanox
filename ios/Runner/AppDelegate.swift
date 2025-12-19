import Flutter
import UIKit

@main
@objc class AppDelegate: FlutterAppDelegate {

  var forestTraihikoruceCampa: String?
  let forestTraihikoruceCampb = "forestTraihikoruceCampej"

  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {

    let forestTraihikoruceCampc = window?.rootViewController as! FlutterViewController
    let forestTraihikoruceCampd = FlutterMethodChannel(
      name: "forestTrainatureripPlannerSnap", binaryMessenger: forestTraihikoruceCampc.binaryMessenger)
    forestTraihikoruceCampd.setMethodCallHandler { [weak self] (forestTraihikoruceCampe, forestTraihikoruceCampf) in
      switch forestTraihikoruceCampe.method {
      case "forestTraivoicairemiance":
        forestTraihikoruceCampf(self?.forestTraihikoruceCampa ?? "")
      default:
        forestTraihikoruceCampf(FlutterMethodNotImplemented)
      }
    }

    UNUserNotificationCenter
      .current()
      .requestAuthorization(
        options: [.alert, .sound, .badge]
      ) { forestTraihikoruceCampf, _ in
        if forestTraihikoruceCampf {
          DispatchQueue.main.async {
            UIApplication.shared.registerForRemoteNotifications()
          }
        }
      }

    forestTraihikoruceCampa = UserDefaults.standard.string(forKey: forestTraihikoruceCampb) ?? ""

    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }

  override func application(
    _ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data
  ) {
    self.forestTraihikoruceCampa = deviceToken.map { String(format: "%02.2hhx", $0) }.joined()
    UserDefaults.standard.set(self.forestTraihikoruceCampa, forKey: forestTraihikoruceCampb)
  }
}
