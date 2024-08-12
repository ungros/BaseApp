//
//  BaseCollectionViewCell.swift
//  BaseApp
//
//  Created by Roman on 16.05.2024.
//

import UIKit

class BaseCollectionViewCell: UICollectionViewCell {
    
    static let reuseId = "BaseCollectionViewCell"
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setup()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
    
    
extension BaseCollectionViewCell {
    
    func setup() {
        
    }
}
