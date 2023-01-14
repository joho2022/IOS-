//
//  ContentView.swift
//  Ex18_ViewModel
//
//  Created by tjoeun on 2023/01/14.
//

import SwiftUI

//소프트웨어 개발 방법론
//MVC패턴 ( Model, View, Controller ) : 모델(데이터), 뷰(UI), 컨트롤(제어코드)로 화면을 구현하는 방법

//MVVM패턴(Model, View, ViewModel) : 모델(데이터), 뷰(UI), 뷰모델(의존성이 없는 중간참조영역-느슨한 연결)

// Model
struct User {
    var name: String
    var age: Int
}
// ViewModel
class ViewModel: ObservableObject {
    @Published var hong: User = User(name: "홍길동", age: 30)
}
// View
struct ContentView: View {
    @ObservedObject var viewModel = ViewModel()
    
    var body: some View {
        VStack {
            Text("name : \(self.viewModel.hong.name)")
            Text("age : \(self.viewModel.hong.age)")
            
            Button {
                self.viewModel.hong.name = "신사임당"
                self.viewModel.hong.age = 35
            } label: {
                Text("정보변경")
            }

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
