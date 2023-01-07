//: [Previous](@previous)

import Foundation

// 검증과 보호(Assert & Guard)
// Assert함수 : 단정함수, 검증함수
// Guard let ~ else 구문

// 그래서 왜 써요? assert문을 통해 단위테스트 및 검증의 용도로 사용함.
var myInt: Int = 10
// myInt가 10이면 통과, 아니면 통과못하고 예외처리함.
assert( myInt == 10, "myInt가 10이 아님")
//assert( myInt == 20, "myInt가 10이 아님") //단정함수는 에러를 만들어준다.

// assert문 : 조건식이 false면 통과, true면 오류!

func myFuncAssert(age: Int?) {
    assert( age != nil, "age가 nil임. 오류!!")
    assert( !(age! <= 0 || age! > 120), "age가 정삼범위가 아님, 오류!" )
    print("입력된 나이는 \(age!)입니다.")
}
myFuncAssert(age: 30)



// assert를 상용서비스보다 테스트시 사용하는 것이 좋겠다.

// guard let ~ else문을 통해 값을 검증
func myFuncGuard(age: Int?) {
    guard let tempAge = age, tempAge >= 0, tempAge < 120 else {
// 이론탈출
        print(" age가 nil입니다. ")
        return
    }
    print("입력된 나이는 \(age!)입니다.")
}

myFuncGuard(age: nil)
myFuncGuard(age: 20)
myFuncGuard(age: -30)
