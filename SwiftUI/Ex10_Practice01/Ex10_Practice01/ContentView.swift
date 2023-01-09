//
//  ContentView.swift
//  Ex10_Practice01
//
//  Created by tjoeun on 2023/01/07.
//

import SwiftUI

struct ContentView: View {
    let jofont = "NanumSeongSirCe"
    let backgroundColor: UIColor = #colorLiteral(red: 0.08374320716, green: 0.6333578229, blue: 0.5200029612, alpha: 1)
    var body: some View {
        ZStack {
            Color(backgroundColor).ignoresSafeArea()
            
            VStack {
                Image("profile")
                    .resizable()
                    .scaledToFit()
                    .frame(width:200, height: 150)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth:5))
                
                Text("Jo Ho Guen")
                    .font(.custom(jofont, size: 60))
                    
                Text("iOS Developer")
                    .font(.custom(jofont, size: 30))
                Divider()
                
                
                VStack {
                    Text(" ").font(.system(size: 10))
                    HStack {
                        
                    Image(systemName: "phone.fill")
                        .font(.title)
                        .foregroundColor(.green)
                    Text("+44 123 456 789")
                        .fontWeight(.semibold)
                }
                .frame(width: 300, height: 20)
                .padding()
                .background(.white)
                .cornerRadius(40)
                
                    Text(" ")
                
                    HStack{
                        Image(systemName: "envelope.fill")
                            .font(.title)
                            .foregroundColor(.green)
                        Text("angela@email.com")
                            .fontWeight(.semibold)
                    }
                    .frame(width: 300, height: 20)
                    .padding()
                    .background(.white)
                    .cornerRadius(40)
                }
            }
            
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
