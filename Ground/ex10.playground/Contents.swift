import UIKit

//값 타입과 참조 타입 133쪽
//value type 과 reference type
//value type : 변수안에 실제 데이타가 들어있는 변수. 장점: 값 복사가 편함. 대입연산자 =
//reference type : 변수안에 주소값만 들어 있는 변수. 실제 데이터는 다른곳에 있음.
//장점 : 많은 양의 데이터를 저장함. 단점: 값 복사 불편함.

//스위프트에서
//값 타입 : 기본자료형(Int, Float, Double, Bool, String) => Struct임.
//        스트럭츠(Struct) , 열거형(Enum), 딕셔너리(Dictionary) , 배열(Array), 집합(Set)
//참조 타입 : 클래스(Class) , NS류의 자료형들(NSString, NSArray, NSDictionary) :
//         오브젝티브 C에서 사용했음.

//* 스위프트에서는 값 타입을 선호함!

//구조체, 열거형, 클래스 차이점
//구조체 : 변수와 함수 사용가능, 값타입, 값 전달이 간편, 상속불가, 익스텐션 가능
//열거형 : 변수와 함수 사용가능, 값타입, 값 전달이 간편, 상속불가, 익스텐션 가능
//클래스 : 변수와 함수 사용가능, 참조타입, 값 전달이 불편, 상속가능, 익스텐션 가능

struct MyStruct {
    var age = 30
}

class MyClass {
    var age = 30
}

//구조체 생성
let myStruct = MyStruct() // new 필요없음

var myStruct2 = myStruct //새로운 구조체가 생성되면서, 값 복사가 이루어짐.
myStruct2.age = 33
print( myStruct.age )
print( myStruct2.age )

//클래스 생성
let myClass = MyClass() // new 필요없음
var myClass2 = myClass //주소값이 전달, 새로운 메모리공간은 안생김.
myClass2.age = 33 //같은 주소이 값을 변경함.
print( myClass.age )
print( myClass2.age )
