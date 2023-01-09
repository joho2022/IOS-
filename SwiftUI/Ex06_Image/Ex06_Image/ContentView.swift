//
//  ContentView.swift
//  Ex06_Image
//
//  Created by tjoeun on 2023/01/07.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
//                Image("image2")
//                // resizable : 화면해상도에 맞춤
//                    .resizable()
//                // aspectRation : 종횡비를 유지함.
//                // contentMode : fit : 가로 세로중에 더 큰것에 맞춤
//                // fill : 가로세로중 더 작은것에 맞춤
//                //* 이미지 원본을 뷰의 종횡비에 맞춰서 준비하는게 제일 좋다.
//
//                    .aspectRatio(contentMode: .fit)
            Divider()
            Image("image1")
                .resizable()
                .scaledToFit()
                .frame(width: 250, height: 250)
            Divider()
            //SF Symbols : 애플에서 제공하는 무료 아이콘 모음
            Image(systemName: "play.circle")
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50)
                .foregroundColor(Color.green)
            Divider()
            //배경이미지 사용하기
            Text("카페 이미지")
                .font(.largeTitle)
                .background(
                Image("image1")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 2000, height: 200, alignment: .center)
                )
                .frame(width: 200, height: 200, alignment: .center)
                .foregroundColor(.white)
                .clipShape(Circle())
                .shadow(radius: 5, x: 5, y: 5)
                .overlay(Circle()
                    .stroke(Color.red, lineWidth: 5))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
