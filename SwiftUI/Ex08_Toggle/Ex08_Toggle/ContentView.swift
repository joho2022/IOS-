//
//  ContentView.swift
//  Ex08_Toggle
//
//  Created by tjoeun on 2023/01/07.
//

import SwiftUI

// toggle : on/off 상태를 가지는 뷰

struct ContentView: View {
    //@State : 상태변수를 만듦
    // 상태변수 : 뷰와 변수사이의 데이터를 공유함
    @State private var isToggleOn = false
    
    var body: some View {
        VStack {
            //$ : 뷰가 상태변수에 데이터를 쓰거나 읽을 때 사용
            Toggle(isOn: self.$isToggleOn) {
                Text("Toggle")
            }
            .frame(width: 110)
           Divider()
            // 단순히 상태변수를 읽기만 할때는 $를 안 써도 됨.
            if self.isToggleOn == true {
                Text("Toggle On")
            } else {
                Text("Toggle Off")
            }
            Divider()
            Toggle(isOn: self.$isToggleOn) {
                Text("Toggle")
            }
            .frame(width: 110)
            .padding()
            .toggleStyle(SwitchToggleStyle(tint: Color.orange))
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
