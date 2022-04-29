//
//  ExtraIngredientsTable.swift
//  food-app
//
//  Created by Rza Ismayilov on 24.04.22.
//

import UIKit

class ExtraIngredientsTableView : UITableView {
    
    private let extraIngredients = [
        ExtraIngredient(name: "eggs", price: 4.20),
        ExtraIngredient(name: "spinach", price: 2.80),
        ExtraIngredient(name: "bread", price: 1.80),
        ExtraIngredient(name: "tomato", price: 2.10),
        ExtraIngredient(name: "cucumber", price: 1.60),
        ExtraIngredient(name: "olives", price: 3.50),
        ExtraIngredient(name: "pepper", price: 1.50),
        ExtraIngredient(name: "avocado", price: 5.40)
    ]
    
    private let EXTRA_INGREDIENT = "extra_ingredient"
    private let height = 72

    public func setupView() -> ExtraIngredientsTableView {
        
        self.dataSource = self
        self.delegate = self
        self.separatorStyle = .none
        self.alwaysBounceVertical = false
        self.backgroundColor = UIColor(hexaRGB: "#FCFCFC")
        
        self.register(ExtraIngredientsCell.self, forCellReuseIdentifier: EXTRA_INGREDIENT)

        return self
    }
    
    public func getHeight() -> Int {
        return  height * extraIngredients.count
    }
}

extension ExtraIngredientsTableView : UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return extraIngredients.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: EXTRA_INGREDIENT) as! ExtraIngredientsCell
        let info = extraIngredients[indexPath.row]
        cell.setupView(info: info)
        cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(height)
    }
}

struct ExtraIngredient {
    let name : String
    let price : Float
}
