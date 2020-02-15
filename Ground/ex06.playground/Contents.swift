import UIKit

//옵셔널 Optional - 널 체크 Null Exception 발생 빈드롤 줄이고자,

//자바에서 널 체크
//if( myObj == null ) {
//   return;
//}

var myNum1: Int = 10 //실제값으로 초기화했으므로 반드시 널이 아님.
var myNullable: Int? = nil //옵셔널 변수 : 널일 수도 있는 변수
print(myNum1)
print(myNullable)

myNullable = 10

// 옵셔널 변수를 안전하게 사용하는 방법: Null Exception을 피하는 방법
// 옵셔널 바인딩 Optional Binding
// if let 구문
if let newInt = myNullable {
    print("널이 아님")
} else {
    print("널 이다!")
}

//강제 언래핑 (Force Unwrapping)
// ! 연산자 : 널임을 각오하고 강제로 값을 빼오는 것
print(myNullable!)



//연습문제
//옵셔널 문자열 변수 myStr에 "Hello"
var myStr: String? = "Hello"
//var myStr: String? = nil

if let newStr = myStr {
    print(newStr)
} else {
    print("null")
}

print(myStr!)















