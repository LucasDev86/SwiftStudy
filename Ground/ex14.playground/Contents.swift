import UIKit

//ex14
//클로저 Closuer 12장 201쪽
//자바의 람다식, 익명함수와 유사
//함수처럼 코드 블럭을 변수로 만들고, 매개변수로 전달가능하고, 실행도 가능하고, 실행도 가능하다.
//코드블럭을 변수로 만들면 좋은 점 : 비동기 처리가 가능하다.
//코드 선언하는 시점과 코드 실행하는 시점이 다른 것 : 통신 (요청 -> 1초후 응답 -> 실행)
//  UI이벤트 ( 버튼 클릭시 처리할 코드를 미리 정의함. )
//함수형 언어의 특징!!

//클로저 만드는 방법
// { (매개변수이름: 타입) -> 반환형 in
// 수행할 코드 ...
// }

//일반함수
func add(a:Int , b:Int) -> Int {
    return a+b
}

//일반변수
var sub: Int = 10

//코드 뭉치(블럭)을 변수로 만든다.
var sum: (Int, Int) -> Int = {
    (a:Int, b:Int) -> Int in
    return a+b
}

//클로저 변수 sum 실행해보자
var result = sum(10,20)

//일반함수의 매개변수로 클로저변수를 전달해보자
//값을 전달하는 것이 아니고, 코드블럭을 전달한다.

func calc(a:Int, b:Int, method:(Int,Int) -> Int) -> Int {
    return method(a,b)
}


result = calc(a: 10, b: 20, method: sum)

//매개변수로 클로저변수를 전달하는 대신, 코드블럭 자체를 넣을 수 있다.
//한번쓰고 버릴 것은 클로저변수로 선언할 필요를 못느낀다.
result = calc(a: 10, b: 20, method: {
    (a:Int, b:Int) -> Int in
    return a+b
})

//클로저 변수 사용예
//일반 함수
func printMyName(name1: String, name2:String) -> Void{
    print("name1: \(name1)  name2: \(name2)")
}
printMyName(name1: "hong", name2: "tom")

//일반함수 코드블럭을 클로저변수로 선언해보자.
var myClosuer: (String, String) -> Void = {
    (name1: String, name2:String) -> Void in
    print("name1: \(name1)  name2: \(name2)")
}

myClosuer("홍길동" , "변사또")

//일반함수를 그대로 대입하면, 클로저변수가 됨.
var myClosuer2: (String,String) -> Void = printMyName(name1:name2:)
myClosuer2("홍길동","변사또")










