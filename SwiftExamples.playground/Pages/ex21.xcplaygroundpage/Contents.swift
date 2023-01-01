//: [Previous](@previous)

import Foundation

//열거형 Enum

//열거형 사용 이유 : 값에 의미를 부여할 때, 숫자보다는 문자로 기억하는 것이 쉽기 때문이다.

// 가위 바위 보 게임을 만든다면,
enum SRP {
    case sissors
    case rock
    case paper
}

var player1: Int = 0 // 0 가위 1 바위 2 보로 선언
var player2: SRP = SRP.sissors

// Swift에서는 열거형을 확장하여, 클래스/ 구조체/ 열거형에 함수를 넣을 있도록 했다.
// 열거형 타입 선언
enum Weekday {
    case mon
    case tue
    case wed
    case thu, fri, sat, sun
}

//열거형 변수 선언
var day: Weekday = Weekday.mon
//열거형은 추입 추정에 의해서, 열거형 타입을 생략 가능함
day = Weekday.mon
day = .mon

//열거형과 switch문과 연동
switch day {
case .mon, .tue, .wed, .thu:
    print("월화수목 입니다.")
case .fri, .sat:
    print("금토입니다.")
default:
    print("일요일입니다.")
}


enum Hero: Int {
    case Ironman = 0
    case Spiderman = 1
    case Hulk //자동으로 2가 올라감
}

Hero.Ironman
Hero.Spiderman
Hero.Hulk
Hero.Ironman.rawValue
Hero.Spiderman.rawValue
Hero.Hulk.rawValue

// 열거형 안에 함수를 넣을 수 있다.
enum Month{
    case jan, fab, mar
    case apr, may, jun
    case jul, aug, sep
    case oct, nov, dec
    
    func printMonth() {
        switch self {
        case .jan, .fab, .mar:
                   print("1,2,3월")
               case .apr, .may, .jun:
                   print("4,5,6월")
               case .jul, .aug, .sep:
                   print("7,8,9월")
               case .oct, .nov, .dec:
                   print("10,11,12월")
        }
    }
}

Month.apr.printMonth()
