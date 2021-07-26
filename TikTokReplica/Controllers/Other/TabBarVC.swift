//
//  TabBarVC.swift
//  TikTokReplica
//
//  Created by Felix Alexander Sotelo Quezada on 23-07-21.
//

import UIKit

class TabBarVC: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpControllers()
    }
    
}
private extension TabBarVC {
    
    func setUpControllers()  {
        let home            = HomeVC()
        let explore         = ExploreVC()
        let camera          = CameraVC()
        let notifications   = NotificationsVC()
        let profile         = ProfileVC()
        
        home.title              = "Home"
        explore.title           = "Explore"
        notifications.title     = "Notifications"
        profile.title           = "Profile"
        
        let navHome             = UINavigationController(rootViewController: home)
        let navExplore          = UINavigationController(rootViewController: explore)
        let navNotifications    = UINavigationController(rootViewController: notifications)
        let navProfile          = UINavigationController(rootViewController: profile)
        
        navHome.tabBarItem          = UITabBarItem(title: nil, image: Constants.SystemSymbols.home, tag: 1)
        navExplore.tabBarItem       = UITabBarItem(title: nil, image: Constants.SystemSymbols.explore, tag: 2)
        camera.tabBarItem           = UITabBarItem(title: nil, image: Constants.SystemSymbols.camera, tag: 3)
        navNotifications.tabBarItem = UITabBarItem(title: nil, image: Constants.SystemSymbols.notifications, tag: 4)
        navProfile.tabBarItem       = UITabBarItem(title: nil, image: Constants.SystemSymbols.profile, tag: 5)
        
        setViewControllers([navHome, navExplore, camera, navNotifications, navProfile], animated: false)

    }
}
