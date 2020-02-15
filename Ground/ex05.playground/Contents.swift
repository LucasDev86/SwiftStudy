import UIKit

// 스위프트 객체 타입
// Any, AnyObject , nil

//Any타입 : 모든 데이타 담수 있음
//         Int, Floatm Bool, String, Struct, Fnum, Array 담을 수 있음,
var myAny:Any = 100
myAny = "홍길동"
myAny = true

//AnyObject : 모든 클래서(타입)의 객체를 담을 수 있음
class Myclass1{
    var name = "장세훈"
}
class Myclass2{
    var age = 30
}

var myAnyObject: AnyObject = Myclass1()
myAnyObject = Myclass2()

//nil 타입 : 널 NULL Null, 비어있는 객체변수(참조변수).
var myNil: Int? = nil //Int? 옵셔널변수 - 널일 수도 있는 변수!



