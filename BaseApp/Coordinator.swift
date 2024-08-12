//
//  Coordinator.swift
//  BaseApp
//
//  Created by Roman on 25.04.2024.
//


import UIKit

enum Event {
    case buttonTapped
}

protocol Coordinator {
    var navigationController: NavBarController? {get set}
    func eventOccured(type: Event)
    func start()
}
protocol Coordinating {
    var coordinator: Coordinator? {get set}
}

class MainCoodrinator: Coordinator {
    var navigationController: NavBarController?
    var tabBarController: TabBarController?
    var children: [Coordinator]? = nil
    
    func eventOccured(type: Event) {
        switch type {
        case .buttonTapped:
            var vc: UIViewController & Coordinating = SecondViewController()
            vc.coordinator = self
            navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    func start() {
        
        var vc: UIViewController & Coordinating = FirstViewController()
        vc.coordinator = self
        navigationController?.setViewControllers([vc], animated: false)
        
        
        var firstVC: UIViewController & Coordinating = FirstViewController()
               firstVC.coordinator = self
        var secondVC: UIViewController & Coordinating = SecondViewController()
               secondVC.coordinator = self

               // Initialize the tab bar controller
               tabBarController = TabBarController()
               tabBarController?.mainCoordinator = self

               // Set view controllers for the tab bar
               tabBarController?.viewControllers = [firstVC, secondVC]
                
        
               // Assign tab bar items
                firstVC.tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "house"), tag: 0)
                secondVC.tabBarItem = UITabBarItem(title: "Second", image: UIImage(systemName: "square.and.arrow.down.fill"), tag: 1)

               // Set the tab bar as the root view controller
               navigationController?.viewControllers = [tabBarController!]
        }
    private func generateTbItem(viewController: UIViewController,
                            title: String,
                            image: UIImage?) -> UIViewController {
        viewController.tabBarItem.title = title
        viewController.tabBarItem.image = image
        return viewController
    }
        
    }

