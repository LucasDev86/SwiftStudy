//
//  ThirdViewController.swift
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func onBtnClose(_ sender: UIButton) {
        
       
       //이전화면으로 이동 self.navigationController?.popViewController(animated: true)
        
        
        //맨 첫 화면으로 바로 이동하기
        self.navigationController?.popToRootViewController(animated: true)
        
    }
    
}
