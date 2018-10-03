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
        let (w, h) = (view.frame.size.width, view.frame.size.height)
        let (ww, hh) = (w * 0.6, h * 0.6)
        
        let aView = UIView(frame: CGRect(x: (w - ww)/2, y: (h - hh)/2, width: ww, height: hh))
        (view.backgroundColor, aView.backgroundColor) = (.white, .green)
        view.addSubview(aView)
        
//        UIView.animate(withDuration: 3.0) {
//            //aView.backgroundColor = .red
//            //aView.transform = CGAffineTransform(scaleX: 0.5, y: 0.5)
//            //aView.transform = CGAffineTransform(rotationAngle: CGFloat.pi/2) // pi 180 degree
//            aView.transform = CGAffineTransform(rotationAngle: CGFloat.pi).concatenating(CGAffineTransform(scaleX: 0.5, y: 0.5))
//            aView.backgroundColor = .red
//        }
        UIView.animate(withDuration: 3.0, animations: {
            aView.transform = CGAffineTransform(rotationAngle: CGFloat.pi).concatenating(CGAffineTransform(scaleX: 0.5, y: 0.5))
            aView.backgroundColor = .red
        }, completion: { _ in UIView.animate(withDuration: 3.0, animations: {
            aView.transform = .identity
            aView.backgroundColor = .green
        })})
        
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        /// LEARNING PURPOSE
//        let position = CGPoint(x: 0, y: 40)
//        let shape = CGSize(width: 30, height: 30)
//        let aFrame = CGRect(origin: position, size: shape)
//        let aView = UIView(frame: aFrame)
//
//        let position2 = CGPoint(x: 40, y: 40)
//        let bFrame = CGRect(origin: position2, size: shape)
//        let bView = UIView(frame: bFrame)
//        view.addSubview(aView)
//
//        let constraints1 = NSLayoutConstraint(item: aView,
//                                             attribute: .leading,
//                                             relatedBy: .equal,
//                                             toItem: bView,
//                                             attribute: .trailing,
//                                             multiplier: 1.0,
//                                             constant: 8.0)
//        // This creates
//        // aViewLeading = 1.0 * bviewTrailing + 10.0
//
//        let constraints2 = NSLayoutConstraint(item: bView,
//                                         attribute: .width,
//                                         relatedBy: .equal,
//                                         toItem: nil,
//                                         attribute: .notAnAttribute,
//                                         multiplier: 1.0,
//                                         constant: 150)
//
//        // This means
//        // bViewWidth = 150
//
//        NSLayoutConstraint.activate([constraints1, constraints2]) // This will automatically add constraints
    }



}

