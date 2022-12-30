//
//  AppDelegate.swift
//  week2
//
//  Created by BAE on 2022/12/27.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
//
//        UINavigationBar.appearance().barTintColor = UIColor(red: 240/255, green: 235/255, blue: 210/255, alpha: 1)
//        var initialViewController: UIViewController?
//        let mainStoryboard : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
//        initialViewController = mainStoryboard.instantiateViewController(withIdentifier: "FirstAd")
//        
//                
//        self.window = UIWindow(frame: UIScreen.main.bounds)
//        self.window?.rootViewController = initialViewController
//        self.window?.makeKeyAndVisible()
//
//        UIApplication.shared.windows.first?.rootViewController?.present(initialViewController, animated: true, completion: nil)

        return true
    }
    
//    func presentInterstitial(_ sender: Any){
//
////        var initialViewController: UIViewController?
//
//        let mainStoryboard : UIStoryboard? = UIStoryboard(name: "Main", bundle: nil)
//
//        guard let initialViewController = mainStoryboard?.instantiateViewController(withIdentifier: "FirstAd") else {return}
//
//
//        self.window = UIWindow(frame: UIScreen.main.bounds)
//        self.window?.rootViewController = initialViewController
//        self.window?.makeKeyAndVisible()
//    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

