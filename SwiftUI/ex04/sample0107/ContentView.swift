//
//  ContentView.swift
//  sample0107
//
//  Created by tjoeun on 2023/01/07.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ZStack { //상하방향 정렬
                //edgesIgnoringSafeArea : 상하좌우의 모서리 부분까지 뷰를 표시하겠다.
                Color.yellow
                    .edgesIgnoringSafeArea(.all)
                Color.red.frame(width: 200, height: 200)
                Color.blue.frame(width: 100, height: 100)
                Color.white.frame(width: 200, height: 20)
                Color.white.frame(width: 20, height: 200)
                
            }
            .border(Color.red, width: 20)
            HStack{
                Text("Hello").font(.caption)
                Text("Hello").font(.title)
                Text("Hello").font(.largeTitle)
            }
            .padding(0)
            .border(Color.red, width: 3)
            Divider()
            VStack(alignment: .trailing) {
                Text("Hello World")
                    .border(Color.red, width: 1)
                Text("Hello ")
                    .border(Color.red, width: 1)
                Text("Hi")
                    .border(Color.red, width: 1)
            }
            .border(Color.red, width: 1)
            
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
