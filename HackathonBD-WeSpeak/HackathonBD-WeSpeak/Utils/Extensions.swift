//
//  Extensions.swift
//  HackathonBD-WeSpeak
//
//  Created by Quoc Huy Ngo on 11/20/17.
//  Copyright © 2017 Huy Ngo. All rights reserved.
//

import UIKit

extension UIColor {
    class func mainColor() -> UIColor {
        return UIColor(colorLiteralRed: 4/255, green: 217/255, blue: 217/255, alpha: 1)
    }
}

extension UIView {
    func make(cornerRadius: CGFloat = 0, boderWidth: CGFloat = 0, boderColor: UIColor = .clear) {
        layer.cornerRadius = cornerRadius
        layer.borderWidth = boderWidth
        layer.borderColor = boderColor.cgColor
    }
    
    func make(shadowRadius:CGFloat = 6.0, opacity:Float = 0.4, color:UIColor = UIColor.black) {
        layer.shadowColor = color.cgColor
        layer.shadowOpacity = opacity
        layer.shadowRadius = shadowRadius
    }
}
