//
//  BaseViewController.swift
//  导航栏设置
//
//  Created by ZZJ on 2018/7/5.
//  Copyright © 2018年 ZZJ. All rights reserved.
//

import UIKit

public let ScreenWidth = UIScreen.main.bounds.size.width
public let ScreenHeight = UIScreen.main.bounds.size.height
public let StatusBarHeight = UIApplication.shared.statusBarFrame.height
public let NavigationBarHeight:CGFloat = 44.0

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.view.backgroundColor = .white
        
        // 设置透明，默认为NO控制器中y=0实际效果上=64，设置为YES时控制器中y=0实际效果上y=0
        self.navigationController?.navigationBar.isTranslucent = false
        
        //字体颜色
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedStringKey.font:UIFont.systemFont(ofSize: 17), NSAttributedStringKey.foregroundColor:UIColor.white]
        
        //背景颜色
        self.navigationController?.navigationBar.barTintColor = .orange
        
        //状态栏背景颜色
        UIApplication.shared.statusBarStyle = .lightContent
        
        //修改返回按钮颜色
        self.navigationController?.navigationBar.tintColor = .white
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
