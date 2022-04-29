//
//  TopView.swift
//  food-app
//
//  Created by Rza Ismayilov on 24.04.22.
//

import UIKit
import SnapKit

class TopView: UIView {
    
    private lazy var foodImageView : UIImageView = {
        let view = UIImageView()
        
        view.image = UIImage(named: "avocado-sandwich")
        view.layer.cornerRadius = 85
        view.clipsToBounds = true
        
        self.addSubview(view)
        return view
    }()
    
    private lazy var ratingView : RatingView = {
        let view = RatingView().setupView(rating: 4.5)
        
        self.addSubview(view)
        return view
    }()
    
    private lazy var nameLabel : UILabel = {
        let label = UILabel()
        
        label.text = "Avocado and Egg Toast"
        label.numberOfLines = 0
        label.textColor = UIColor(hexaRGB: "#32324D")
        label.font = UIFont.Bold(size: 20)
        
        self.addSubview(label)
        return label
    }()
    
    private lazy var priceLabel : PriceLabel = {
        let label = PriceLabel()
        
        label.setupView(price: 10.0, fontSize: 24)

        self.addSubview(label)
        return label
    }()
    
    private lazy var descriptionLabel : UILabel = {
        let label = UILabel()
        
        label.text = "You won't skip the most important meal of the day with this avocado toast recipe. Crispy, lacy eggs and creamy avocado top hot buttered toast."
        label.numberOfLines = 0
        label.textColor = UIColor(hexaRGB: "#8E8EA9")
        label.font = UIFont.Medium(size: 15)
        
        self.addSubview(label)
        return label
    }()
    
    private lazy var foodContentView : FoodContentView = {
        let view = FoodContentView().setupView()
        self.addSubview(view)
        return view
    }()
    
    private lazy var ingredientsLabel : UILabel = {
        let label = UILabel()
        
        label.text = "Ingredients"
        label.textColor = UIColor(hexaRGB: "#666687")
        label.font = UIFont.SemiBold(size: 18)
        
        self.addSubview(label)
        return label
    }()
    
    private lazy var ingredientsCollectionView : IngredientsCollectionView = {
        let flowLayout : UICollectionViewFlowLayout = {
            let layout = UICollectionViewFlowLayout()
            layout.scrollDirection = .horizontal
            return layout
        }()

        let collectionView = IngredientsCollectionView(frame: .zero, collectionViewLayout: flowLayout).setupView()

        self.addSubview(collectionView)
        return collectionView
    }()
    
    private lazy var toppingLabel : UILabel = {
        let label = UILabel()
        
        label.text = "Add toppings"
        label.textColor = UIColor(hexaRGB: "#666687")
        label.font = UIFont.SemiBold(size: 18)
        
        self.addSubview(label)
        return label
    }()

    private func setupView() {
        
        self.backgroundColor = UIColor(hexaRGB: "#FCFCFC")

        foodImageView.snp.makeConstraints { make in
            make.top.equalTo(ratingView.snp.bottom).offset(16)
            make.centerX.equalToSuperview()
            make.left.greaterThanOrEqualTo(self.snp.left)
            make.width.height.equalTo(170)
        }
        
        ratingView.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(16)
            make.right.equalToSuperview().offset(-16)
        }
        
        nameLabel.snp.makeConstraints { make in
            make.top.equalTo(foodImageView.snp.bottom).offset(32)
            make.left.equalToSuperview().offset(16)
            make.right.equalTo(self.snp.centerX).offset(-8)
            make.bottom.equalTo(descriptionLabel.snp.top).offset(-16)
        }
        
        priceLabel.snp.makeConstraints { make in
            make.top.equalTo(foodImageView.snp.bottom).offset(32)
            make.left.equalTo(self.snp.centerX).offset(8)
            make.right.equalToSuperview().offset(-16)
            make.bottom.equalTo(descriptionLabel.snp.top).offset(-16)
        }
        
        descriptionLabel.snp.makeConstraints { make in
            make.top.equalTo(nameLabel.snp.bottom).offset(16)
            make.left.equalToSuperview().offset(16)
            make.right.equalToSuperview().offset(-16)
        }
        
        foodContentView.snp.makeConstraints { make in
            make.top.equalTo(descriptionLabel.snp.bottom).offset(16)
            make.left.equalToSuperview().offset(16)
            make.right.equalToSuperview().offset(-16)
        }
        
        ingredientsLabel.snp.makeConstraints { make in
            make.top.equalTo(foodContentView.snp.bottom).offset(16)
            make.left.equalToSuperview().offset(16)
            make.right.equalToSuperview().offset(-16)
//            make.bottom.equalTo(ingredientsCollectionView.snp.top).offset(-16)
        }
        
        ingredientsCollectionView.snp.makeConstraints { make in
            make.top.equalTo(ingredientsLabel.snp.bottom).offset(16)
            make.left.equalToSuperview().offset(16)
            make.right.equalToSuperview().offset(-16)
            make.height.equalTo(ingredientsCollectionView.getSize())
//            make.bottom.equalToSuperview().offset(-16)
        }
                
        toppingLabel.snp.makeConstraints { make in
            make.top.equalTo(ingredientsCollectionView.snp.bottom).offset(16)
            make.left.equalToSuperview().offset(16)
            make.right.equalToSuperview().offset(-16)
            make.bottom.equalToSuperview().offset(-16)
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
