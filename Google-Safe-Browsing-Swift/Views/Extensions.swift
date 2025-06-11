//
//  Extensions.swift
//  CodingTest
//
//  Created by HAU NGUYEN on 6/6/25.
//  Copyright © 2025 test. All rights reserved.
//

import UIKit

extension UIView {

    @IBInspectable var cornerRadiusV: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
            layer.masksToBounds = newValue > 0
        }
    }
    
    @IBInspectable var borderWidthV: CGFloat {
        get {
            return layer.borderWidth
        }
        set {
            layer.borderWidth = newValue
        }
    }
    
    @IBInspectable var borderColorV: UIColor? {
        get {
            return UIColor(cgColor: layer.borderColor!)
        }
        set {
            layer.borderColor = newValue?.cgColor
        }
    }
    
    @IBInspectable var cardStyleWithOffSet: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = 5.0
            layer.borderColor  =  UIColor.clear.cgColor
            layer.borderWidth = 5.0
            layer.shadowOpacity = 0.5
            layer.shadowColor =  UIColor.lightGray.cgColor
            layer.shadowRadius = 5.0
            layer.shadowOffset = CGSize(width: newValue, height: cardStyleWithOffSet)
            layer.masksToBounds = true
        }
    }
    
    @IBInspectable var lineGradients: Bool {
        get {
            return true
        }
        set {
            setNeedsLayout()
            let gradient = CAGradientLayer()
            gradient.frame = self.bounds
            gradient.startPoint = CGPoint(x:0.0, y:0.5)
            gradient.endPoint = CGPoint(x:1.0, y:0.5)
            gradient.colors = [UIColor.white.cgColor.copy(alpha: 0)!, UIColor.white.cgColor, UIColor.white.cgColor,  UIColor.white.cgColor.copy(alpha: 0)!]
            gradient.locations = [0.0, 0.4, 0.6, 1.0]
            self.layer.insertSublayer(gradient, at: 0)
        }
    }
    
    func gradients(colors: [UIColor]) {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = colors
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.frame = bounds
        layer.insertSublayer(gradientLayer, at:0)
    }
    
    func setGradients(colors: [UIColor]) {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = colors
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.frame = bounds
        layer.insertSublayer(gradientLayer, at:0)
    }
}
