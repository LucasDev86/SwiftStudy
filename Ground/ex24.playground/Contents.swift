import UIKit

//ex24
//제네릭 (Generics) 26장
//타입을 여러 형태로 주입하기 위한 심볼
//함수, 구조체, 클래스, 열거형에서 사용 가능함.

struct Calc<TYPE> {
    var myParam: TYPE
    init(param: TYPE) {
        self.myParam = param
    }
}

var myCalc1 = Calc<Int>(param: 10)
myCalc1.myParam
var myCalc2 = Calc<String>(param: "파라미터")
myCalc2.myParam

//사용예)
let array1: Array<Int> = []
let array2: Array<String> = []


