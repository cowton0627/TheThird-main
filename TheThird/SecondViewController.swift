//
//  SecondViewController.swift
//  TheThird
//
//  Created by Chun-Li Cheng on 2021/11/19.
//

import UIKit

class SecondViewController: UIViewController {
    
    required init?(coder: NSCoder) {
        print("===> SecondViewController init")
        super.init(coder: coder)
    }
    
    deinit {
        print("SecondViewController deinit <===")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

}
