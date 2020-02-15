import UIKit

//ex25
//assert와 guard
//assert : 확인, 검증
//guard : 보호하다. Early Exit 이른 탈출

//Assert : 검증을 통해서 코드가 통과하는지 조사
var myInt: Int = 10

//통과 조건 기술, 에러 메시지 표시 (통과 못하면 중단됨.)
assert(myInt == 10, "myInt가 10이 아님. 중단됨!!")

//myInt = 20
//assert(myInt == 10, "myInt가 10이 아님. 중단됨!!")
//Assert 단위 테스트 할때 사용됨.
//오류 발생 지점을 빠르게 발견할 수 있다.

//Assert를 함수에서 사용 예
func myFuncAssert(age: Int?){
    assert(age != nil, "age가 nil임")
    assert(age! >= 0 && age! < 130, "age값이 정상범위를 벗어남")
    //통과됨!
    print("나이는 \(age!)입니다.")
}


//myFuncAssert(age: -1)

//guard문 : 빠른 탈출(귀환) - 조건이 안맞으면 빠른 리턴
func myFuncGuard(age: Int?){
    guard let newAge = age, newAge < 130 , newAge >= 0 else {
        //조건에 안맞으면, 빠른탈출
        print("age값이 이상합니다.")
        return
    }
    print("나이는 \(age!)입니다")
}

myFuncGuard(age: 30)
myFuncGuard(age: -1)
myFuncGuard(age: nil)
