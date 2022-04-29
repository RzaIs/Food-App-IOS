//
//  IngredientsCollectionView.swift
//  food-app
//
//  Created by Rza Ismayilov on 25.04.22.
//

import UIKit
import SnapKit

class IngredientsCollectionView: UICollectionView {
    
    private var ingredients = [
        Ingredient(name: "Egg", emoji: "🥚"),
        Ingredient(name: "Avocado", emoji: "🥑"),
        Ingredient(name: "Spinach", emoji: "🥬"),
        Ingredient(name: "Tomato", emoji: "🍅"),
        Ingredient(name: "Cucumber", emoji: "🥒"),
        Ingredient(name: "Olives", emoji: "🫒"),
        Ingredient(name: "Pepper", emoji: "🌶")
    ]
    
    private var INGREDIENTS_CELL = "ingredients_cell"
    private var size = 96

    public func setupView() -> IngredientsCollectionView {
                
        self.dataSource = self
        self.delegate = self

        self.register(IngredientsCell.self, forCellWithReuseIdentifier: INGREDIENTS_CELL)
        
        return self
    }
    
    public func getSize() -> Int {
        return size
    }
}

extension IngredientsCollectionView : UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return ingredients.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: INGREDIENTS_CELL, for: indexPath) as! IngredientsCell
        let ingredient = ingredients[indexPath.row]
        cell.setupView(ingredient: ingredient)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: size, height: size)
    }
}

struct Ingredient {
    var name : String
    var emoji : String
}
