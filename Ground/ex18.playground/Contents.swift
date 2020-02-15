import UIKit

//ex18
//구조체와 클래스 16장

//             구조체   열거형            클래스
//형식          값타입.   값타입(복사간편).  참조타입(주소값을 가지고 있고, 값복사 불편)
//상속          불가.    불가.           상속 가능
//익스텐션(확장).  가능.   가능             가능


//스위프트는 구조체를 선호함.

//구조체 Struct
//변수와 함수를 가지고 있는 코드 블럭, 값복사 간편(대입문 =)
struct Student {
    var name: String = "홍길동"
    var age: Int = 30
    func printMyName() {
        //self는 자기 자신을 의미함.
        print(self.name)
    }
}


//구조체 변수를 선언해 보자, 객체(인스턴스) 생성
var structStudent: Student = Student() // 앞에 new 키워드를 붙이지 않음
dump(structStudent)
debugPrint(structStudent)

//값 복사
let structStudent2 = structStudent // 간단하게 값복사가 일어남
dump(structStudent2)

//클래스 class
//변수와 함수를 가지고 있는 코드 블럭
class Person {
    var name: String = "아이언맨"
    var age: Int = 40
    
    func printMyName() {
        print(self.name)
    }
}

//클래스 객체를 생성
var classPerson = Person() //new 없음
//객체이름 뒤에 점찍어서 변수,함수 접근
classPerson.name
classPerson.age
classPerson.printMyName()

//클래스의 생성자 함수
// init()함수 - 이니셜라이즈 함수
class SchoolMan {
    var name:String
    var age:Int
    //객체가 생성될때 자동으로 호출되는 함수: 주로 초기화 용도
    init(name:String, age:Int){
        self.name = name
        self.age = age
        print("생성자 함수 호출됨")
    }
    
    deinit { //객체가 메모리에서 해제될때 호출됨.
        self.name = ""
        self.age = 0
        print("소멸자함수 호출됨.")
    }
    
}

var schoolMan: SchoolMan? = SchoolMan(name: "스쿨맨", age: 20)
schoolMan?.name
schoolMan?.age
schoolMan = nil // 널값을 주면 알아서 메모리에서 해제됨,. 시점을 강제할 수 없음
                //가베지 콜렉터 (메모리 청소꾼)

struct BlankStruct {
    var name: String
    //소멸자 없음.
    init(name: String) {
        self.name = name
    }
}


var bs: BlankStruct? = BlankStruct(name : "테스트")
bs = nil


