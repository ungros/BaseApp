//
//  BaseView.swift
//  BaseApp
//
//  Created by Roman on 22.04.2024.
//

import UIKit

open class BaseView: UIView {
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required public init?(coder: NSCoder) {
        super.init(frame: .zero)
        fatalError("init(coder:) has not been implemented")
    }
}

extension BaseView {
    
    @objc func setup(){
    }
}
