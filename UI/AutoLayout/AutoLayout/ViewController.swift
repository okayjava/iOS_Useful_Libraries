//
//  ViewController.swift
//  AutoLayout
//
//  Created by Jaehoon Lee on 2018. 6. 13..
//  Copyright © 2018년 Jaehoon Lee. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let label = UILabel()
        label.text = "Hello World"
        self.view.addSubview(label)
        
//        label.snp.makeConstraints { (make) in
//            make.width.equalTo(100)
//            make.height.equalTo(50)
//            make.center.equalTo(self.view.center)
//        }
        
        label.translatesAutoresizingMaskIntoConstraints = false
        let centerXConstraint = NSLayoutConstraint(item: label, attribute: .centerX, relatedBy: .equal, toItem: label.superview, attribute: .centerX, multiplier: 1.0, constant: 0)
        let centerYConstraint = NSLayoutConstraint(item: label, attribute: .centerY, relatedBy: .equal, toItem: label.superview, attribute: .centerY, multiplier: 1.0, constant: 0)
        self.view.addConstraints([centerXConstraint, centerYConstraint])

        let widthConstraint = NSLayoutConstraint(item: label, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 100)
        let heightConstraint = NSLayoutConstraint(item: label, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 50)
        label.addConstraints([widthConstraint, heightConstraint])

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

