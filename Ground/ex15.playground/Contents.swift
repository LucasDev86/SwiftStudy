import UIKit


//ex15
//클로저의 변형(유연성)

//일반함수: 클로저를 매개변수로 받는다.

func calc(a: Int, b: Int, method:(Int,Int)->Int) -> Int {
    return method(a, b)
}

//일반함수 실행
var result = calc(a: 10, b: 10, method: {
    (a: Int, b:Int) -> Int in
    return a+b
})

//반환형 생략 가능 : 타입추정
//일반함수 실행
var result1 = calc(a: 10, b: 10, method: {
    (a: Int, b:Int) /* -> Int */ in
    return a+b
})

//매개변수 생략 가능
var result2 = calc(a: 10, b: 10, method: {
    /* (a: Int, b:Int)   in  */
    return $0 + $1 //$0는 첫번째 매개변수, $1은 두번째 매개변수, 반환은 타입추정
})

//return도 생략가능
var result3 = calc(a: 10, b: 10, method: {
    $0 + $1
})

print(result3)

//후행 클로저(Trailing Closure) : 함수를 소괄호로 닫고 뒤에 { } 클로저를 선언함.
//왜 사용? 코드쓰기가 편해서
var result4 = calc(a: 10, b: 10) /*, method: */{
    (a: Int, b:Int) -> Int in
    return a+b
}
// 후행 클로저에서 반환형 생략 가능
var result5 = calc(a: 10, b: 10){
    (a: Int, b:Int) /*- > Int */in
    return a+b
}
//후행 클로저에서 매개변수 생략 가능
var result6 = calc(a: 10, b: 10){
    /*(a: Int, b:Int) in*/
    return $0 + $1
}
