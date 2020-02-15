import UIKit

//ex13
//콜렉션 Collection 14장 213쪽
//여러 형태의 자료를 제어하기위해 모아놓은 것(콜렉션)
//종류 3가지
//1. 배열 - Array (배열+리스트)   순서없음 자바: ArrayList(LinkedList)
//2. 딕셔너리 - Dictionary      순서없음 자바: Map(HashMap)
//3. 집합 - Set (값 중복허용 않음) 순서없음 자바 : Set(HashSet)

//Array : 같은 타입의 데이터가 나란희 나열된 형태의 자료형
//.     Int배열, String배열, 구조체 배열, 클래스(객체) 배열
//
var myArray: [Int] = []
//요소를 추가
myArray.append(10)
myArray.append(20)
myArray.append(30)

print(myArray)
dump(myArray)
debugPrint(myArray)

//각 요소에 접근
print(myArray[0]) //첫번째 요소에 접근
print(myArray[1]) //두번째 요소에 접근
print(myArray[2]) //세번째 요소에 접근

//어떤 요소를 포함하고 있는지 true/false로 반환
myArray.contains(20)
myArray.contains(30)

//배열의 갯수
myArray.count
//요소의 삭제
myArray.remove(at: 0)
print(myArray)
//요소 마지막 삭제
myArray.removeLast()
print(myArray)
//요소 첫번째 삭제
myArray.removeFirst()
//요소 전체삭제
myArray.removeAll()
print(myArray)

//특정 위치에 요소 추가
myArray.insert(50, at: 0)
myArray.insert(60, at: 1)
print(myArray)

var myArray2: [Int] = [] // 1순위
var myArray3: Array<Int> = [] //2순위
var myArray4: Array<Int> = Array<Int>()
var myArray5 = Array<Int>()
var myArray6 = [Int]()

myArray2.append(10)
myArray2.append(20)

//빈 배열인지 true/false 로 리턴
if myArray2.isEmpty {
    print("빈 배열")
} else {
    print("비어 있지 않음")
}

//for문으로 모든 배열을 순환(조회)
for num in myArray2 {
    print(num)
}

//배열 연습문제
// names라는 문자열 타입 배열을 만들고,
// "tom"을 추가하고
// "john"을 추가하고,
// "hana"를 추가하고,
// 배열의 갯수를 출력하시오.
//모든 요소를 순환하여 출력하시오
// "john"만 출력하시오.
// "tom"을 가지고 있는지 true/false로 출력하시오.
// "hana"만 삭제하고 배열을 출력하시오.
// 맨 처음에 "hong"을 추가하고 출력하시오.

var arrayName: [String] = []
arrayName.append("tom")
arrayName.append("john")
arrayName.append("hana")
arrayName.count
for name in arrayName {
    print("name = \(name)")
}
print("john => \(arrayName[1])")
arrayName.contains("tom")
arrayName.remove(at: 2)
for name in arrayName {
    print("name = \(name)")
}
arrayName.insert("hong", at: 0)
print(arrayName)


//배열 요소의 인덱스 찾아오기
//if let 옵셔널 바인딩 : 왜냐면 널일수도 있기때문에
if let index = arrayName.firstIndex(of: "tom"){
    print("tom의 위치는", index)
}

//배열관련 자료형
//NS계열 : NSArray(읽기만 가능) , NSMutableArray(추가,삭제 가능)
//Swift계열 : Array(읽기 추가 삭제 가능)

//NSArray to Array
var myNSArray = NSArray(objects: "a","b","c")
var myNSMutableArray = NSMutableArray(array: myNSArray)
//as : 왼쪽에서 오른쪽으로 형변환
//as? : 왼쪽에서 오른쪽으로 형변환하되, 널이 아닌 경우에만 수행
if let mySwiftArray = myNSMutableArray as NSArray as? [String] {
    print(mySwiftArray)
}

//Array to NSMutableArray
var mySwiftArray2: [String] = ["a","b","c"]
var myNSMutableArray2 = NSMutableArray(array: mySwiftArray2)
//Array to NSArray
var myNSArray2 = NSArray(array: mySwiftArray2)

