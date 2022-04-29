//
//  PriceLabel.swift
//  food-app
//
//  Created by Rza Ismayilov on 24.04.22.
//

import UIKit

class PriceLabel: UILabel {

    public func setupView(price: Float, fontSize : CGFloat) {
        self.textAlignment = .right
        self.textColor = UIColor(hexaRGB: "#FF7B2C")
        let regularFont = UIFont.ExtraBold(size: fontSize)
        let superFont = UIFont.Bold(size: fontSize * 0.6)
        let priceText = NSMutableAttributedString(string: "$\(price)", attributes: [.font : regularFont])
        priceText.setAttributes([.font : superFont, .baselineOffset: 6], range: NSRange(location: 0, length: 1))
        self.attributedText = priceText
    }

}
