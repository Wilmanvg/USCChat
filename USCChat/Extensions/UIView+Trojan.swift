//
//  UIView+Trojan.swift
//  USCChat
//
//  Created by Wilman Garcia on 6/20/19.
//  Copyright © 2019 Wilman Garcia. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    
    func setGradientBackground(leftColor: UIColor, rightColor: UIColor){
        
        // Create instance of CAGradientLayer
        let gradientLayer = CAGradientLayer()
        
        // Set the layer dimensions to the size of the UIView
        gradientLayer.frame = bounds
        gradientLayer.colors = [leftColor.cgColor, rightColor.cgColor]
        
        // Break point where colors mix
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.5)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 0.5)
        gradientLayer.cornerRadius = 25.0
        
        layer.insertSublayer(gradientLayer, at: 0)
    }
}
