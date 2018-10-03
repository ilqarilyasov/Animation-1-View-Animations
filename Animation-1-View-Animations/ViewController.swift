//
//  ViewController.swift
//  Animation-1-View-Animations
//
//  Created by Ilgar Ilyasov on 10/2/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        let position = CGPoint(x: 0, y: 40)
        let shape = CGSize(width: 30, height: 30)
        let aFrame = CGRect(origin: position, size: shape)
        let aView = UIView(frame: aFrame)
        
        let position2 = CGPoint(x: 40, y: 40)
        let bFrame = CGRect(origin: position2, size: shape)
        let bView = UIView(frame: bFrame)
        
        let constraints1 = NSLayoutConstraint(item: aView,
                                             attribute: .leading,
                                             relatedBy: .equal,
                                             toItem: bView,
                                             attribute: .trailing,
                                             multiplier: 1.0,
                                             constant: 8.0)
        // This creates
        // aViewLeading = 1.0 * bviewTrailing + 10.0
        
        let constraints2 = NSLayoutConstraint(item: bView,
                                         attribute: .width,
                                         relatedBy: .equal,
                                         toItem: nil,
                                         attribute: .notAnAttribute,
                                         multiplier: 1.0,
                                         constant: 150)
        
        // This means
        // bViewWidth = 150
        
        NSLayoutConstraint.activate([constraints1, constraints2]) // This will automatically add constraints
    }



}

