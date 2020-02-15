import UIKit

//ex16
//튜플 Tuple : 간단 자료형 13장 208쪽

//배열과 딕셔너리와 비슷한 자료형인데, 간단히 사용하고 버리는 용도
//형식 : (값1, 값2, 값3)
//      (이름1:값1, 이름2:값2, 이름3:값3)

//용도 : 함수의 리턴형은 항상 1개이므로, 함수의 리턴형으로 여러개의 데이타를 반환할때
//      사용하면 유용함.

//여러타입을 동시에 요소로 쓸수 있음,
let myTuple = (10, "tom" , 3.14)
print(myTuple.0) //첫번
print(myTuple.1)
print(myTuple.2)

//튜플 값에 이름을 붙여서 가져옴
let (count, name, value) = myTuple
print(count)
print(name)
print(value)

//튜플에 이름을 붙여서 선언할 수 있음
let myTuple2 = (count: 10,  name: "tom" , value: 3.14)
print(myTuple2.count)
print(myTuple2.name)
print(myTuple2.value)

func myFunc () -> (Int, String, Float){
    return (10,"jane" , 3.123)
}

let resufltTuple = myFunc()
resultTuple.0

//튜플 타입 지정가능, 타입업라이스
typealias MyTupleType = (Int, String, Float)
let myTuple3 = MyTupleType(10, "Jane" ,3.14)
print(myTuple3)
resultTuple


