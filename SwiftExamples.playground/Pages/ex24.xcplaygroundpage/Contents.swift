//: [Previous](@previous)

import Foundation

//프로토콜 Protocol
//   : 가상함수의 목록 선언 예) 자바: 인터페이스
// 가상함수 : 함수의 선언만 있고, 코드 본체가 없는 것

// 클래스와 프로토콜 ( 인터페이스 ) 와의 차이점
// 1. 클래스는 상속이 한번 1개만 가능,
// 2. 프로토콜은 다중상속-한번에 여러개 상속이 가능

// 프로토콜과 자바의 인터페이스와의 차이점
// 1. 프로토콜은 변수+가상함수 선언이 가능.
// 2. 인터페이스는 가상함수만 선언됨.

// 프로토콜 선언
protocol Talkable {
    //변수-프로퍼티 선언
    var lang: String { get } //읽기속성만 존재
    var topic: String { get set } //읽기 쓰기 속성 존재
    //가상함수 선언
    func talk() //선언만 있고 코드는 없다.
}

protocol Runnable {
// 가상함수 선언
    func run()
}

struct Person: Talkable, Runnable {
    //프로퍼티 준수
    var lang: String
    var topic: String
    //가상함수 준수 : 재정의
    func talk() {
        print("talk!")
    }
    func run() {
        print("run!")
    }
}

//클래스의 함수 오버로딩 : 함수의 매개변수의 타입과 갯수를 다르게 함으로 같은 이름의 함수를 사용하도록 확장하는 것
//클래스의 함수 오버라이딩 : 부모클래스의 함수를 자식클래스에서 재정의하는 것 (부모클래스의 함수는 무시됨)

class ParentClass {
    func printName(name: String) {
        print("parent : ", name)
    }
    func printName(name: String, age: Int) {
        print("parent : ", name, ":", age)
    }
}

var parent = ParentClass()
parent.printName(name: "홍길동")
parent.printName(name: "홍길동", age: 30)

class ChildClass: ParentClass {
    //오버라이딩
    override func printName(name: String) {
        print("Child : ", name)
    }
}
var child = ChildClass()
child.printName(name: "사임당")
child.printName(name: "사임당", age: 30)
