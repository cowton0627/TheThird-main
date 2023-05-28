//
//  ViewController.swift
//  TheThird
//
//  Created by Chun-Li Cheng on 2021/11/19.
//

import UIKit

class ViewController: UIViewController {

    required init?(coder: NSCoder) {
        print("===> ViewController init")
        super.init(coder: coder)
    }
    
    deinit {
        print("ViewController deinit <===")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func unwindToVC(for unwindSegue: UIStoryboardSegue) {}
    
    @IBAction func toTheSecond(_ sender: Any) {
//        let sbd = UIStoryboard(name: "Main", bundle: nil)
//        let vc = sbd.instantiateViewController(withIdentifier: "\(SecondViewController.self)")
//        navigationController?.pushViewController(vc, animated: true)
//        show(vc, sender: nil)
        
//        present(vc, animated: true) {
//            print("Hello World!")
//        }
        
//        ChangeScene.to(selfVC: self, targetSbdName: "Main", targetVCname: "\(SecondViewController.self)")
        ChangeScene.to(selfVC: self, targetSbdName: "Sub", targetVCname: "\(ThirdViewController.self)")
//        ChangeScene.to(selfVC: self, targetSbdName: "Sub")
        
    }
    
}

