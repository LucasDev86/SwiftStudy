import UIKit

//조건문 111쪽
//if문 switch문

//if 문의 형식
if true {
    print("true")
}

// if else
if true {
    print("true")
} else {
    
}
// if else if문
if true {
    //조건1 참일때
} else if true {
    //조건1 거짓이고 조건2 참일때
} else {
    //조건1 거짓이고 조건2 거짓일때
}

//조건문 반복문에서 소괄호 없어짐

//랜덤수 난수, 임의의수 발생
let randomNum: UInt32 = arc4random_uniform(100) // 0부터 99까지 랜덤수 발생
let intValue: Int = Int(randomNum)
print(intValue)

if intValue < 30 {
    print("30보다 작음")
} else if intValue < 60 {
    print("60보다 작음")
} else if intValue < 90 {
    print("90보다 작음")
} else {
    print("그외의 수")
}


//빼뻬로데이에 철수가 영희에게 빼빼로를 하나 선물하려고 한다.
//주사위를 던져서 1~6까지의수에서
//1,2가 나오면, 검은 빼빼로
//3,4가 나오면 하얀 빼빼로
//5,6이 나오면 아몬드 빼빼로를 선물하려고 한다.
//위의 상황을 시뮬레이션 하시오.


let giveCnt: UInt32 = arc4random_uniform(6) + 1
let intValue1: Int = Int(giveCnt)
print(intValue1)

if intValue1 < 3 {
    print("검은 빼빼로")
} else if intValue1 < 5 {
    print("하얀 빼빼로")
} else {
    print("아몬드 빼빼로")
}

//옵셔널 변수 : 널일수 있는 변수 - 타입 ?
//처리방법 : 1. if let문 옵셔널 바인딩
//         2. 강제 언래핑 !
//         3. guard let문 , guard else문
func myFunc(){
    var myOptional: Int? = nil
    //guard let문은 처리조건을 선택적으로 처리할때 사용함.
    guard let _ = myOptional, myOptional != 10 else {
        print("널입니다.") // 널일때 들어오는 블록
        return //return 함수를 탈출(나가버림)
    }
    
    //수행문 ...
    
    
}
myFunc()

var name: String? = "Jang"
switch name {
case "Jang":
    print("이름은 : ")
case "hong":
    print("이름은 : ")
default:
    print("그외 이름입니다.")
}

//switch문 연습문제
// 크리스마스 날씨 정보를 조회해서 (랜덤)
// 1값이 나오면, 눈이 옵니다 출력

let weatherRandom: UInt32 = arc4random_uniform(90) + 1
let wCnt: Int = Int(weatherRandom)

switch wCnt {
case 1...10:
    print("눈이 옵니다.")
case 11...19:
    print("비가 옵니다.")
case 20..<34:
    print("흐립니다.")
case 40...90 , 100...200:
    print("눈이 옵니다.")
default:
    break
}

















