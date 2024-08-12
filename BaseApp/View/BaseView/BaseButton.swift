//
//  BaseButton.swift
//  BaseApp
//
//  Created by Roman on 01.05.2024.
//

import UIKit

enum Varians {
    case Main
}

open class BaseButton: UIButton {
    
    
    let mainfontSize: CGFloat = 30
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        
               
        
        
      
        
        setup()
    }
    
    required public init?(coder: NSCoder) {
        super.init(frame: .zero)
        fatalError("init(coder:) has not been implemented")
    }
}

extension BaseButton {
    
 
    @objc func setup(){
        
        backgroundColor = .red
        setTitleColor(.blue, for: .normal)
    }
}
