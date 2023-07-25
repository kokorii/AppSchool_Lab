//
//  SceneDelegate.swift
//  MockUp
//
//  Created by gnksbm on 2023/07/20.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
  
  var window: UIWindow?
  
  //로그인 여부 확인
  var isLogin: Bool = false
  
  func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
    guard let windowScene = (scene as? UIWindowScene) else { return }
    
    //로그인이 안되어 있다면 로그인 화면으로 이동
    if(isLogin == false) {

      // 단일뷰를 보여주는 전통적인 예시 코드
      window = UIWindow(frame: windowScene.coordinateSpace.bounds)
      window?.windowScene = windowScene
      window?.rootViewController = LoginViewController()
      window?.makeKeyAndVisible()

    } else { //로그인이 성공했거나, 자동 로그인 헝요 상태라면 메인 뷰 진입
      let firstViewController = UINavigationController(rootViewController: FirstViewController())
      firstViewController.tabBarItem = UITabBarItem(title: "홈", image: UIImage(systemName: "house.fill"), tag: 0)
      
      let secondViewContoller = UINavigationController(rootViewController: SecondViewController())
      secondViewContoller.tabBarItem = UITabBarItem(title: "알림", image: UIImage(systemName: "bell.fill"), tag: 1)
      let thirdViewController = UINavigationController(rootViewController: ThirdViewController())
      thirdViewController.tabBarItem = UITabBarItem(title: "마이페이지", image: UIImage(systemName: "person.fill"), tag: 2)
      
      let tabBarController = UITabBarController()
      tabBarController.viewControllers = [firstViewController, secondViewContoller, thirdViewController]
      tabBarController.tabBar.backgroundColor = .white
      
      window = UIWindow(frame: windowScene.coordinateSpace.bounds)
      window?.windowScene = windowScene
      window?.rootViewController = tabBarController
      window?.makeKeyAndVisible()

    }
  }
  
  func changeRootViewController(_ vc: UIViewController) {
    
    guard let window = self.window else { return }
    
    let firstViewController = UINavigationController(rootViewController: FirstViewController())
    firstViewController.tabBarItem = UITabBarItem(title: "홈", image: UIImage(systemName: "house.fill"), tag: 0)
    
    let secondViewContoller = UINavigationController(rootViewController: SecondViewController())
    secondViewContoller.tabBarItem = UITabBarItem(title: "알림", image: UIImage(systemName: "bell.fill"), tag: 1)
    let thirdViewController = UINavigationController(rootViewController: ThirdViewController())
    thirdViewController.tabBarItem = UITabBarItem(title: "마이페이지", image: UIImage(systemName: "person.fill"), tag: 2)
    
    let tabBarController = UITabBarController()
    tabBarController.viewControllers = [firstViewController, secondViewContoller, thirdViewController]
      tabBarController.tabBar.backgroundColor = .white
      
    window.rootViewController = tabBarController
    window.makeKeyAndVisible()
  }
  
  func sceneDidDisconnect(_ scene: UIScene) {
    // Called as the scene is being released by the system.
    // This occurs shortly after the scene enters the background, or when its session is discarded.
    // Release any resources associated with this scene that can be re-created the next time the scene connects.
    // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
  }
  
  func sceneDidBecomeActive(_ scene: UIScene) {
    // Called when the scene has moved from an inactive state to an active state.
    // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
  }
  
  func sceneWillResignActive(_ scene: UIScene) {
    // Called when the scene will move from an active state to an inactive state.
    // This may occur due to temporary interruptions (ex. an incoming phone call).
  }
  
  func sceneWillEnterForeground(_ scene: UIScene) {
    // Called as the scene transitions from the background to the foreground.
    // Use this method to undo the changes made on entering the background.
  }
  
  func sceneDidEnterBackground(_ scene: UIScene) {
    // Called as the scene transitions from the foreground to the background.
    // Use this method to save data, release shared resources, and store enough scene-specific state information
    // to restore the scene back to its current state.
  }
  
  
}

