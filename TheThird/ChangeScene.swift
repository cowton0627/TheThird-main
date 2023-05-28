//
//  ChangeScene.swift
//  TheThird
//
//  Created by Chun-Li Cheng on 2021/11/21.
//

import Foundation
import UIKit

class ChangeScene {
    
//navigationController: UINavigationController
    // 以NavigationController或自己present轉場, 轉到某個storyboard中的某個VC
    class func to(selfVC: UIViewController, targetSbdName: String, targetVCname: String) {
        let sbd = UIStoryboard(name: targetSbdName, bundle: nil)
        let vc = sbd.instantiateViewController(withIdentifier: targetVCname)
        if let navC = selfVC.navigationController {
            navC.pushViewController(vc, animated: true)
        } else {
            selfVC.present(vc, animated: true, completion: nil)
//            selfVC.show(vc, sender: nil)
        }
    }
    
    // 以NavigationController或自己present, 轉到某個storyboard中的initialVC
    class func to(selfVC: UIViewController, targetSbdName: String) {
        let storyboard = UIStoryboard(name: targetSbdName, bundle: nil)
        guard let vc = storyboard.instantiateInitialViewController() else { return }
        if let navC = selfVC.navigationController {
            navC.pushViewController(vc, animated: true)
        } else {
            selfVC.present(vc, animated: true, completion: nil)
        }
        
    }
    

    
    
    
    
    
    
    
    
    class func addPresentAnim_push (selfVC: UIViewController){
        let transition = CATransition()
        transition.duration = 0.5
        transition.type = CATransitionType.push
        transition.subtype = CATransitionSubtype.fromRight
        transition.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
        selfVC.view.window?.layer.add(transition, forKey: kCATransition)
    }
    
    
    
}
