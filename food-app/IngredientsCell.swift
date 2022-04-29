//
//  IngredientsCell.swift
//  food-app
//
//  Created by Rza Ismayilov on 25.04.22.
//

import UIKit
import SnapKit

class IngredientsCell: UICollectionViewCell {
    
    private lazy var nameLabel : UILabel = {
        let label = UILabel()
        
        label.textColor = UIColor(hexaRGB: "#8E8EA9")
        label.font = UIFont.Medium(size: 15)
        
        self.contentView.addSubview(label)
        return label
    }()
    
    private lazy var emojiLabel : UILabel = {
        let label = UILabel()
        
        label.font = UIFont.Medium(size: 18)
        
        self.contentView.addSubview(label)
        return label
    }()
    
    public func setupView(ingredient : Ingredient) {
        
        self.backgroundColor = .white
        
        self.layer.borderColor = UIColor(hexaRGB: "#F7F7F7")?.cgColor
        self.layer.borderWidth = 1
        self.layer.cornerRadius = 16

        
        nameLabel.text = ingredient.name
        emojiLabel.text = ingredient.emoji
        
        nameLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview().offset(24)
        }
        
        emojiLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.bottom.equalTo(nameLabel.snp.top).offset(-16)
        }
        
    }
}
