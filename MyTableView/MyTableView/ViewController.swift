//
//  ViewController.swift
//

import UIKit

//TableView(리스트)의 이벤트 2가지
//1. 일반 이벤트 : 클릭시, 레이아웃 정보를 리턴해줌.
//2. 데이타소스 이벤트 : 실제데이타의 갯수나 정보를 리턴.

class ViewController: UIViewController , UITableViewDelegate , UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    let names:[String] = ["아이린","태연","아이유","윤아","수지"]
    let arts:[String] = ["빨간맛,파워업","호텔델루나,사계","좋은날, 스물셋"
    ,"효리네민박, 바람이불면","건축학개론, FaceOfLove"]
    
    let images:[String] = [
        "image1.png","image2.png","image3.png","image4.png","image5.png"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Delegate : 전달하다(전달자)
        //테이블뷰의 일반이벤트를 ViewController이 처리하겠다!
        tableView.delegate = self
        //데이타소스 이벤트를 ViewController이 처리하겠다!
        tableView.dataSource = self
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
    //MARK: - 데이터소스 부분
    
    //numberOfRowsInSection
    //셀(아이템)의 갯수를 리턴
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    //cellForRowAt
    //테이블뷰가 그릴 셀(뷰)를 리턴
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //indexPath
        //Section : 그룹번호 0(섹션이 1개)
        //Row : 셀(줄)번호 0,1,2,3,4(5개)
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "MyTableViewCell", for: indexPath) as! MyTableViewCell
        
        cell.labelName.text = names[indexPath.row]
        cell.labelArt.text = arts[indexPath.row]
        cell.imageView?.image = UIImage(named: images[indexPath.row])
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        print("선택된 셀의 위치 : 섹션", indexPath.section)
        print("선택된 셀의 위치 : 줄", indexPath.row)
        return 100
    }

}

