

import UIKit

class FirstViewController: BaseViewController, Coordinating {
    var coordinator: Coordinator?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
            view.backgroundColor = .green
        
        let button = BaseButton(frame: CGRect(x: 0, y: 0, width: 220, height: 50))
        view.addSubview(button)
        button.center = view.center
        button.setTitle("Please press me", for: .normal)
        
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
    }

    @objc func didTapButton() {
        coordinator?.eventOccured(type: .buttonTapped)
    }

}

