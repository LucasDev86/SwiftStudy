//
//  ViewController.swift
//  MyCollectionView
//
//  Created by 1906027-N-1 on 07/12/2019.
//  Copyright © 2019 1906027-N-1. All rights reserved.
//

import UIKit

//콜렉션뷰 : 일반이벤트, 데이타소스 이벤트
class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource{
    
    let names:[String] = ["아이린","태연","아이유","윤아","수지","아이린","태연","아이유","윤아","수지"]
    let arts:[String] = ["빨간맛,파워업","호텔델루나,사계","좋은날, 스물셋","효리네민박, 바람이불면","건축학개론, FaceOfLove",
    "빨간맛,파워업","호텔델루나,사계","좋은날, 스물셋","효리네민박, 바람이불면","건축학개론, FaceOfLove"]
    
    let images:[String] = [
        "image1.png","image2.png","image3.png","image4.png","image5.png","image1.png","image2.png","image3.png","image4.png","image5.png"
    ]
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return names.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = self.collectionView.dequeueReusableCell(withReuseIdentifier: "MyCollectionViewCell", for: indexPath) as! MyCollectionViewCell
        
        cell.imageProfile.image = UIImage(named: images[indexPath.row])
        cell.labelName.text = names[indexPath.row]
        cell.labelAct.text = arts[indexPath.row]
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("아이템 선택됨." , indexPath.row)
    }

}

