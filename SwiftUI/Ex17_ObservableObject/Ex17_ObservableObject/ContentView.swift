//
//  ContentView.swift
//  Ex17_ObservableObject
//
//  Created by tjoeun on 2023/01/14.
//

import SwiftUI


struct ContentView: View {
    //@State, @Binding : Struct간의 데이터 공유
    //ObservedObject : Struct와 Class와의 데이터 공유
    //struct : ObservedObject
    //class  : ObservableObject, @Published
    
    @ObservedObject var myTimer = MyTimer2()
    
    var body: some View {
    
        Text("Timer : \(myTimer.count)")
            .font(.largeTitle)
        
    }
}

class MyTimer2: ObservableObject {
    @Published var count: Int = 0
    init() {
        //타이머는 클래스에만 있음.
        //scheduledTimer : 주기적인 코드실행을 한다. ex) 1초마다 ~
        //timeInterval:  시간주기
        //repeats : 반복여부
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) {
            timer in
            self.count += 1
        }
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
