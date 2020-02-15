//
//  MyTableViewCell.swift
//

import UIKit

class MyTableViewCell: UITableViewCell {

    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelArt: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        //셀이 생성되었을 때 한번 호출됨.

    }
    override func layoutSubviews() {
        self.imageView?.frame = CGRect(x: 10, y: 10, width: 80, height: 80)
    }
    

}
