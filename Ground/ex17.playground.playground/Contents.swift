import UIKit

//(Enum) 15장 259쪽
//데이타 상수를 정의할 때 , 숫자로 기억하기 보다 문자열로 기억하면 편한다,
//가위 바위 보게임을 만들때, 가위 0, 바위 1,보 2로 정의한다면, 0이라는 값은
//직관성이 떨어진다.

//기존 Enum 단순한 배열어었는데, 스위프트에서는 클래스처럼 확장됨 (변수 + 함수 담을 수)

enum Weekday {
    case mon
    case tre
    case wed
    case thu,fri,sat,sun
}

//열거형 변수의 선언
var day: Weekday = Weekday.mon
print(day)

day = Weekday.fri
//알고 있는 열거형(타입추정)의 경우 열거형타입을 생략해도 됨.
day = .sat

//switch 문과의 연동

switch day {
case .mon, .tre, .wed, .thu:
    print("월화수목 입니다.")
case .fri, .sat:
    print("금토 입니다.")
default:
     print("그 외 요일입니다.")
    <#code#>
}


enum Hero: Int {
    case Ironman = 0
    case Spiderman = 1
    case Hulk // 생략해도 2가 들어감.
}

print(Hero.Ironman)
print(Hero.Ironman.rawValue)
print(Hero.Hulk)

//열거형 변수 선언
var myHero1: Hero = Hero.Ironman
//정수로 열거형 변수 선언하기
var myHero2: Hero? = Hero(rawValue: 2) //Hulk

//옵셔널 변수를 안전하게 처리하려면? 옵셔널 바인딩
if let hero = myHero2 {
    print("nil 아님")
} else {
    print("nil입니다.")
}

//열거형에 함수 넣기
enum Month {
    case jan, fab, mar
    case apr, may, jun
    case jul, aug, sep
    case oct, nov, dec
    func printMonth() {
        switch self {
        case .jan, .fab, .mar:
            print("1,2,3월")
        case .apr, .may, .jun:
            print("4,5,6월")
        case .jul, .aug, .sep:
            print("7,8,9월")
        case .oct, .nov, .dec:
            print("10,11,12월")
         }
    }
}
Month.apr.printMonth()
var month = Month.aug
month.printMonth()

