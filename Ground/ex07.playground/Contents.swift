import UIKit

//연산자 74쪽
//연산자 우선순위 : 산술 > 비교 > 논리 > 대입
//연산자 우선순위가 헷갈리면 ()소괄호로 우선 처리함.

var result = 10 + 2 - 3 / 4 * 7

//산비논대 : 산성비가 논에 온대!

//산술 연산자 : + -  * / %(나머지)
//비교 연산자 : ==(같은거) != 같지않은거 > 큰가 < 작은가 <=
//논리 연산자 : && ||
//대입 연산자 : = , += , -=, *=, /=, %=

//산술 연산자 : + -  * / %(나머지) - (기호연산자, 음수표형)
//         : 결과가 값으로 나옴
var myNum: Int = 10
print(myNum / 3) //나누기연산해서 몫을 반환
print(myNum % 3) //나누기연산해서 나머지를 반환

// ++ , -- 증감연산자
// var++ => var = var + 1
var myVar: Int = 10
myVar += 1
myVar -= 1

//비교연산자 : == != > < >= <=
//결과가 true // false로 옴
10 < 20
10 > 20
10 == 20
10 != 20
10 >= 20

//논리연산자 : && AND || OR
// && AND true && true => true
//        true && false => false
//        false && true => false
//        false && false => false
// 둘다 true일때만 true, 그외 false
// ~ 이고, ~이면서

// || OR  true || true => true
//        true || false => true
//        false || true => true
//        false || false => false
// 둘다 false 일때만 false, 그외 true
// ~ 이거나 , 또는

// ! NOT ~이 아니다 true -> false, false -> true

// ?: 연산자 - 삼항연산자
var myBool: Bool = (10 < 20) ? true : false

// ?? 연산자 : 쌍물음표 연산자 : 앞의 값이 널이면 뒤의 값을 전달함.
let name: String? = nil
print(name ?? "홍길동")

//범위 연산자 Range
//시작값...종료값으로 구성됨.
let range = 1...10
print(range)
for i in range {
        print(i)
}

let range2 = 1..<10 //1-9까지 범위
for i in range2 {
 print( i )
}

// 9~1까지 거꾸로 범위를 지정
for i in range2.reversed() {
  print(i)
}

// 대입 연산자 = += -+ *= /= %=
var myNum1 = 10
myNum1 += 2
myNum1 -= 2
myNum1 *= 2























