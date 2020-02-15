//
//  EventViewController.swift
//

import UIKit

class EventViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func closeBtn(_ sender: UIButton) {
        self.dismiss(
            animated: true,
            completion: nil
        )
    }
    
}
