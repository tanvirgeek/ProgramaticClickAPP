//
//  ViewController.swift
//  ClickButton
//
//  Created by MD Tanvir Alam on 4/9/20.
//  Copyright © 2020 MD Tanvir Alam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0
    var label:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //label
        let label = UILabel()
        label.frame = CGRect(x: 150, y: 150, width: 60, height: 60)
        label.text = "0"
        self.label = label
        view.addSubview(label)
        
        //button
        let button = UIButton()
        button.frame = CGRect(x: 150, y: 300, width: 160, height: 60)
        button.setTitle("Click ME", for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        view.addSubview(button)
        
        button.addTarget(self, action: #selector(ViewController.incrementCount), for: UIControl.Event.touchUpInside)
    }
    
    @objc func incrementCount(){
        self.count += 1
        self.label.text = "\(self.count)"
    }


}

