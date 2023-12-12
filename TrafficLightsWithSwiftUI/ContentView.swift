//
//  ContentView.swift
//  TrafficLightsWithSwiftUI
//
//  Created by Елизавета Шалдыбина on 12.12.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var currentLight = CurrentLight.red
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack {
                SampleLights(color: currentLight == .red ? .red : .red.opacity(0.3))
                SampleLights(color: currentLight == .yellow ? .yellow : .yellow.opacity(0.3))
                SampleLights(color: currentLight == .green ? .green : .green.opacity(0.3))
                
                Button(action: {nextButtonPressed()}) {
                    Text("Next")
                        .frame(width:200)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .foregroundStyle(.white)
                        .padding()
                        .background(Color.blue)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.white, lineWidth: 4)
                        )
                }
                .padding()
            }
            Spacer()
        }
    }
    
    enum CurrentLight {
        case red, yellow, green
    }
    
    func nextButtonPressed() {
        switch currentLight {
            case .red:
            currentLight = .yellow
            case .yellow:
            currentLight = .green
            case .green:
            currentLight = .red
        }
    }
}

#Preview {
    ContentView()
}
