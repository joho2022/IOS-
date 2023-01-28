//
//  ContentView.swift
//  Ex29_forEach
//
//  Created by tjoeun on 2023/01/28.
//

import SwiftUI

//구조체/클래스에서 객체생성시 내부변수를 초기화할 때
// 1. init() 함수 : 객체생성시 자동호출
// 2. 생성자 함수 : 객체생성시 매개변수로 값을 주입한다.
// 3. Setter 함수 : 객체 생성후 따로 호출

// Hashable : 해쉬테이블을 구성하도록 허용.
struct Fruit : Hashable {
    var name : String
}

// Identifiable : 자신이 가지고 있는 ID를 사용한다. \.id 대체용도 이게 더 나아보임
struct Fruit2 : Identifiable {
    //UUID : 거의 유일한 아이디값을 32자 16진수 문자열로 만들어줌.
    let id = UUID() // "550e8400-e29b-41d4-a716-446655440000"
    var name : String
}

struct ContentView: View {
    var fruits : [String] = ["🍎", "🥝", "🍐", "🍊", "🍏"]
    var fruits2 : [Fruit] = [ Fruit(name: "🍎"),
                              Fruit(name: "🥝"),
                              Fruit(name: "🍐"),
                              Fruit(name: "🍊"),
                              Fruit(name: "🍏")
    ]
    
    var fruits3 : [Fruit2] = [ Fruit2(name: "🍎"),
                              Fruit2(name: "🥝"),
                              Fruit2(name: "🍐"),
                              Fruit2(name: "🍊"),
                              Fruit2(name: "🍏")
    ]
    
    let myCloser = { (num:Int) in
        Text("Num: \(num)")
    }
    let array: [Int] = [1,2,3,4,5,6,7,8,9]
    
    var body: some View {
        ScrollView {
            VStack {
                //ForEach에서는 Close Range는 안됨 1...10
                //Open Range만 가능함.
                // 직접 클로저를 매개변수로 넣음
                ForEach(1..<10, content: { (num: Int) in
                    Text("Num: \(num)")
                })
                Divider()
                // 클로저 변수를 대입
                ForEach(1..<10, content: myCloser)
                Divider()
                // 후행 클로저
                ForEach(1..<10) { (num: Int) in
                    Text("Num: \(num)")
                }
                Divider()
                // 후행 클로저 - 매개변수 타입 생략
                ForEach(1..<10) { num in
                    Text("Num: \(num)")
                }
                Divider()
                //배열을 이용한 여러 뷰 생성
                //요소간 구별을 위한 인덱스(ID)가 필요하다.
//                 \.self : 배열의 자체 데이터를 인덱스로 사용하겠다.
//                ForEach(array, id: \.self) { num in
//                    Text("Num: \(num)")
//                }
//
                
//                ForEach(fruits, id: \.self) { fruit in
//                    Text("과일 : \(fruit)")
//                }
//
                
                //                구조체가져와서 했을 때
                //Hashable이 필요하다는 에러발생!
                //해쉬(테이블) : 중복되지 않는 ID로 인덱스를 구성한 것
//                ForEach(fruits2, id: \.self) { fruit in
//                    Text("과일 : \(fruit.name)")
//                }
                
                // \.id : 자신이 가지고 있는 ID값을 사용하겠다.
                               ForEach(fruits3, id: \.id) { fruit in
                                   Text("과일 : \(fruit.name)")
                               }
                               // id 매개변수 생략 시
                               //Identifiable 에러 발생! :
                               ForEach(fruits3) { fruit in
                                   Text("과일 : \(fruit.name)")
                               }
            }//Vstack
        }
    }//some View
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
