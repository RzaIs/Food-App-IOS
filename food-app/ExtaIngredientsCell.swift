//
//  ExtraIngredientsCell.swift
//  food-app
//
//  Created by Rza Ismayilov on 24.04.22.
//

import UIKit
import SnapKit

class ExtraIngredientsCell: UITableViewCell {
    
    private var state : Bool = false
    
    private var view : UIView = UIView()
    
    private var offImage : UIImage? = {
        let image = UIImage(systemName: "square")?.withTintColor(UIColor(hexaRGB: "#C0C0CF")!, renderingMode: .alwaysOriginal)
        return image
    }()
    
    private var onImage : UIImage? = {
        let image = UIImage(systemName: "checkmark.square.fill")?.withTintColor(UIColor(hexaRGB: "#FF7B2C")!, renderingMode: .alwaysOriginal)
        return image
    }()
    
    private lazy var checkBoxView: UIImageView = {
        let view = UIImageView()
        view.image = offImage
        self.view.addSubview(view)
        return view
    }()

    private lazy var nameLabel : UILabel = {
        let label = UILabel()
        
        label.textColor = UIColor(hexaRGB: "#666687")
        label.font = UIFont.Medium(size: 15)
        
        self.view.addSubview(label)
        return label
    }()
    
    private lazy var priceLabel : PriceLabel = {
        let label = PriceLabel()
        self.view.addSubview(label)
        return label
    }()
    
    public func setupView(info: ExtraIngredient) {

        self.contentView.addSubview(view)
        self.contentView.backgroundColor = UIColor(hexaRGB: "#FCFCFC")
        
        self.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(switchState)))
        
        self.view.layer.borderWidth = 1
        self.view.layer.borderColor = UIColor(hexaRGB: "#F7F7F7")?.cgColor
        self.view.layer.cornerRadius = 16
        self.view.backgroundColor = .white
        
        nameLabel.text = "Extra \(info.name)"
        priceLabel.setupView(price: info.price, fontSize: 16)
        
        view.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(8)
            make.left.equalToSuperview().offset(8)
            make.right.equalToSuperview().offset(-8)
            make.bottom.equalToSuperview().offset(-8)
        }
               
        checkBoxView.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(16)
            make.centerY.equalToSuperview()
            make.width.height.equalTo(32)
        }
    
        nameLabel.snp.makeConstraints { make in
            make.left.equalTo(checkBoxView.snp.right).offset(16)
            make.right.lessThanOrEqualTo(priceLabel.snp.left).offset(-16)
            make.centerY.equalToSuperview()
        }
        
        priceLabel.snp.makeConstraints { make in
            make.right.equalToSuperview().offset(-16)
            make.centerY.equalToSuperview()
        }
    }
    
    @objc func switchState() {
        if (state) {
            state = false
            self.checkBoxView.image = offImage
        } else {
            state = true
            self.checkBoxView.image = onImage
        }
    }
}
