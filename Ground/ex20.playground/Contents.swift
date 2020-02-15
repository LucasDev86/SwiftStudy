import UIKit

//ex20 옵셔널 체이닝 20장
//널체크를 간편하게 해주는 기법

//옵셔널변수를 처리하는 방법
//1. 옵셔널 바인딩 : if let
//2. 강제 언래핑 : var !
//3. 이른 탈출 : guard let, guard else 구문
//4. 옵셔널 체이닝 : var?

class Person {
    var contact: Contact? //클래스 객체를 맴버 변수(속성)으로 가짐.
    init() {
        contact = Contact()
    }
}

class Contact {
    var address: String?
    var phone: String?
    var email: String? = "N/A"
}

let p = Person()
dump(p)
//contact가 널이 아니면, 값이 대입되고,
//널이면 값이 대입되지 않음.
//널 에러를 회피할 수 있음.

p.contact?.email = "abc@gmail.com"
dump(p)
p.contact = nil
p.contact?.email = "zzz@gmail.com"
dump(p)

//옵셔널 체이닝을 사용하지 않으면, 옵셔널 바인딩을 사용해야 됨.
if let email = p.contact?.email {
    print( email )
} else {
    print( "emaildl nil입니다." )
}





