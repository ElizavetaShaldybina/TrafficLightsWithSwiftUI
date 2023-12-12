//
//  SampleLights.swift
//  TrafficLightsWithSwiftUI
//
//  Created by Елизавета Шалдыбина on 12.12.2023.
//

import SwiftUI

struct SampleLights: View {
    let color: Color
    
    var body: some View {
            Circle()
                .foregroundStyle(color)
                .frame(width: 150, height: 150)
                .overlay(
                    Circle()
                        .stroke(Color.white, lineWidth: 4)
                )
        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    SampleLights(color: .red)
}
