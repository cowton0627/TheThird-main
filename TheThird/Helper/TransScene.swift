//
//  TransScene.swift
//  TheThird
//
//  Created by Chun-Li Cheng on 2021/11/21.
//

import Foundation
import UIKit

/// 轉場用
class TransScene {
    
    /// 轉場至 storyboard 特定 vc
    class func to(recentVC: UIViewController,
                  targetStoryboardName: UIStoryboard.BoardName,
                  targetVCName: String) {
        
        let storyboard = UIStoryboard(name: targetStoryboardName.rawValue,
                                      bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: targetVCName)
        
        if let navC = recentVC.navigationController {
            
            navC.pushViewController(vc, animated: true)

        } else {
            
            vc.modalPresentationStyle = .fullScreen
            recentVC.present(vc, animated: true, completion: nil)
        }
    }
    
    /// 轉場至 storyboard 第一個 vc
    class func to(recentVC: UIViewController,
                  targetStoryboardName: UIStoryboard.BoardName) {
        
        let storyboard = UIStoryboard(name: targetStoryboardName.rawValue,
                                      bundle: nil)
        guard let vc = storyboard.instantiateInitialViewController() else { return }
        
        if let navC = recentVC.navigationController {
            
            navC.pushViewController(vc, animated: true)
            
        } else {
            
            vc.modalPresentationStyle = .fullScreen
            recentVC.present(vc, animated: true, completion: nil)
        }
    }
    
    
    /// 加入動畫的轉場（未用上）
    class func addPresentAnimate_push (selfVC: UIViewController){
        let transition = CATransition()
        transition.duration = 0.5
        transition.type = CATransitionType.push
        transition.subtype = CATransitionSubtype.fromRight
        transition.timingFunction =
        CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
        selfVC.view.window?.layer.add(transition, forKey: kCATransition)
    }
    
    
    
}
