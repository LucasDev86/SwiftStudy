import UIKit

//문자열 처리 함수들 9장 139쪽
//NS계열 : NS로 시작하는 클래스들 , NSString
//스위프트계열 : 구조체 타입, String

var myString: String = "홍길등"
// \n 특수문자-이스케이프문자-줄바꿈
//다중문자열(여러줄 문자열)
var multiString: String = """
여러줄
문자열
입니다.
"""

//문자열의 길이
var myName: String = "홍길동"
myName.count

//문자열의 비교
let str1: String = "Apple"
let str2: String = "Banana"

if str1 == str2{
    print("서로 같음")
} else {
    print("서로 다름")
}

//자바: equal

//문자열 연결 : + 문자열 연결 연산자(둘중 문자열이면)
print(str1 + str2)
print(str1.appending(str2))

//문자열 순환
let text = "abcdef"
for char in text {
    print(char)
}

//문자열을 중간에 추가
var myString2: String = "Swift Programming"
//시작인덱스에서 Offset 값으로 인덱스를 줌
let index = myString2.index(myString2.endIndex, offsetBy: 0)
//문자 하나를 삽입
myString2.insert("!" ,at: index)

//문자열을 삽입
myString2.insert(contentsOf:"My ", at: myString2.startIndex)

let index2 = myString2.index(myString2.startIndex , offsetBy: 9)
myString2.insert(contentsOf:"Cool ", at: index2)

//NSString -> String 형 변환
let myNSString: NSString = "Swift Programming"
let mySwiftString: String = String( myNSString )

//String -> NString 형변환
let myNSString2: NSString = NSString(string: mySwiftString)

//NSString 읽기만 가능, NSMutableString 읽기,쓰기 가능
//Swift 읽기,쓰기 가능


//문자 하나를 지움
var myString3: String = "Swift Programming"
let index3 = myString3.index(myString3.startIndex, offsetBy: 4)
myString3.remove(at: index3)
print(myString3)

//문자열을 삭제
let removeRange = myString3.index(myString3.startIndex , offsetBy: 0) ...
                 myString3.index(myString3.startIndex , offsetBy: 4)
myString3.removeSubrange(removeRange)
print(myString3)

//문자열 전체 삭제
myString3.removeAll()
myString3 = ""

//문자열 검색
let myString4: String = "Swift Programming"
if myString4.contains("Swift") { //true or false 반환
    print("Swift 문자열 찾음")
} else {
    print("Swift 문자열 못찾음")
}

if let result = myString4.range(of: "Swift") { //range객체 반환
    print("Swift 문자열 찾음")
} else {
    print("Swift 문자열 못찾음")
}

//문자열 구분자로 분리
let myString5: String = "1,2,3,4,5"
//문자열 배열로 반환
let list:[String] = myString5.components(separatedBy: ",")
for str in list {
    print( str )
}

let list2:[Substring] = myString5.split(separator: ",")
for str in list2 {
    print(str)
}

//문자열을 숫자로 바꿀때 : 형변환
let myNumberString: String = "123"
let myInt: Int? = Int(myNumberString) //nil일 수도 있음.
//숫자를 문자열로 바꿀 때
let myNum: Int = 123
let myCovertString: String = String(myNum)

//Int -> Float
let myInt2: Int = 100
let myFloat: Float = Float(myInt2)

//Float -> Int
let myInt3: Int = Int(myFloat)

//NSNumber : 숫자 타입의 모든 데이타를 래핑하는 클래스
//           Int, Float, Double, Bool
var myInt4: Int = 10
let numberObject = NSNumber(value: myInt4)
let outputFloat = numberObject.floatValue
let outputInt = numberObject.intValue

//NSValue : 값타입, 구조체, 클래스 객체를 모두 래핑할 수 있는 클래스
let rangeValue = NSRange(location: 0, length: 10)
let valueObject = NSValue(range: rangeValue)
let outputRange = valueObject.rangeValue

//문자열 치환
var myString6: String = "Swift Programming"
let resultString = myString6.replacingOccurrences(of: "Swift", with: "Cool")

//문자열 연습
//"Swift Programming" 라는 스위프트 문자열을 생성하고,
// 문자열의 갯수를 출력하시오.

var testStr: String = "Swift Programming"
print(testStr.count)
for char in testStr {
    print(char)
}
if testStr.contains("Swift") {
    print("포함됨")
} else {
     print("포함안됨")
}


let id = testStr.index(testStr.startIndex , offsetBy: 6)
testStr.insert(contentsOf:"Awesome ", at: id)

//문자열을 삭제
let removeRange2 = testStr.index(testStr.startIndex , offsetBy: 0) ...
                 testStr.index(testStr.startIndex , offsetBy: 5)
testStr.removeSubrange(removeRange2)

let testStr2: String = "banana/apple/mongo/melon"

//문자열 배열로 반환
let list3:[String] = testStr2.components(separatedBy: "/")
for str in list3 {
    print( str )
}

let myNumberString2: String = "200"
let myInt6: Int? = Int(myNumberString2)//nil일 수도 있음.

if let result = myInt6 {
    var resultInt: Int = result * 3
    print("\(resultInt)")
} else {
    print("값없네요")
}


let resultString3 = testStr.replacingOccurrences(of: "Awesome", with: "Cool")
print(resultString3)





































