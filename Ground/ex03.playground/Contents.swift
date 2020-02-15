import UIKit

//출력문 print, debugPrint, dump
var myStr: String = "Swift Programming"
print( myStr )
debugPrint( myStr )
dump( myStr )

//열거형
enum Hero {
    case Ironman
    case Spiderman
}

var hero: Hero = Hero.Ironman
print(hero)
debugPrint(hero)
dump(hero)

//클래스
class Student {
    var name = "홍길동"
}

var student = Student()
print( student )
debugPrint(student)
dump(student)

//문자열 보간 Interpolation
var age = 30
print("저의 나이는 \(age)입니다")
print("저의 나이는" ,age,"입니다")







