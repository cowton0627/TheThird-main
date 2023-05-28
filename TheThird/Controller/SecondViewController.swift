//
//  SecondViewController.swift
//  TheThird
//
//  Created by Chun-Li Cheng on 2021/11/19.
//

import UIKit

class SecondViewController: UIViewController {
    
    required init?(coder: NSCoder) {
        print("===> SecondVC init")
        super.init(coder: coder)
    }
    
    deinit {
        print("SecondVC deinit <===")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

}
