//
//  BottomViewCell.swift
//  food-app
//
//  Created by Rza Ismayilov on 25.04.22.
//

import UIKit
import SnapKit

class BottomView : UIView {
    
    private lazy var titleLabel : UILabel = {
        let label = UILabel()
        
        label.text = "Add a request"
        label.textColor = UIColor(hexaRGB: "#666687")
        label.font = UIFont.SemiBold(size: 18)
        
        self.addSubview(label)
        return label
    }()
    
    private lazy var textBox : UITextField = {
        let field = UITextField()
        
        field.layer.borderColor = UIColor(hexaRGB: "#E4E4E4")?.cgColor
        field.layer.borderWidth = 1
        field.layer.cornerRadius = 16
        field.placeholder = "   Ex: Don’t add onion"
        field.font = UIFont.SemiBold(size: 15)
        field.contentVerticalAlignment = .top
        
        self.addSubview(field)
        return field
    }()
    
    private func setupView() {
        
        self.backgroundColor = UIColor(hexaRGB: "#FCFCFC")
        
        titleLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(16)
            make.left.equalToSuperview().offset(16)
            make.bottom.equalTo(textBox.snp.top).offset(-16)
        }

        textBox.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp.bottom).offset(16)
            make.left.equalToSuperview().offset(16)
            make.right.equalToSuperview().offset(-16)
            make.bottom.equalToSuperview().offset(-16)
            make.height.equalTo(100)
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }

}
