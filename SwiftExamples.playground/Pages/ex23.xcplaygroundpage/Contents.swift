//: [Previous](@previous)

import Foundation

// 옵셔널 체이닝(Chaining)
//   : nil체크를 편하게 해주기 위해 사용

// 옵셔널 변수 관련 기능
// 1. 옵셔널 바인딩 : if let문
// 2. 강제 언랩핑 : 옵셔널변수!   - nil이 아님을 확신함.
// 3. 이른 탈출  : guard let ~ else문
// 4. 옵셔널 형변환 : 이전타입 as? 이후 타입, nil이 아니면 형변환한다.
// 5. 옵셔널 기본값 : 옵셔널 변수 ?? "기본값", nil이면 기본값으로 초기화
// 6. 옵셔널 체이닝 : 객체.옵셔널변수?.name , 클래스(구조체)의 멤버변수에 접근시 nil이면 수행하지 않음.

class Contact { //연락처 클래스
    var name: String? //nil 로 초기화
    var phone: String? //nil 로 초기화
    var email: String = "test@gmail.com"
}

class Person {
    var contact : Contact? //nil 로 초기화
    init() {
        self.contact = Contact()
    }
}

let p = Person()
//옵셔널 체이닝으로 처리하는 예
//contact 옵셔널 변수가 nil이면 수행하지 않고 지나감.
p.contact?.name = "변사또"
dump(p)

//옵셔널 바인딩으로 처리하는 예
if let temp = p.contact {
    temp.name = "이몽룡"
}else {
    print("nil임")
}

dump(p)
