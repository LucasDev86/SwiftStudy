//
//  ViewController.swift
//

import UIKit

//화면을 이동하는 방법 2가지
//1. 네비게이션 컨트롤러(Navigation Controller) 이용 - 권장
//.  수직적인 이동 - 단계적으로 넘어갔다 뒤로 돌아올때 (카카오택시-콜호출-옵션1-옵션2-최종)
// PushVC, PopVC (Seque, 코드)
//2. 팝업 창으로 이동(Popup VC)
//   수직적인 이동 - 이벤트성으로 떴다가 사라지는 화면 (로그인, 이벤트, 공지사항)
//   Present, Dismiss (Seque, 코드)

//네비게이션 컨트롤러 뷰 관리 방법
//1. 다음화면으로 이동
//self.navigationController?.pushViewController
//2. 이전화면으로 이동
//popViewControllor
//3. 맨 앞으로 이동
//popToRootViewController
//4. 특정번째 뷰로 이동(2,3번째)
//popToViewController(newVC, animated: true)
//5. 특정 뷰를 삭제할때
//viewControllers 배열에서 삭제함 . remove(at:)
//6. 특정 뷰를 중간에 추가할때
//viewControllers 배열에서 추가함. insert(at: )

//뷰 컨트롤러 간의 데이터 전달(참조)
//1. 전역변수를 이용한다. (앱내 모든 VC에서 접근 가능)
//2. A클래스(VC)에서 B클래스에서 데이터 전달
//3. B클래스에서 A클래스로 데이터 전달

//뷰 컨트롤러의 수명 주기
//viewDidLoad() : 뷰가 생성될때 한번만 호출(초기화 용도)
//viewWillAppear : 뷰가 화면에 보일때마다(새로운 데이타 표현)
//viewDidAppear: 뷰가 화면에 보이고나서 매번 호출
//viewWillLayoutSubViews : 컨트롤(서브뷰) 레이아웃 잡기 전에 호출됨.
//viewDidLayoutSubviews : 컨트롤들의 레이아웃을 잡고 나서 호출됨.
//viewWillDisappear : 뷰가 화면에 사라지기 전마다 호출됨
//viewDidDisappear : 뷰가 화면에 사라지고 나서 매번 호출됨


class ViewController: UIViewController {

    var mainData: String = ""
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    //뷰가 생설될때 한번만 호출됨.
    override func viewDidLoad() {
        super.viewDidLoad()
        //전역변수 설정
        appDelegate.globalData = "전역변수 설정함"
        
        print("viewDidLoad")
        
    }
    //화면에 보일때 여러번 호출됨.
    override func viewWillAppear(_ animated: Bool) {
        print("메인화면에서 : ", self.mainData)
        print("viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
         print("viewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappear")
    }
    
    override func viewWillLayoutSubviews() {
        print("viewWillLayoutSubviews")
    }
    override func viewDidLayoutSubviews() {
        //시스템이 레이아웃 자리를 다 잡고나서
        //내 버튼의 크기, 위치를 잡아준다.
        print("viewDidLayoutSubviews")
    }
    
    
    //Seque로 화면이동시 데이터 전달
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC" {
            let vc = segue.destination as! SecondViewController
            vc.secondData = "메인화면에서 전달한 데이터"
            vc.mainVC = self
        }
    }
    
    //코드로 이동
    @IBAction func onBtnNext(_ sender: UIButton) {
        //스토리보드의 뷰컨트롤러 객체를 얻어옴.
        let newVC = self.storyboard?.instantiateViewController(withIdentifier: "SecondVC") as! SecondViewController
        newVC.secondData = "메인화면에서 전달한 데이타"
        newVC.mainVC = self
        self.navigationController?.pushViewController(newVC, animated: true)
    }
    
    //팝업형태 띄우기
    @IBAction func onBtnPopup(_ sender: UIButton) {
        let newVC = self.storyboard?.instantiateViewController(withIdentifier: "EventVC") as! EventViewController
        
        self.present(newVC, animated: true, completion: nil)
    }
    
}

