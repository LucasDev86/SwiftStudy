import UIKit


//ex23
//익스텐션(Extention) : 확장 25장
//기존에 있던 클래스, 구조체, 열거형, 자료형(구조체)에
//기능을 확장해 줌

//클래스의 상속.  <--->   익스텐션
//수직 확장              수평 확장(함수나 변수의 갯수 증가)
//클래스만 지원           클래스, 구조체, 열거형, 자료형 다 지원함
//재정의(오버라이딩) 가능.  재정의 불가(기존에 있던 것 터치 불가)

//Int(스트럭트) 기본자료형에 기능확장
extension Int {
    var isEven: Bool { //짝수인지를 true / false로 가지고 있음
        get {
            return self % 2 == 0 //짝수 또는 2의 배수임.
        }
    }
    var isOdd: Bool {
        //get {. get함수만 있으면 get 키워드 생략 가능
            return self % 2 == 1 //홀수임
       // }
    }
}

var myInt: Int = 10
myInt.isOdd
myInt.isEven
10.isEven
10.isOdd


//익스텐션으로 함수 추가

extension Int {
    //by : 별명(레이블)
    func multiply(by n: Int) -> Int {
        return self * n
    }
}

myInt.multiply(by: 2) //10*2 리턴
10.multiply(by: 3)

struct Student {
    var name: String = "홍길동"
    func printMyName() {
        print(self.name)
    }
}

extension Student {
    var nickName: String {
        get {
            return self.name + " 의적"
        }
    }
    func printMyNickName() {
        print(self.nickName)
    }
}

var student = Student()
student.printMyNickName()
student.printMyName()
print(student.name)
print(student.nickName)


