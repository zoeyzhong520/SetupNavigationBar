//
//  ViewController.swift
//  导航栏设置
//
//  Created by ZZJ on 2018/7/5.
//  Copyright © 2018年 ZZJ. All rights reserved.
//

import UIKit

class ViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.title = "首页"
        
        let btn = UIButton(type: .system)
        btn.frame = CGRect(x: 0, y: StatusBarHeight+NavigationBarHeight*2, width: ScreenWidth, height: 30)
        btn.setTitle("点击跳转", for: .normal)
        btn.addTarget(self, action: #selector(clickAction), for: .touchUpInside)
        self.view.addSubview(btn)
    }

    @objc func clickAction() {
        self.navigationController?.pushViewController(FirstViewController(), animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

