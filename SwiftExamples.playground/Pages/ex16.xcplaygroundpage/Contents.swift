//: [Previous](@previous)

import Foundation

//콜렉션 Collection(모음 - 라이브러리)
//1. 리스트 - List(배열+리스트)
//        -> 배열: 같은 타입의 데이터를 순차적으로 나열해 놓은 구조
//        -> 리스트: 순차적인 데이터 구조인데, 추가/삭제가 편리하다.
//2. 딕셔너리 - Dictionary(키-값)
//3. 집합 - Set(집합: 중복허용안함)

//배열 Array : 리스트의 기능도 가지고 있음.
//배열의 선언방법
var myArray1 : Array<Int> = Array<Int>() //타입명시
var myArray2 : Array<Int> = [] //타입명시
var myArray3 : [Int] = [] //타입명시
var myArray4 = Array<Int>() //타입추정
var myArray5 = [Int]() //타입추정

//정수형 1차배열
var myArray6: [Int] = [10, 20, 30]
myArray6.append(40)
myArray6.append(50)
myArray6.append(60)
print(myArray6)
dump(myArray6)

// 포함하고 있는가?
myArray6.contains(60)
// 배열의 갯수
myArray6.count
// 삭제하기
myArray6.remove(at: 0)
myArray6
myArray6.removeLast()
myArray6
myArray6.removeFirst()
myArray6
myArray6.removeAll()
myArray6

// 중간에 추가
myArray6.insert(100, at: 0)
myArray6.insert(200, at: 0)

// 배열이 비어있는가?
myArray6.isEmpty

// 배열의 순환
for num in myArray6 {
    print(num)
}

//연습문제6
//1. 문자열 제어하기
// myString에서 "Swift"문자열만 출력하시오.
var myString = "Swift Programming!"
let slicedString: [Substring] = myString.split(separator: " ")
print(slicedString[0])
//2
//    . 문자열 치환하기
// "Swift"를 "iOS"로 치환하여 출력하시오.
//                           교체전    교체후
// 문자열변수.replacingOccurences(of:, with:)함수 이용
let result = myString.replacingOccurrences(of: "Swift", with: "iOS")
print(result)

//3. 함수 만들기
// 정수 2개를 매개변수로 받는 sum이라는 함수로 선언하고,
// 정수 2개의 합산을 반환값으로 반환하는 함수를 만드시오.
// 호출후 결과값을 출력하시오. 입력값) 10, 20
func sum(x: Int, y: Int) -> Int {
    return x + y
}
print(sum(x: 10, y: 20))

//4. 매개변수 3개를 받는 함수 avr를 만들고, 평균값을 반환하고
// 반환결과 값을 출력하시오 입력값) 10, 20, 40
func avr(num1: Int, num2: Int, num3: Int) {
    (num1 + num2 + num3) / 3
}
print(avr(num1: 10, num2: 20, num3: 40))
//5. 배열다루기

// "tom"을 추가하고, "hana"를 추가하고, "joy"를 추가하고,
// 배열의 갯수를 출력하시오.
// 배열의 요소중에서 이름이 가장 긴 사람을 출력하시오.
// 모든 요소를 쉼표로 연결하여 출력하시오. 예) "tom,hana,joy"
// tom 이름 뒤에, tomas를 추가하고,
// joy를 제거하시오

var names: [String] = []
names.append("tom")
names.append("hana")
names.append("joy")

print("names array length: \(names.count)")

var nameMax = 0;
for name in names {
    if nameMax < name.count {
        nameMax = name.count
    }
}
for name in names {
    if name.count == nameMax {
        print( name )
        break;
    }
}

var concatenatedNames: String = ""
for i in 0..<names.count {
    concatenatedNames += names[i]
    if i != names.count - 1 {
        concatenatedNames += ","
    }
}
print(concatenatedNames)

names.insert("thomas", at: 1)
print(names)

names.remove(at: 3)
print(names)
