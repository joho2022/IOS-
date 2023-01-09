//
//  ContentView.swift
//  Practice02
//
//  Created by tjoeun on 2023/01/07.
//

import SwiftUI

struct SecondView: View {
    var imageName: String
    var text: String
    var color: Color

    var body: some View {
        ZStack {
            color
            
            HStack{
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                Text(text)
                    .font(.body)
                
            }
        }
        .navigationTitle(text)
    }
}

struct ContentView: View {
    var body: some View {
        NavigationView {
            List() {
                
                NavigationLink(destination: SecondView(imageName: "hare.fill", text: "첫번째", color: .red)
                ) { Image(systemName: "hare.fill")
                        
                        .resizable()
                        .frame(width: 25, height: 25)
                        .foregroundColor(.red)
                        .padding(10)
                        .border(.green, width: 2)
                        .cornerRadius(5)
                    
                    Text("111")
                }
                
                NavigationLink(destination: SecondView(imageName: "hare.fill", text: "첫번째", color: .blue)
                ) { Image(systemName: "hare.fill")
                        
                        .resizable()
                        .frame(width: 25, height: 25)
                        .foregroundColor(.blue)
                        .padding(10)
                        .border(.green, width: 2)
                        .cornerRadius(5)
                    
                    Text("222")
                }
                
                NavigationLink(destination: SecondView(imageName: "hare.fill", text: "첫번째", color: .yellow)
                ) { Image(systemName: "hare.fill")
                        
                        .resizable()
                        .frame(width: 25, height: 25)
                        .foregroundColor(.yellow)
                        .padding(10)
                        .border(.green, width: 2)
                        .cornerRadius(5)
                    
                    Text("333")
                }
                
                NavigationLink(destination: SecondView(imageName: "hare.fill", text: "첫번째", color: .green)
                ) { Image(systemName: "hare.fill")
                        
                        .resizable()
                        .frame(width: 25, height: 25)
                        .foregroundColor(.green)
                        .padding(10)
                        .border(.green, width: 2)
                        .cornerRadius(5)
                    
                    Text("444")
                }
        }
            .navigationTitle("WKND Adventures")
       
        
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
