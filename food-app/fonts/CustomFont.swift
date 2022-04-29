//
//  CustomFont.swift
//  food-app
//
//  Created by Rza Ismayilov on 26.04.22.
//

import UIKit

extension UIFont {

    static func Bold(size: CGFloat) -> UIFont {
        return UIFont(name: "Mulish-Bold", size: size)!
    }
    
    static func ExtraBold(size: CGFloat) -> UIFont {
        return UIFont(name: "Mulish-ExtraBold", size: size)!
    }
    
    static func Medium(size: CGFloat) -> UIFont {
        return UIFont(name: "Mulish-Medium", size: size)!
    }
    
    static func SemiBold(size: CGFloat) -> UIFont {
        return UIFont(name: "Mulish-SemiBold", size: size)!
    }
}
