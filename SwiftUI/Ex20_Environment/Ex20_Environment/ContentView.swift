//
//  ContentView.swift
//  Ex20_Environment
//
//  Created by tjoeun on 2023/01/14.
//

import SwiftUI

struct ContentView: View {
    //폰의 환경을 가져오는 환경변수
    @Environment(\.colorScheme) private var colorScheme
    @Environment(\.locale) private var locale
    @Environment(\.calendar) private var calendar
    @Environment(\.horizontalSizeClass) private var horizontalSizeClass
    @Environment(\.verticalSizeClass) private var verticalSizeClass
    
    var body: some View {
        VStack {
            Text(colorScheme == .dark ? "Dark mode" : "Light Mode")
            Text(locale.description)
            Text(calendar.description)
            Text(horizontalSizeClass == .compact ? "Compact" : "Regular")
            Text(verticalSizeClass == .compact ? "Compact" : "Regular")
            
            if verticalSizeClass == .regular {
                VStack{
                    Text("홍길동")
                    Text("변사또")
                    Text("사임당")
                }
                .font(.headline)
                .background(.yellow)
            } else {
                VStack{
                    Text("홍길동")
                    Text("변사또")
                    Text("사임당")
                }
                .font(.headline)
                .background(.green)
            }
            
            colorScheme == .dark ?
            Color.green.edgesIgnoringSafeArea(.all) :
            Color.yellow.edgesIgnoringSafeArea(.all)
             
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .environment(\.colorScheme, .light)
            ContentView()
                .environment(\.colorScheme, .dark)
            ContentView()
                .previewDevice(PreviewDevice(rawValue: "iPhone 14"))
                .previewDisplayName("아이폰 14입니당")
            ContentView()
                .previewDevice(PreviewDevice(rawValue: "iPhone 14 Pro Max"))
                .previewDisplayName("아이폰 프로맥스입니당")

        }
   
    }
}
