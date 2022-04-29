//
//  ViewController.swift
//  food-app
//
//  Created by Rza Ismayilov on 24.04.22.
//

import UIKit

class ViewController: UIViewController {
    
    
//    private lazy var mainTableView: ExtraIngredientsTableView = {
//        let table = ExtraIngredientsTableView().setupView()
//        self.view.addSubview(table)
//        return table
//    }()
    
    private lazy var mainScrollView : MainScrollView = {
        let view = MainScrollView().setupView()
        self.view.addSubview(view)
        return view
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor(hexaRGB: "#FCFCFC")

//        mainTableView.snp.makeConstraints { make in
//            make.top.equalTo(self.view.safeAreaLayoutGuide.snp.top).offset(8)
//            make.left.equalTo(self.view.safeAreaLayoutGuide.snp.left).offset(8)
//            make.right.equalTo(self.view.safeAreaLayoutGuide.snp.right).offset(-8)
//            make.bottom.equalTo(self.view.safeAreaLayoutGuide.snp.bottom).offset(-8)
//        }
        
        mainScrollView.snp.makeConstraints { make in
            make.top.equalTo(self.view.safeAreaLayoutGuide.snp.top)
            make.left.equalTo(self.view.safeAreaLayoutGuide.snp.left)
            make.right.equalTo(self.view.safeAreaLayoutGuide.snp.right)
            make.bottom.equalTo(self.view.safeAreaLayoutGuide.snp.bottom)
        }

    }


}
