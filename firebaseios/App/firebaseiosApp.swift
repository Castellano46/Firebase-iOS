//
//  firebaseiosApp.swift
//  firebaseios
//
//  Created by Pedro on 12/2/24.
//

import SwiftUI
import Firebase
import FirebaseCore
import UserNotifications

class AppDelegate: NSObject, UIApplicationDelegate, UNUserNotificationCenterDelegate, MessagingDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
      
      FirebaseApp.configure()
      
      UNUserNotificationCenter.current().delegate = self
      
      let authOptions: UNAuthorizationOptions = [.alert, .badge, .sound]
      
      UNUserNotificationCenter.current().requestAuthorization(options: authOptions, completionHandler: { _, _ in})
      
      application.registerForRemoteNotifications()
      
      Messaging.messaging().delegate = self

    return true
  }
    
    func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        // La primera vez y enlazamos con el APN
        Messaging.messaging().apnsToken = deviceToken
    }
    
    func application(_ application: UIApplication, didFailToRegisterForRemoteNotificationsWithError error: Error) {
        print("Failed to register for remote notifications: \(error)")
    }
    
    
    func application(_ application: UIApplication, didReceiveRemoteNotification userInfo: [AnyHashable : Any], fetchCompletionHandler completionHandler: @escaping (UIBackgroundFetchResult) -> Void) {
        navigatoToView(userInfo: userInfo) {
            completionHandler(.newData)
        }
    }
    
    func navigatoToView(userInfo: [AnyHashable: Any], completion: @escaping () -> Void) {
        //Navegar Hacia pantalla
    }
    
    func messaging(_ messaging: Messaging, didReceiveRegistrationToken fcmToken: String?) {
        print("Firebase registration token: \(String(describing: fcmToken))")
        
        //Mandariamos nuestro FCM Token a nuestro backend
        
        Messaging.messaging().subscribe(toTopic: "KEEPCODING_16") { error in
            print("Error: \(String(describing: error))")
        }
        
        let dataDict: [String: String] = ["token": fcmToken ?? ""]
        NotificationCenter.default.post(name: Notification.Name("FCMToken"), object: nil, userInfo: dataDict)
        
    }
}

@main
struct firebaseiosApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
