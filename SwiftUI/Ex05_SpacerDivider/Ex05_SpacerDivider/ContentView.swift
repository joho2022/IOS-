//
//  ContentView.swift
//  Ex05_SpacerDivider
//
//  Created by tjoeun on 2023/01/07.
//

import SwiftUI

// Spacer : 여유 공간을 채워주는 뷰
// Divider : 수평선 뷰
struct ContentView: View {
    var body: some View {
        VStack {
            VStack {
                Spacer()
                Color.yellow.frame(height: 100)
                Spacer()
                Color.blue.frame(height: 100)
                Spacer()
            }
            .border(Color.red, width: 10)
            VStack {
                Divider()
                Color.yellow.frame(height: 100)
                Divider()
                Color.blue.frame(height: 100)
                Divider()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
