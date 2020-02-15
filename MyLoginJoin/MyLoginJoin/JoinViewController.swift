//
//  JoinViewController.swift
//

import UIKit

class JoinViewController: UIViewController {

    @IBOutlet weak var textfieldID: UITextField!
    @IBOutlet weak var textfieldPW: UITextField!
    @IBOutlet weak var textfieldName: UITextField!
    @IBOutlet weak var textfieldPhone: UITextField!
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    @IBAction func onBtnJoin(_ sender: UIButton) {
        
        if appDelegate.isAgree == false {
            print("약관동의 해주세요~")
            return
        }
        
        let id = textfieldID.text
        let pw = textfieldPW.text
        let name = textfieldName.text
        let phone = textfieldPhone.text
        
        
        if let safeId = id, let safePw = pw, let safeName = name, let safePhone = phone {
            if safeId.count < 1 {
                print("아이디를 입력하세요")
                return
            }
            if safePw.count < 1 {
                print("비밀번호를 입력하세요")
                return
            }
            if safeName.count < 1 {
                print("이름을 입력하세요")
                return
            }
            if safePhone.count < 1 {
                print("폰번호를 입력하세요")
                return
            }
            //회원가입, 처리(통신 처리)
            appDelegate.userInfo.id = safeId
            appDelegate.userInfo.pw = safePw
            appDelegate.userInfo.name = safeName
            appDelegate.userInfo.phone = safePhone
            
            print("회원가입이 되었습니다.")
            
            //로그인 화면으로 이동
            self.navigationController?.popViewController(animated: true)
            
        } else {
            print("아이디, 암호, 이름, 폰번호 중에 널이 있습니다.")
        }
    }
}
