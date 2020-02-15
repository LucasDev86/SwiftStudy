import UIKit

//ex19
//클래스 class
//변수와 함수를 모아놓은 코드 뭉치(블럭)
//장점 : 상속이 가능함. 다중상속은 불가능 C : A, B 불가함.

class Person {
    var name: String = "아이언맨"
    var age: Int = 40
    func printMyName(){
        print( self.name )
    }
}

//클래스 객체 생성
var classPerson = Person()
//객체 이름 뒤에 점.을 찍어서 변수, 함수에 접근
classPerson.age
classPerson.name
classPerson.printMyName()

//클래스의 상속 : 부모클래스의 자산(변수,함수)을 자식클래스에게 넘겨줌.
//객체 지향 프로그래밍(OOP : Object Oriented Programming)
//코드 분리! 재사용(코드 중복 피하자)
class Parent {
    var name: String = "부모"
    var age: Int = 40
    func printMyName(){
        print(self.name)
    }
}
// 콜론 : 연산자를 이용해 상속함.
class Child : Parent{
    
}
var child = Child() // 자식 클래스의 객체를 생성함.
child.name
child.age
child.printMyName()

//클래스(구조체,열거형)의 속성 Property - get, set 함수
struct People{
    var name: String = "홍길동"
    var korAge: Int = 30
    var engAge: Int {
        get { //변수 값을 읽을 때 자동으로 호출되는 블럭
            print("get함수")
            return korAge - 1
        }
        set(inputValue) { // 값을 대입할때 = 자동으로 호출되는 블록
            print("set함수")
            korAge = inputValue + 1
        }
    }
}

var peopleObj = People() // 스트럭트 객체 생성
peopleObj.engAge = 40
peopleObj.korAge

//속성(맴버변수) 감시자
struct Hero {
    var name: String = "아이언맨"
    var age: Int = 30 {
        willSet(newAge) { //감시자 함수 : 값 설정 전에 호출됨.
            print("이전나이: \(self.age)가 새 아니 \(newAge)로 변경됨")
        }
        didSet(oldAge) { //감시자 함수 : 값 설정 후에 호출됨.
            print("이전나이: \(oldAge)가 새 아니 \(self.age)로 변경됨")
        }
    }
}

var hero = Hero()
hero.age = 40


