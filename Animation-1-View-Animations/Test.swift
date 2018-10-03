//
//  Test.swift
//  Animation-1-View-Animations
//
//  Created by Ilgar Ilyasov on 10/2/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class Test: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func draw(_ rect: CGRect) {
        
//        let context = UIGraphicsGetCurrentContext()
//        context?.setLineWidth(3.0)
//        context?.setStrokeColor(UIColor.black.cgColor)
//
//        context?.addRect(aFrame)
//        context?.strokePath()
        
        let view = UIView(frame: .zero)

        let position = CGPoint(x: 10, y: 40)
        let shape = CGSize(width: 200, height: 200)
        let aFrame = CGRect(origin: position, size: shape)
        
        let aView = UIView(frame: aFrame)
        aView.backgroundColor = .green
        view.addSubview(aView)

        
        
        
        
        
    }

}
