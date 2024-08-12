//
//  BaseCollectionView.swift
//  BaseApp
//
//  Created by Roman on 16.05.2024.
//

import UIKit

class BaseCollectionView: UICollectionView, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
   
    private let cells = 9

    init() {
        let layout = UICollectionViewFlowLayout()
        super.init(frame: .zero, collectionViewLayout: layout)
        
        layout.scrollDirection = .horizontal
        layout.minimumInteritemSpacing = 20
        backgroundColor = .clear
        showsHorizontalScrollIndicator = false
       
        delegate = self
        dataSource = self
        register(BaseCollectionViewCell.self, forCellWithReuseIdentifier: BaseCollectionViewCell.reuseId)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension BaseCollectionView {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cells
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = dequeueReusableCell(withReuseIdentifier: BaseCollectionViewCell.reuseId, for: indexPath)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 78, height: 107)
    }
}

