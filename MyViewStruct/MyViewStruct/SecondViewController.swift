//
//  SecondViewController.swift
//

import UIKit

class SecondViewController: UIViewController {
    
    var mainVC: ViewController? = nil
    var secondData: String = ""
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("두번째 화면에서 " , self.secondData)
        print("두번째 화면에서 " , appDelegate.globalData)
    }
    

    @IBAction func onBtnNext(_ sender: UIButton) {
        
        let newVC = self.storyboard?.instantiateViewController(withIdentifier: "ThirdVC") as! ThirdViewController
        
        self.navigationController?.pushViewController(newVC, animated: true)
        
    }
    
    @IBAction func onBtnClose(_ sender: UIButton) {
        self.mainVC?.mainData = "두번째 화면에서 전달한 데이터"
        self.navigationController?.popViewController(animated: true)
        
        
    }
}
