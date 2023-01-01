//: [Previous](@previous)

import Foundation

// 형변환 type casting

let myInt: Int = 10
let myDouble: Double = 3.14
let myString: String = "123abc가나다"

//Int -> Double
let myDouble2: Double = Double(myInt)
myDouble2 is Double
//Double -> Int
let myInt2: Int = Int(myDouble2)
myInt2 is Int

//Int -> myString
let myString2: String = String(myInt)
myString2 is String

//String -> Int
//문자열을 숫자로 바꾸려면 아라비아 숫자만 가능
//형변환이 실패하면 nil값을 반환
let myInt3: Int? = Int( "01234" )
//옵셔널 바인딩 사용
if let newInt = Int("01234") {
    //nil이 아닐때
    print( newInt )
} else {
    print("형변환 실패!")
}

//클래스의 형변환 (다형성 지원)
//다형성 : 상속관계에서 여러 클래스 타입을 가질 수 있는 것
//.  예) child객체가 Child타입과 Parent타입을 모두
//       가질수 있다.
//.      Child타입일 때: 다운스케일
//       Parent타입일 때: 업스케일

class GrandFafa {
    var grandfafa_name = "할아버지"
    func breth() {
        print("숨쉬기")
    }
}

class Fafa: GrandFafa {
    var fafa_name = "아버지"
    func work() {
        print("일하기")
    }
}

class Son: Fafa {
    var child_name = "아들"
    func play() {
        print("놀기")
    }
}

var son: Son? = Son()
son is Son
son is Fafa
son is GrandFafa

//다형성을 이용한 형변환
// as? : nil이 아닐때만 형변환한다.
// 성격 : 다운캐스팅
var castedSon = son as? Fafa
castedSon is Fafa
var castedSon2 = son as? GrandFafa
castedSon2 is GrandFafa

// ?? 연산자 : nil이면 기본값으로 설정함
var castedSon3 = son as? Fafa ?? Fafa()
castedSon3 is Fafa

// as! 연산자 : 강제형변환 연산자 - nil임을 각오하고 형변환
// 성격.    : 다운캐스팅
var forcedCasted = son as! Son
var forcedCasted2 = son as! Fafa
var forcedCasted3 = son as! GrandFafa
forcedCasted is Son
forcedCasted2 is Fafa
forcedCasted3 is GrandFafa
