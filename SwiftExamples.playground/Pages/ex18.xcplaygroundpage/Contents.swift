//: [Previous](@previous)

import Foundation

//연습문제 7 : DM으로 전달해주세요~
//사칙연산을 수행하는 4개의 클로저변수(함수)를 만들고
//일반함수에 전달하여, 각각 사칙연산을 수행하도록 하자.

//더하기 클로저 : add
//빼기 클로저 : sub
//곱하기 클로저 : mul
//나누기 클로저 : div
//매개변수는 정수형 2개, 반환형은 Double 1개

var add : (Int, Int) -> Double = {
    (a:Int, b: Int) -> Double in
    return Double(a + b)
}

var sub : (Int, Int) -> Double = {
    (a:Int, b: Int) -> Double in
    return Double(a - b)
}

var mul : (Int, Int) -> Double = {
    (a:Int, b: Int) -> Double in
    return Double(a * b)
}
var div : (Int, Int) -> Double = {
    (a:Int, b: Int) -> Double in
    return Double(a / b)
}

func calc(a: Int, b: Int, opMethod: (Int, Int) -> Double ) -> Double {
    opMethod(a,b)
}

var result = calc(a: 20, b: 5, opMethod: add)
result = calc(a: 20, b: 5, opMethod: sub)
result = calc(a:20, b:5, opMethod: mul)
result = calc(a:20, b:5, opMethod: div)
