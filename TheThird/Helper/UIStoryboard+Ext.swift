//
//  UIStoryboard+Ext.swift
//  TheThird
//
//  Created by Chun-Li Cheng on 2023/5/28.
//

import UIKit

extension UIStoryboard {
    
    enum BoardName: String {
        case main = "Main"
        case sub = "Sub"
    }
    
    convenience init(name: BoardName,
                     bundle: Bundle = Bundle.main) {
        self.init(name: name.rawValue, bundle: bundle)
    }
}

