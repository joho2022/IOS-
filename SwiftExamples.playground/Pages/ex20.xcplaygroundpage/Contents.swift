//: [Previous](@previous)

import Foundation

//튜플 Tuple : 간단한 자료형
//          : 배열처럼 자주 사용하면 안됨.
// 1. 배열과 딕셔너리의 중간 형태, 간단하게 사용하고 버리는 용도
// 2. 형식 : (값1, 값2, 값3)
//          (이름1 : 값1, 이름2 : 값2, 이름3: 값3)
// 3. 주사용용도 : 함수의 리턴값이 항상 1개인데, 여러개로 반환 받을 수 있다는 장점이 있다.

var myTuple = (10, "Tom", 3.16)
myTuple.0
myTuple.1
myTuple.2

//튜플에 이름을 지정한다.
let (count, name, value) = myTuple
count
name
value

//튜플에 이름을 붙여서 선언
let myTuple2 = (count: 10, name: "tom", value: 3.14)
myTuple2.name
myTuple2.count
myTuple2.value

//함수의 반환형으로 튜플을 전달해보자
func myFunc() -> Int {
    return 10
}

var result = myFunc()

func myFunc2() -> (Int, String, Double) {
    return (10, "tom", 3.16)
}

var resultTuple = myFunc2()
resultTuple.0
resultTuple.1
resultTuple.2

// 튜플의 임시 타입 지정 - 타입얼라이스
typealias MyTupleType = (Int, String, Double)
let myTuple3: MyTupleType = (10, "tom", 3.16)
myTuple3
