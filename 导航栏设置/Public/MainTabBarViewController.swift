//
//  MainTabBarViewController.swift
//  导航栏设置
//
//  Created by ZZJ on 2018/7/5.
//  Copyright © 2018年 ZZJ. All rights reserved.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.createTabBarController()
    }
    
    func createTabBarController() {
        
        let homeVC = HomeViewController()
        homeVC.title = "首页"
        homeVC.tabBarItem.title = "首页"
        homeVC.tabBarItem.image = UIImage(named: "home")?.withRenderingMode(.alwaysTemplate)
        homeVC.tabBarItem.selectedImage = UIImage(named: "home_selected")?.withRenderingMode(.alwaysTemplate)
        let homeNavVC = UINavigationController.init(rootViewController: homeVC)
        
        let recommendVC = RecommendViewController()
        recommendVC.title = "推荐"
        recommendVC.tabBarItem.title = "推荐"
        recommendVC.tabBarItem.image = UIImage(named: "buyCar")?.withRenderingMode(.alwaysTemplate)
        recommendVC.tabBarItem.selectedImage = UIImage(named: "buyCar_selected")?.withRenderingMode(.alwaysTemplate)
        let recommendNavVC = UINavigationController.init(rootViewController: recommendVC)
        
        let informationVC = InformationViewController()
        informationVC.title = "资讯"
        informationVC.tabBarItem.title = "资讯"
        informationVC.tabBarItem.image = UIImage(named: "sellCar")?.withRenderingMode(.alwaysTemplate)
        informationVC.tabBarItem.selectedImage = UIImage(named: "sellCar_selected")?.withRenderingMode(.alwaysTemplate)
        let informationNavVC = UINavigationController.init(rootViewController: informationVC)
        
        let mineVC = MineViewController()
        mineVC.title = "我的"
        mineVC.tabBarItem.title = "我的"
        mineVC.tabBarItem.image = UIImage(named: "mine")?.withRenderingMode(.alwaysTemplate)
        mineVC.tabBarItem.selectedImage = UIImage(named: "mine_selected")?.withRenderingMode(.alwaysTemplate)
        let mineNavVC = UINavigationController.init(rootViewController: mineVC)
        
        self.tabBar.tintColor = .orange
        self.viewControllers = [homeNavVC, recommendNavVC, informationNavVC, mineNavVC]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
