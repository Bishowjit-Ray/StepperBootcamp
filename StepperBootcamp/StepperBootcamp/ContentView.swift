//
//  ContentView.swift
//  StepperBootcamp
//
//  Created by Bishowjit Ray on 18/9/22.
//

import SwiftUI

struct ContentView: View {
    @State var steppervalue: Int = 10
    @State var widthIncrement: CGFloat = 0
    var body: some View {
        VStack {
            Stepper("Stepper: \(steppervalue)", value: $steppervalue)
                .padding(50)
            
            Rectangle()
                .overlay(
                   Circle()
                    .foregroundColor(Color.red.opacity(0.9))
                    .frame(width: 80, height: 70)
                )
                .overlay(
                Text("VB + BR")
                    .font(.caption)
                    .foregroundColor(Color.white)
            
                )
                .foregroundColor(Color.green)
                .frame(width: 150 + widthIncrement, height: 100 + widthIncrement)
                .cornerRadius(15)
            
            
            
            
            Stepper("Stepper 2") {
                //increment
                widthIncrement += 10
            } onDecrement: {
                //decrement
                widthIncrement -= 10
            }

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
