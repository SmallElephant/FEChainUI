//
//  ViewController.swift
//  FEChainUI-Swift
//
//  Created by FlyElephant on 17/2/17.
//  Copyright © 2017年 FlyElephant. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let view:UIView = UIView(frame: CGRect(x: 100, y: 200, width: 100, height: 100)).bgColor(color: UIColor.red).borderColor(color: UIColor.gray).borderWidth(width: 5.0)
        self.view.addSubview(view)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

