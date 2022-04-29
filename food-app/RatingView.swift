//
//  RatingView.swift
//  food-app
//
//  Created by Rza Ismayilov on 24.04.22.
//

import UIKit

class RatingView: UIView {
    
    private lazy var starImage : UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "star.fill")?.withTintColor(UIColor(hexaRGB: "#FFB01D")!, renderingMode: .alwaysOriginal)
        self.addSubview(imageView)
        return imageView
    }()
    
    private lazy var ratingLabel : UILabel = {
        let label = UILabel()
        label.textColor = UIColor(hexaRGB: "#8E8EA9")
        label.font = UIFont.SemiBold(size: 16)
        self.addSubview(label)
        return label
    }()

    public func setupView(rating: Float) -> RatingView {
        ratingLabel.text = "\(rating)"
                
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor.systemGray5.cgColor
        self.layer.cornerRadius = 16
        
        starImage.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(8)
            make.left.equalToSuperview().offset(12)
            make.centerY.equalToSuperview()
            make.width.height.equalTo(16)
        }
        
        ratingLabel.snp.makeConstraints { make in
            make.left.equalTo(starImage.snp.right).offset(8)
            make.right.equalToSuperview().offset(-12)
            make.centerY.equalToSuperview()
        }
        
        return self
    }

}
