//
//  BaseViewController.swift
//  BaseApp
//
//  Created by Roman on 22.04.2024.
//

import UIKit

open class BaseViewController: UIViewController {
    
    open override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()
        
    }
}

extension BaseViewController {
    
    @objc func setup(){
    }
}
