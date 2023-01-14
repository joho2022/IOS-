//
//  ContentView.swift
//  Ex21_AppStorage
//
//  Created by tjoeun on 2023/01/14.
//

import SwiftUI

// AppStorage : 핸드폰에 데이터 저장, 비휘발성 : 앱종료시에도 저장됨.
@available(iOS 14.0, *) //iOs 14.0이상 버전에서 사용가능
struct LoginCheck: View {
    @AppStorage("isLoggedIn") var isLoggedIn: Bool = UserDefaults.standard.bool(forKey: "isLoggedIn") //가능한 3개 다 맞추자 isLoggedIn
    var body: some View {
        if isLoggedIn {
            Text("로그인된 상태입니다.")
            Button {
                self.isLoggedIn = false
            } label: {
                Text("로그아웃")
            }
        } else {
            Text("로그아웃 상태입니다.")
            Button {
                self.isLoggedIn = true
            } label: {
                Text("로그인")
            }
            
        }
    }
}

struct ContentView: View {
    var body: some View {
        VStack {
            LoginCheck()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