//배열의 값 비교
let myArray7 = [1,2,3,4,5] //타입 추정 [Int]
let myArray8 = [1,2,3,4,5]
if myArray7 == myArray8 {
    print("값이 서로 같음")
} else {
    print("값이 서로 다름")
}

//배열의 값 치환(바꾸기)
var myArray9 = ["A","B","C"]
myArray9.replaceSubrange(0..<2, with: ["X","Y"])

//배열의 값 정렬하기 sort
var myArray10 = ["A","C","B"]
let sortedArray = myArray10.sorted()
//반대로 정렬하기
let reversedSortedArray = Array(myArray10.sorted().reversed())

//특정 범위에서 값을 추출해서 배열로 저장하기
let rangeArray = sortedArray[0...1]

//구조체(객체)를 배열에 넣고 조회하기
//구조체(클래스, 열거형) : 변수와 함수를 묶어 놓은 데이타 구조
struct MyStruct {
    var name = "hong"
    var age = 30
    func myFunc(){
        print("myFunc() 호출됨")
    }
}

var myStructArray: Array<MyStruct> = []
//스트럭트 객체를 만들어 넣는다.
var myStruct1 = MyStruct() // new 키워드가 없음.
//객체이름 뒤에 점.을 찍으면, 맴버 변수, 함수에 접근할 수 있다.
myStruct1.name = "tom"
myStruct1.age = 40
var myStruct2 = MyStruct()
myStruct2.name = "john"
myStruct2.age = 20
//배열에 넣는다
myStructArray.append(myStruct1)
myStructArray.append(myStruct2)

//객체 배열에 접근할때
var item1 = myStructArray[0] //첫번째
item1.name
item1.age
item1.myFunc()

//프론트엔드 <--- HTTP통신 ---> 백엔드
//앱 , 웹                    서버(PHP,JSP,JAVA,ASP,NodeJS)
//          http request(GET,POST) --->
//          http response(HTML, JSON, XML)

//JSON 응답 - 키 + 값(key,value) -> 딕셔너리(앱) -> 스트럭트 -> 스트럭트 배열

//딕셔너리 Dictionary(사전) - 단어:설명
// [ "Key1" : "value1" , "key2" : "value2" ]
// 순서가 없음(0,1,2인덱스로 접근못함)
let myDic : [String: String] = ["key1" : "value1" , "key2" : "value2" ]

//딕셔너리 요소에 접근하는 법
//키로 값을 가져온다.
print(myDic["key1"]!)
print(myDic["key2"]!)

var nameDic = ["name1":"홍길동" ,"name2":"변사또","name3":"춘향이"]
//새로운 요소 추가
nameDic["name4"] = "이몽룡"
print(nameDic)

for (key, value) in nameDic {
    print(key, value)
}

//딕셔너리 요소의 삭제
nameDic.removeValue(forKey: "name2")
print(nameDic)

//딕셔너리 갯수
nameDic.count

//NS계열 : NSDictionary (수정불가), NSMutableDictionary (추가 삭제가능)
//Swift계열 : Dictionary

//집합 Set : 데이터의 중복은 허용하지 않음
var mySet: Set<Int> = []
mySet.insert(10)
mySet.insert(20)
mySet.insert(30)
print(mySet)
//만약에 중복된 값을 넣으면, false값을 리턴하면서 무시됨.
let (inserted, after) = mySet.insert(30)
print(inserted, after)
print(mySet)

//비어있는가
mySet.isEmpty
//포함하는가
mySet.contains(30)

var mySet2: Set<Int> = [10,20,30]
var mySet3: Set<Int> = [30,40,50]
//합집합
var setSum = mySet2.union(mySet3) //중복제거후 합친 집합
//교집합
var setCrodd = mySet2.intersection(mySet3) //중복되는 집합
//차집합
var setSub = mySet2.subtracting(mySet3) // A - B 집합

for item in mySet2 {
    print(item)
}

//print(mySet[0]) error

//갯수세기
mySet2.count
//































