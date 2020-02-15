//
//  LoginViewController.swift
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var textfieldID: UITextField!
    @IBOutlet weak var textfieldPW: UITextField!
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()
            
    }
    
    @IBAction func onBtnLogin(_ sender: UIButton) {
        let id = textfieldID.text
        let pw = textfieldPW.text
        //로그인 처리(통신처리)
        //로그인 되었다고 처리함.
        if let safeId = id, let safePw = pw {
            if safeId.count < 1 || safePw.count < 1 {
                print("아이디나 암호를 입력하세요.")
                return
            }
            appDelegate.userInfo.id = safeId
            appDelegate.userInfo.pw = safePw
        } else {
            print("ID나 PW가 널입니다.")
        }
        appDelegate.isLogin = true
        
        self.navigationController?.popViewController(animated: true)
        
        
        
    }
    
}
