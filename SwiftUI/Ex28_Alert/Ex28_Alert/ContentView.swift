//
//  ContentView.swift
//  Ex28_Alert
//
//  Created by tjoeun on 2023/01/28.
//

import SwiftUI

struct ContentView: View {
    @State private var showingAlert1 = false
    @State private var showingAlert2 = false
    
    var body: some View {
        VStack {
            Button {
                self.showingAlert1 = true
            } label: {
                Text("Show Alert")
            }
            // 단순히 읽기만 할거면 그냥 쓰면 되지만 , 바꿔줄려면 $를 붙여야 됨.
            .alert(isPresented: $showingAlert1) {
                Alert(title: Text("얼럿창 제목"),
                      message: Text("얼럿창 내용입니다."),
                      dismissButton: .default(Text("확인"))
                )
            }
            Divider()
            Button {
                self.showingAlert2 = true
            } label: {
                Text("Show Alert2")
            }
            .alert(isPresented: $showingAlert2) {
                Alert(title: Text("얼럿창 제목"),
                      message: Text("얼럿창 내용입니다."),
                      primaryButton: .destructive(Text("확인"), action: {
                    print("Ok tapped")
                }),
                      secondaryButton: .cancel(Text("취소"), action: {
                    print("Cancel tapped")
                }))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
