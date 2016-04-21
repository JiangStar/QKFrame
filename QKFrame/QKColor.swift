//
//  QKColor.swift
//  QKFrame
//
//  Created by Jiang, Xinxing on 16/4/20.
//  Copyright © 2016年 Jiang, Star. All rights reserved.
//

import UIKit

class QKColor: UIColor {
    /// blue: Hex: 0080FD Alpha:0.95
    class func lightBlueColor() -> UIColor {
        return makeColorWithHexString("0080FD", alpha: 0.95)
    }
    
    /// make color with hex string and alpha.
    class func makeColorWithHexString (hex: String, alpha: Float) -> UIColor {
        let cString:String = hex.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet() as NSCharacterSet).uppercaseString
        
        if(cString.characters.count != 6) {
            return UIColor.clearColor()
        }
        
        var rgbValue:UInt32 = 0
        NSScanner(string: cString).scanHexInt(&rgbValue)
        
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(alpha)
        )
        
    }
}