//
//  ContentView.swift
//  Ex13_Picker
//
//  Created by tjoeun on 2023/01/07.
//

import SwiftUI

struct ContentView: View {
    @State private var nameIndex = 0
    var names = ["Tom", "John", "haha", "peter", "hoho"]
    
    var body: some View {
        VStack {
            Picker(selection: self.$nameIndex, label: Text("Names")) {
                ForEach( 0..<names.count) {
                    index in
                    // tag : 텍스트뷰에 임시번호 0부터시작하는 정수
                    Text(self.names[index]).tag(index)
                }
            }
            //iOS14부터 지원함.
            //.pickerStyle(SegmentedPickerStyle())
            //.pickerStyle(.menu) //기본값
//            .pickerStyle(.inline)
            .pickerStyle(.wheel)
            //.pickerStyle(.segmented) 밑에랑 같은거임
//            .pickerStyle(SegmentedPickerStyle())
            Text("피커 인덱스: \(self.nameIndex)")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
