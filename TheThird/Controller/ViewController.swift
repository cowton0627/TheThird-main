//
//  ViewController.swift
//  TheThird
//
//  Created by Chun-Li Cheng on 2021/11/19.
//

import UIKit

class ViewController: UIViewController {

    required init?(coder: NSCoder) {
        print("===> VC init")
        super.init(coder: coder)
    }
    
    deinit {
        print("VC deinit <===")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    /// 讓最後一頁可跳轉回來
    @IBAction func unwindVC(for unwindSegue: UIStoryboardSegue) { }
    
    /// 按下按鈕轉場
    @IBAction func transTo(_ sender: UIButton) {
        TransScene.to(recentVC: self,
                      targetStoryboardName: .sub,
                      targetVCName: "\(ThirdViewController.self)")
        
//        TransScene.to(recentVC: self, targetStoryboardName: .sub)
        
    }
    
    
    
}

