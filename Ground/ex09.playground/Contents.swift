import UIKit

//ex09
//반복문 105쪽
//for문 while문 repeat-while문
// 70%   28%       2%

//for문
//for(초기화; 조건문; 증감문) -> 없어짐!

for i in 1...10 {
    print(i) //1~10
}

for i in 20...30 {
    print(i)
}

for i in (10...50).reversed() {
    print(i)
}

for i in 1...100 {
    if i % 2 == 0{ //2의 배수조건
        print(i)
    }
}

for i in stride(from: 0, to: 100, by: 2) {
    print(i)
}
for i in stride(from: 100, to: 0, by: -2) {
    print(i)
}

//for문으로 배열 순환(모든 요소에 접근)
var arrayInt = [10,20,30,40,50]
for intValue in arrayInt {
    print(intValue)
}

//for문으로 딕셔너리(키-값 데이타구조) 순환하기
let dicPersons = ["john" : 1000, "tom" : 2000]
for (name, money) in dicPersons {
    print(name, money)
}

//while문
//초기화
//while 조건문 {
// 수행문
// 증강문 // 맨끝에
//}

var index = 0
while index < 10 { //조건이 참일때 블럭안이 수행됨.
    print(index)
    index += 1
}

//for문, while문
// j라는 변수를 1부터 30까지 출력하시오.
var j: Int = 1
for i in j...30 {
    print(i)
}

while j < 31 {
    print(j)
    j += 1
}

//break문 : 반복 루프를 중단하고, 빠져나감
//continue문 : 반복 루프를 중단하고, 맨처음으로 가서 다음 루프 시작.

//무한 루프 : infinite loop
j = 0
while true {
    if j > 10 { //탈출조건
        break
    }
    j += 1
}

for i in 1...100 {
    
    if i % 2 == 0 { //2의 배수, 짝수이면 루프 처음으로 이동, 다음루프 실행.
        continue
    }
    print(i)
}

//break문 , continue문 연습
//i 1부터 100까지 증가하면서
// 2의배수가 아니고, 3의 배수도 아니고, 5의 배수도 아닌 수들만 출력하시오.
// 그리고 i가 90이상이면, 반복루프를 중단하시오. break

var k: Int = 1
while k < 101 {
    if k > 89 {
        break
    }
    if k % 2 != 0 && k % 3 != 0 && k % 5 != 0{
        print(k)
    }
    k += 1
}

for i in 1...100 {
    if i%2 == 0{
        continue
    }
    else if i%3 == 0{
        continue
    }
    else if i%5 == 0{
        continue
    }
    if i > 89 {
        break
    }
     print( i )
}

//repeate-while문 적어도 한번은 수행함
//초기화
//repeat {
// 수행문
// 증강문
// } while( 조건문 )

index = 0
repeat {
    print(index)
    index += 1
    
} while (index < 10)

//이중 for문 : for문 안에 for문이 들어가는 구조
for i in 2...9 {
    for j in 1...9 {
        print("\(i) * \(j) =  \(i * j)")
    }
}

//다중 for문에서 한번에 루프 탈출하기
//break문은 자신이 해당하는 루프만 탈출함.
//전체 루프 탈출시에는 레이블을 사용함. 124쪽

OUTER : for i in  1...100 {
    for j in 1...100 {
        if i > 3 {
            break OUTER
        }
        print("\(i) , \(j)")
    }
}











































