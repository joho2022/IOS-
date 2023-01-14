//
//  ContentView.swift
//  Ex26_LifeCycle
//
//  Created by tjoeun on 2023/01/14.
//

import SwiftUI

struct ContentView: View {
    //iOS 14.0부터 지원. 백그라운드, 포그라운드, 인액티브(얼람이나 전화와서 비활성화되는)
    @Environment(\.scenePhase) var scenePhase
    
    init(){
        print("ContentView init")
    }
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: DetailView()) {
                    Text("Detail View")
                }
            }
            .onAppear{
                print("ContentView onAppear")
            }
            .onDisappear {
                print("ContentView onDisAppear")
            }
            .onChange(of: scenePhase) { newPhase in
                if newPhase == .inactive {
                    print("inactive")
                } else if newPhase == .active {
                    print("active")
                } else if newPhase == .background {
                    print("background")
                }
            }
        }
    }
}

struct DetailView: View {
    init(){
        print("Detail init")
    }
    var body: some View {
        VStack {
            Text("Detail View")
        }
        .onAppear{
        print("Detail onAppear")
        }
        .onDisappear {
            print("Detail onDisappear")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
