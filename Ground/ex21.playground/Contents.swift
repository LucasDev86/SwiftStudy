import UIKit

//ex21 프로토콜(Protocol) : 자바언어의 인터페이스와 유사
// 교재 24장
protocol Student{
    
}

// 일반클래스와     프로토콜의 차이점
// 다중상속안됨     다중상속이 가능함

//프로토콜의 특징: 가상함수만 있음(선언만 있고, 본체가 없는 함수)
//프로토콜은 기능 목록만 기술할 뿐, 실제 기능은 없음 ( 설계부 )
//구현클래스는 프로토콜에 기술된 목록을 실제로 구현함 ( 구현부 )

protocol Talkable {
    var lang: String { get } //읽기 속성만 지정
    var topic: String { get set } //읽기 쓰기 속성 지정
    func talk() //선언부만 있음, 본체가 없음 - 가상함수
}

protocol Runnable {
    func run()
}

struct Person: Talkable, Runnable { //다중 구현(상속) 가능 (클래스는 불가, 프로토콜은 가능)
    var lang: String //프로퍼티 요구 준수
    var topic: String //프로퍼티 요구 준수
    func talk() { //선언부에 있는 함수를 구현부에서 구현
        print("말할 수 있음")
    }
    func run() {
        print("달릴 수 있음")
    }
    //생성자 함수에서 초기화
    init(lang: String, topic: String) {
        self.lang = lang
        self.topic = topic
    }
}

//애플의 cocoa UI Platform
//Delegate : 이벤트 전달자
protocol EventDelegate {
    func click()
}

class ViewController : EventDelegate {
    func click() {
        print("버튼 클릭됨")
    }
}


//메소드 오버로딩 Overloading : 동일한 함수이름을 쓰면서, 매개변수를 다르게 해서 확장하는 것.
//메소드 오버라이딩 Overrideing : 상속받은 자식클래스에서 부모클래스의 함수를 재정의하는 것

class ParentClass {
    func printMyName(name: String){
        print(name)
    }
    //메소드 오버로딩 : 매개변수가 다름으로 같은 이름의 함수를 쓸수 있다.
    func printMyName(name: String, age: Int){
        print(name)
    }
}

class ChildClass : ParentClass {
    //override 키워드를 써서 부모에 정의됨 함수를 무시하고 재정의함.
    override func printMyName(name: String) {
        print("Child:" , name)
    }
}

var p = ParentClass()
p.printMyName(name: "hong")
p.printMyName(name: "tom", age: 30) //같은 이름을 써도 됨.

var c = ChildClass()
c.printMyName(name: "hana") //자식클래스의 함수가 호출됨.


