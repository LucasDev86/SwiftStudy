import UIKit


//함수 Function 11장 181

//프로그래밍 언어 세대별 분류
//1. 절차형 언어 : C언어, 포트란, 코볼, 베이직, 어셈블리어, PHP
//  -> 순서대로 수행되는 언어
//2. 객체지향 언어 : 자바, C#, ( C++ ), Objective-C
//  -> 클래스 지향(객체) 언어 : 재사용성, 코드 분리
//3. 함수형 언어 : 자바스크립트, 스위프트, 코틀린
//. -> 코드 블럭을 변수로 만들어서 함수 매개변수로 전달하고, 실행도 가능.
//  -> 비동기 처리 : 바로 실행하지 않고, 시간차를 두고 실행(UI이벤트, 통신)

//함수 Function : 코드를 기능단위로 분리해서, 이름을 붙여서, 재사용한다.

//func 함수이름 ( 매개변수이름: 타입 ) {
//.  수행문들...
//.  return (함수종료, 생략가능)
// }

//함수의 4가지 패턴
//1. 매개변수가 없고, 반환형이 없는 경우
func myFunc1(){
    print("myFunc1")
}
myFunc1()
func myFun2() -> Void {
    print("myFun2")
}
myFun2()
//2. 매개변수가 있고, 반환형이 없는 경우
func myFunc3(name: String){
    print("myFunc3" ,name)
}
myFunc3(name: "홍길동")
//3. 매개변수가 없고, 반환형이 있는 경우
func myFunc4() -> String {
    print("myFunc4")
    return "문자열"
}
myFunc4()
//4. 매개변수가 있고, 반환형이 있는 경우
func myFunc5( name: String) -> String {
    print("myFunc5", name)
    return name
}
let result2 = myFunc5(name: "홍길동")

//함수의 고급 문법
func printMyName(name1: String, name2: String){
    print("name1:\(name1),name2:\(name2)") //문자열보간 \(변수)
}
printMyName(name1: "john", name2: "tom")
//매개변수의 기본값
func printMyName2(name1: String, name2: String = "tom"){
    print("name1:\(name1),name2:\(name2)") //문자열보간 \(변수)
}
printMyName2(name1: "john")
printMyName2(name1: "john", name2: "hana")

//매개변수에 별명(레이블) 지정
func printMyName3(hero name1: String,actor name2: String){
    print("name1:\(name1),name2:\(name2)") //문자열보간 \(변수)
}

//매개변수의 이름이 아닌 레이블로 호출할 수 있다.
printMyName3(hero: "john", actor: "toms")

//호출시 매개변수의 이름을 생략 가능하도록 _(언더바)를 넣는다.
func printMyName4(_ name1: String,_ name2: String){
    print("name1:\(name1),name2:\(name2)") //문자열보간 \(변수)
}

printMyName4("john", "toms")

//가변 매개변수 - 매개변수에 배열로 값을 전달, 점점점...
func printMyName5(name1: String,name2: String...){
    print("name1:\(name1),name2:\(name2)") //문자열보간 \(변수)
    for name in name2 {
        print(name)
    }
}

printMyName5(name1 : "john", name2 : "toms","enuri","hana")















