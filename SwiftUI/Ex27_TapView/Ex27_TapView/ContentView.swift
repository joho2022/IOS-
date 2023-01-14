//
//  ContentView.swift
//  Ex27_TapView
//
//  Created by tjoeun on 2023/01/14.
//

import SwiftUI

struct HomeView: View {
    @Binding var currentTab: Int
    
    var body: some View {
        VStack {
            Text("Home Tap")
                .font(.system(size: 30, weight: .bold, design: .rounded))
            
            Button {
                print( self.currentTab)
                self.currentTab = 1
                print( self.currentTab)
            } label: {
                Text("Bookmark Tab으로 이동")
            }

        }
    }
}

struct ContentView: View {
    @State private var currnetTab: Int = 0
    var body: some View {
        TabView(selection: self.$currnetTab) {
            HomeView(currentTab: self.$currnetTab)
                .font(.system(size: 30, weight: .bold, design: .rounded))
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
                .tag(0)
            Text("Bookmark Tab")
                .font(.system(size: 30, weight: .bold, design: .rounded))
                .tabItem {
                    Image(systemName: "bookmark")
                    Text("Home")
                }
                .tag(1)
            Text("Video Tab")
                .font(.system(size: 30, weight: .bold, design: .rounded))
                .tabItem {
                    Image(systemName: "video")
                    Text("Home")
                }
                .tag(2)
            
        }
        //iOS 14.0 이상에서 지원
        .onChange(of: currnetTab) { index in
            print(index)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
