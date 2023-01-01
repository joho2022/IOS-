//: [Previous](@previous)

import Foundation

// 클로저의 변형 : 유연성

// 일반함수의 매개변수로 클로저를 받는다.
func calc(a: Int, b: Int, method: (Int, Int) -> Int) -> Int {
    return method(a, b)
}
// 실행시 클로저(코드블럭)을 바로 선언하는 방법(자바: 익명함수)
// 장점 : 일회성 클로저에 굳이 클로저 변수 선언을 할 필요가 없다.

var result = calc(a: 10, b: 20, method: {
    (a: Int, b: Int) -> Int in
    return a + b
})

// 클로저의 코드 생략 : 간결한 표현 vs  초보자는 헷갈린다.
// 1. 반환형 생략 가능 - 타입 추정
result = calc(a: 10, b: 20, method: {
    (a:Int, b:Int) /* -> Int */ in
        return a + b
})

// 2. 매개변수 생략 가능
result = calc(a: 10, b: 20, method: {
    /* (a: Int, b: Int) in  */
    return $0 + $1  // $0 : 첫번째 매개변수, $1 : 두번째 매개변수
})

// 3. return 생략 가능
result = calc(a: 10, b: 20, method: {
    /* return */ $0 + $1
})

// 후행 클로저(Trailing Closer) : 함수를 소괄호로 미리 닫고, 클로저를 마지막 매개변수로 선언한다.
// 일반함수의 클로저 전달

result = calc(a: 10, b: 20, method: {
    (a:Int, b: Int) -> Int in
    return a + b
})

result = calc(a: 10, b: 20) { (a:Int, b: Int) -> Int in
    return a + b
}

//후행 클로저에서 반환형 생략 가능
result = calc(a: 10, b: 20) {
    (a:Int, b: Int) /* -> Int */ in
    return a + b
}

//후행 클로저에서 매개변수 생략 가능
result = calc(a: 10, b: 20) {
    /* (a:Int, b: Int)  in */
    return $0 + $1
}

//후행 클로저에서 return 생략가능
result = calc(a:10, b:20) {
   /*return*/ $0 + $1
}
