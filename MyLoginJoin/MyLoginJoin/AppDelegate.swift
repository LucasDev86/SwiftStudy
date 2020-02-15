//
//  AppDelegate.swift
//

import UIKit



struct UserInfo {
    var id: String = ""
    var pw: String = ""
    var name: String = ""
    var phone: String = ""
}



@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    //UserInfo 스트럭트 객체(인스턴스)를 선언함.
    var userInfo: UserInfo = UserInfo()
    //로그인 되었는지 정보 설정
    var isLogin: Bool = false
    //약관동의 했는지
    var isAgree: Bool = false

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        
        
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        
    }


}

