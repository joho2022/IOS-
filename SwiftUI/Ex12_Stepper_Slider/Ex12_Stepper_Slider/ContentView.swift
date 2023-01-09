//
//  ContentView.swift
//  Ex12_Stepper_Slider
//
//  Created by tjoeun on 2023/01/07.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        StepperView()
        SliderView()
    }
}

//슬라이더는 더블로 나옵니다.
struct SliderView: View {
    @State private var count: Double = 0
    @State private var opacity: Double = 0
    
    var body: some View {
        Form {
            Slider(value: self.$count, in: 0...100) {
                Text("Count")
            }
            Text("Count : \( Int(self.count) )")
            Image("image1")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .opacity(self.opacity / 100)
            Slider(value: self.$opacity, in: 0...100) {
                Text("Opacity")
            }
            Text("Opacity : \( Int(self.opacity) )")
            
        }
    }
}

struct StepperView: View {
    @State private var count: Int = 0
    @State private var age: Int = 0
    
    
    var body: some View {
        VStack {
            Stepper(value: self.$count, in: 1...100) {
                Text("Count")
            }
            .frame(width: 150, height: 100)
            Text("Count : \(self.count)")
            
            Stepper(onIncrement: onPlus, onDecrement: onMinus) {
                Text("Age")
            }
            .frame(width: 150, height: 100)
            Text("Age : \(self.age)")
            
        }
        
    }
    
    func onPlus() {
        self.age += 1
    }
    
    func onMinus() {
        self.age -= 1
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
