//
//  MainScrollView.swift
//  food-app
//
//  Created by Rza Ismayilov on 26.04.22.
//

import UIKit
import SnapKit

class MainScrollView: UIScrollView {

    private lazy var stackView : UIStackView = {
        let view = UIStackView()
        
        view.axis = .vertical
        view.distribution = .equalSpacing
//        view.spacing = 16
        
        self.addSubview(view)
        return view
    }()
    
    
    private lazy var topView : TopView = TopView()
    
    private lazy var extraIngredientsTableView : ExtraIngredientsTableView = {
        let view = ExtraIngredientsTableView().setupView()
        view.backgroundColor = .red
        return view
    }()
    
    private lazy var bottomView : BottomView = BottomView()
    
    public func setupView() -> MainScrollView {
                
        stackView.snp.makeConstraints { make in
            make.top.equalTo(self.contentLayoutGuide.snp.top).offset(16)
            make.left.equalTo(self.contentLayoutGuide.snp.left).offset(16)
            make.right.equalTo(self.contentLayoutGuide.snp.right).offset(-16)
            make.bottom.equalTo(self.contentLayoutGuide.snp.bottom).offset(-16)
            make.centerX.equalTo(self.snp.centerX)
        }
        
        self.stackView.addArrangedSubview(topView)
        
        self.stackView.addArrangedSubview(extraIngredientsTableView)
        extraIngredientsTableView.snp.makeConstraints { make in
            make.height.equalTo(extraIngredientsTableView.getHeight())
        }
        
        self.stackView.addArrangedSubview(bottomView)
        
        
        return self
    }

}
