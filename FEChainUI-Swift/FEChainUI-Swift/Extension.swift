//
//  Extension.swift
//  FEChainUI-Swift
//
//  Created by keso on 2017/4/23.
//  Copyright © 2017年 FlyElephant. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    
    func bgColor(color:UIColor) -> UIView {
        self.backgroundColor = color
        return self
    }
    
    func borderColor(color:UIColor) -> UIView {
        self.layer.borderColor = color.cgColor
        self.layer.masksToBounds = true
        return self
    }
    
    func borderWidth(width:Float) -> UIView {
        self.layer.borderWidth = CGFloat(width)
        return self
    }
    
}
