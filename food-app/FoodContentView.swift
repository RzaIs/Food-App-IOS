//
//  FoodContentView.swift
//  food-app
//
//  Created by Rza Ismayilov on 25.04.22.
//

import UIKit

class FoodContentView: UIStackView {
    
    private var contents = [
        Content(name: "kcal", amount: 400),
        Content(name: "grams", amount: 510),
        Content(name: "proteins", amount: 30),
        Content(name: "carbs", amount: 56),
        Content(name: "fats", amount: 24)
    ]

   
    public func setupView() -> FoodContentView {
        
        self.distribution = .equalCentering
        self.axis = .horizontal
        
        self.layer.cornerRadius = 16
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor(hexaRGB: "#F7F7F7")?.cgColor
        self.backgroundColor = .white
        
        contents.forEach { content in
            self.addArrangedSubview(generateContent(content: content))
        }
        
        return self
    }
    
    private func generateContent(content : Content) -> UIView {
        let view = UIView()

        let amountLabel : UILabel = {
            let label = UILabel()

            label.text = "\(content.amount)"
            label.textColor = UIColor(hexaRGB: "#3A2D78")
            label.font = UIFont.SemiBold(size: 15)
            label.textAlignment = .center

            view.addSubview(label)
            return label
        }()
            
        let nameLabel : UILabel = {
            let label = UILabel()
            
            label.text = "\(content.name)"
            label.textColor = UIColor(hexaRGB: "#8E8EA9")
            label.font = UIFont.SemiBold(size: 12)
            label.textAlignment = .center
            
            view.addSubview(label)
            return label
        }()
        
        amountLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(16)
            make.left.equalToSuperview().offset(16)
            make.right.equalToSuperview().offset(-16)
        }
        
        nameLabel.snp.makeConstraints { make in
            make.top.equalTo(amountLabel.snp.bottom).offset(16)
            make.left.equalToSuperview().offset(16)
            make.right.equalToSuperview().offset(-16)
            make.bottom.equalToSuperview().offset(-16)
        }

        
        return view
    }
}

struct Content {
    var name : String
    var amount : Int
}
