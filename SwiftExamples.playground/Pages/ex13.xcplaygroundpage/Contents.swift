//: [Previous](@previous)

import Foundation

// 값(Value) 타입 vs 참조(Reference, 주소) 타입
// 값 타입 변수 : 변수 안에 실제 값을 가지고 있음.
//           : 대입연산자 =을 통해 값 복사가 가능함.
 
// 참조 타입 변수 : 변수 안에 실제 값이 아닌 주소값을 가지고 있음.
//            : 64비트 운영체제에서는 8바이트 주소값을 가짐
//            : 대입연산자 =로 복사하면 주소값이 복사됨.

// 스위프트에서
// 값 타입 : 기본자료형( Int, Float, Double, Bool, String)
//       : 구조체로 설계됨. 대입문으로 복사하면 값이 복사됨.
//       : 구조체, 열거형, 딕셔너리(키-벨류), 배열, 집합
// 참조 타입 : 클래스(객체), NS류의 자료형들( NSString, NSInt - 오브젝트C )

// NS : Next Step의 약자, 스티븐 잡스가 만든 회사이름. iOS의 초창기 버전을 만들고, SDK(UIKit)의 기초를 만듦

// 구조체 : struct - 변수와 함수를 담은 코드 구조. 값타입. 값복사 편함. 상속안됨.
// 열거형 : enum - 변수와 함수 사용가능. 값타입. 값복사 편함. 상속 안됨.
// 클래스 : class - 변수와 함수 사용 가능. 참조타입. 값복사 불편함. 상속이 가능함.

struct MyStruct {
    var age = 30
}

class MyClass {
    var age = 30
}

// 구조체의 객체 생성
var myStruct = MyStruct() // new 라는 키워드없음.
var myStruct2 = myStruct
myStruct2.age = 33
myStruct.age
myStruct2.age
// myStruct와 myStruct2는 서로 다른 메모리공간에 각각 생성됨.

// 클래스의 객체 생성
let myClass = MyClass()
let myClass2 = myClass
myClass2.age = 33
myClass.age
myClass2.age
// myClass와 myClass2의 주소값이 동일함. 같은 메모리공간을 가르킴.


