//
//  ContentView.swift
//  Ex22_NavigationView
//
//  Created by tjoeun on 2023/01/14.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            //화면이동을 하고싶으면 네비게이션뷰를 감싼다.
            //            NavigationView {
            //                Text("Main View")
            //                    .navigationTitle("Title")
            //                //inline : 상단중앙 타이틀
            //                //automatic : 이전뷰의 타이틀 속성을 따라감
            //                //large : 상단왼쪽 타이틀
            //                    .navigationBarTitleDisplayMode(.inline)
            
            //            NavigationView {
            //                NavigationLink(destination: Text("둘째 화면")) {
            //                    Text("둘째 화면으로 이동")
            //                }
            //                .navigationTitle("메인 화면")
            //                .navigationBarTitleDisplayMode(.inline)
            //            }
            
            //            NavigationView {
            //                NavigationLink(destination: SecondView()) {
            //                    Text("둘째 화면으로 이동")
            //                }
            //                .navigationTitle("메인 화면")
            //                .navigationBarTitleDisplayMode(.inline)
            //            }
            
            //            NavigationView {
            //                NavigationLink(destination: SecondView()) {
            //                    Text("둘째 화면으로 이동")
            //                }
            //                .navigationTitle("메인 화면")
            //                .navigationBarItems(
            //                    leading: Button(action: {
            //                        print("Home Button Tapped") }
            //                                    , label: { Text("Home") }),
            //                    trailing: Button(action: {
            //                        print("Edit Button Tapped") }
            //                                    , label: { Text("😝") })
            //                    )
            //            }
            
//            NavigationView {
//                List(0..<100) { row in
//                    NavigationLink(destination: Text("Detail \(row)")) {
//                        Text("Row \(row)")
//
//                    }
//                }
//                .navigationTitle("ListView")
//            }
            NavigationView {
                NavigationLink(destination: SecondView()) {
                    Image(systemName: "play")
                    //original : 원래 색상
                    //template : 단색 출력 (색상하나로만)
                        .renderingMode(.template)
                        .resizable()
                        .frame(width: 100, height: 100, alignment: .center)
                        .foregroundColor(.orange)
                }
                .navigationTitle("메인화면")
            }
            } //Vstack
        } //body
    } // contentview
    
    struct SecondView: View {
        var body: some View {
            ZStack {
                Color.yellow
                    .edgesIgnoringSafeArea(.all)
                Text("두루룰째 화아아며여ㅓ어ㅕㄴ")
            }
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
