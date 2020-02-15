import UIKit

//ex22
//형 변환 (type casting)

let myTest: Int = 10
let myFloat: Float = 3.14
let myString: String = "123"

//Int -> Double(실수)
let myDouble = Double(myTest)
//Float -> Int
let myInt2 = Int(myFloat)
//Int -> String
let myString2 = String(myInt2)
//String -> Int
let myInt3: Int? = Int(myString) // nil이 발생할 가능성이 있음
//옵셔널 바인딩 이용
if let myInt4 = Int("abc") {
    print(myInt4)
} else {
    print("nil임")
}

//클래스의 형변환 (다형성)
class Person {
    var name1: String = "사람"
}

//Person을 상속
class Student : Person {
    var name2: String = "학생"
}
//Student을 상속
class UnivStudent : Student {
    var name3: String = "대학생"
}
//클래스 객체생성
//tom객체는 Person속성
var tom : Person = Person()
//hana객체는 Student클래스속성 + Person클래스속성 가지고 있음.
var hana : Student = Student()
//john객체는 UnivStudent + Student + Person 속성을 가지고 있음.
var john : UnivStudent = UnivStudent()

//다형성 - 상속관계에서 어떤 클래스의 속성을 가지고 있는지 확인할 수 있음. 유전자 검사
//is 연산자 : 클래스 속성을 가지고 있는지 true/false로 리턴
tom is Person
tom is Student
tom is UnivStudent

hana is Person
hana is Student
hana is UnivStudent

john is Person
john is Student
john is UnivStudent

//switch와 is연산자 연동
switch john {
case is Person:
    print("Person 속성이 있음")
case is Student:
    print("Student 속성이 있음")
case is UnivStudent:
    print("UnivStudent 속성이 있음")
}

//is 연산자 : 타입 확인 연산자
//as 연산자 : 클래스 형변환 연산자
//john은 UnivStudent + Student + Person 클래스 속성을 가짐.
// 부문만 클래스로 빼오고 싶다 -> as 연산자

var newStudent = john as Student
dump(newStudent)

// as 연산자 종류
// as? : 조건부 다운 캐스팅, 변환하고자 하는 속성이 없으면 , nil을 리턴
// as! : 강제 다운 캐스팅, 변환하고자 하는 속성이 없으면, error 발생

var optionalCasted: Student?
optionalCasted = tom as? UnivStudent // nil
optionalCasted = hana as? UnivStudent // nil
optionalCasted = john as? UnivStudent // ok

// ??연산자 : nil이면 디폴트값을 주는 연산자

//강제 다운 캐스팅
var foorcedCasted: Student?
//foorcedCasted = tom as! UnivStudent
//oorcedCasted = tom as! UnivStudent
foorcedCasted = john as! UnivStudent // OK









