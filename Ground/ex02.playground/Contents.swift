import UIKit

//page 47
//1장 변수와 상수
//변수 Variable : 변하는 수(수학) , 컴퓨터에서는 메모리공간(4byte). 숫자나 문자열 저장.
//상수 Constant : 변수이면서, 값이 한번 정해지면 못바꾸는 변수.
//변수 var Variable
//상수 let Letter

//변수의 선언
//var 변수이름: 자료형(타입) = 값(변수)
var myVar: Int = 10

var myVar1 = 10 // 자료형을 생략할 수 있음( 타입 추정 )

var myVar2: Int //선언만 하고 초기값은 나중에 대입
myVar2 = 10

var myVar3, myVar4, myVar5: Int
myVar3 = 10
myVar4 = 20
myVar5 = 30

//변수 이름 짓는 법
//소문자로 시작해서 대문자와 소문자를 섞어서 사용 : Camel Text (낙타등)
var myStudentCountAndLength: Int = 10
//팁 : 영문법의 순서대로 : 주어 동사 목적어
//나는 간다 학교에 오늘
//iGotoSchoolToday
//한국어 주어 목적어 동사 TodayISchoolGoto
//팁 : 코드를 읽어들이는 시간 80% 코드를 쓰는 시간 10~20%
// 품질좋은 코드 : 가독성이 좋은코드 , 구조적으로 잘 짜여진 코드
//팁 : 이해하기 쉽게 길게 이름을 지어도 됨.
// var a; => var countOfStudentToday;
//Clean Code 책

//상수
//일단 값이 주어지면 변경이 불가함.
let myConst: Float = 3.141592
//용도 : 고정된 값을 사용할 때
let PI: Float = 3.141592 //원주율
let G: Float = 9.8 //m/s^2 중력가속도












