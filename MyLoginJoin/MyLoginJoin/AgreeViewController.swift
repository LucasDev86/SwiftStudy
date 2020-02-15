//
//  AgreeViewController.swift
//

import UIKit

class AgreeViewController: UIViewController {

    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func onSwitchChanged(_ sender: UISwitch) {
        //스위치의 isOn 값을 isAgree에 대입( true/false )
        appDelegate.isAgree = sender.isOn
    }
    
    
    @IBAction func onBtnClose(_ sender: UIButton) {
        //팝업창 닫기
        self.dismiss(animated: true, completion: nil)
    }
    
}
