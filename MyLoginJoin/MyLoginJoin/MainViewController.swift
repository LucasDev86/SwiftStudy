//
//  MainViewController.swift
//

import UIKit

class MainViewController: UIViewController {
    
    //week : 메모리 참조 카운트를 올리지 앟는다는 뜻
    //strong(생략) : 메모리 참조 카운트를 올림(메모리 누수가 발생할 수 있음.)
    @IBOutlet weak var labelStatus: UILabel!
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //뷰 생성시 한번만 호출됨.
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        //뷰가 화면에 보일때 마다 호출됨.
        if appDelegate.isLogin {
            labelStatus.text = "로그인상태 : 로그인됨\(appDelegate.userInfo.id)"
        } else {
            labelStatus.text = "로그인상태 : 로그인 오프"
        }
    }
}

