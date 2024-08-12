//
//  TabBar.swift
//  BaseApp
//
//  Created by Roman on 29.04.2024.
//

import UIKit

//NAVBAR
final class NavBarController: UINavigationController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
    private func configure() {
        view.backgroundColor = .black
        navigationBar.isTranslucent = false
        navigationBar.standardAppearance.titleTextAttributes = [
            .foregroundColor: UIColor.red,
            
        ]
    }
    
}


//TB
final class TabBarController: UITabBarController, Coordinating  {
    var coordinator: Coordinator?
    var mainCoordinator = MainCoodrinator()


    override func viewDidLoad() {
        super.viewDidLoad()
//      generateTabs()
        configure()
     
    }
    
//   private func generateTabs() {
//        viewControllers = [generateTbItem(viewController: FirstViewController(),
//                                          title: "Home",
//                                          image: UIImage(systemName: "house")),
//                           generateTbItem(viewController: SecondViewController(),
//                                          title: "2",
//                                          image: UIImage(systemName: "arrowshape.turn.up.left.2.fill"))
//        ]
//        
//        
//    }
    
    private func generateTbItem(viewController: UIViewController,
                            title: String,
                            image: UIImage?) -> UIViewController {
        viewController.tabBarItem.title = title
        viewController.tabBarItem.image = image
        return viewController
    }
    
    private func configure() {
        tabBar.backgroundColor = .white
        tabBar.tintColor = .blue
        tabBar.unselectedItemTintColor = .white
        
    }
}


