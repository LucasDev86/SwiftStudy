//
//  ViewController.swift
//  MyAlamofireJson


import UIKit
import Alamofire
import SwiftyJSON

//웹앱. -------HTTP Request(Get,Post) ->>>>> 웹서버(아파치,톰캣)
//     <-----------Response(HTML,JSON,XML)----------
// HTTP GET방식 : 주소줄에 데이타를 싫어 보내는 방식
//.          예) http://www.site.com?id=hond&pw=1234
//           장점 : 간편하다, 단점: 정보유출에 취약하다
// HTTP POST방식 : HTTP BODY에 데이터를 감추어서 보냄.
//.

class ViewController: UIViewController {
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    
    @IBAction func onBtnRequest(_ sender: Any) {
        sendRequest()
    }
    
    func sendRequest(){
        //딕셔너리
        let parameter : Parameters = [
            "user_id" : "hong",
            "user_pw" : "1234"
        ]
        let url: String = "http://nissisoft21.dothome.co.kr/login_test.php"
        
        Alamofire.request(url,
                          method: .post,
                          parameters: parameter,
                          encoding: URLEncoding.httpBody,
                          headers:
            ["Content-Type" : "application/x-www-form-urlencoded",
                   "Accept" : "application/json"
        ]).validate(statusCode:200..<300)
            .responseJSON(completionHandler:{
                (response) in
                
//                let value = String(data: response.data!, encoding: .utf8)
//                print(value!)
//                self.textView.text = value!
                
                self.parseJSON(response)
                
            })
        
    }
    func parseJSON(_ response: DataResponse<Any>) {
        switch response.result {
        case .success(_):
            if let json = try? JSON(data: response.data!){
                let result = json["login_result"]["result"].string
                print("result" , result!)
                self.textView.text.append("\n\(result!)")
                let message = json["login_result"]["message"].string
                print("message" , message!)
                self.textView.text.append("\n\(message!)")
                let login_return =
                    json["login_result"]["login_data"]["return"].string
                print("login_return", login_return!)
                self.textView.text.append("\n\(login_return!)")
                let login_message = json["login_result"]["login_data"]["message"].string
                print("login_message", login_message!)
                self.textView.text.append("\n\(login_message!)")
                
                let arrayData = json["login_result"]["list"].array
                for data in arrayData! {
                    let name = data["name"].string
                    print("name:", name ?? "")
                    self.textView.text.append("\n\(name)")
                    let height = data["height"].string
                    print("height:", height ?? "")
                    self.textView.text.append("\n\(height)")
                    let weight = data["weight"].string
                    print("weight:", weight ?? "")
                    self.textView.text.append("\n\(weight)")
                }
            }
            break
        case .failure(_):
            print("통신이 실패함", String(describing: response.result.error))
         break
        }
    }
}

